package com.chainsys.pharmacyshop.controller;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.chainsys.pharmacyshop.dto.MedicineBilldetailDTO;
import com.chainsys.pharmacyshop.dto.UserPaymentDTO;
import com.chainsys.pharmacyshop.model.Medicine;
import com.chainsys.pharmacyshop.repository.MedicineRepository;
import com.chainsys.pharmacyshop.service.MedicineService;

@Controller
@RequestMapping("/medicine")
public class MedicineController {	
	@Autowired
	MedicineService medservice;
	
	public static String uploadDir = System.getProperty("user.dir")+"/src/main/resources/static/productImages";
	@GetMapping("/medlist")
	public String getMedicineAll(Model model) {
		List<Medicine> medlist = medservice.findAll();
		model.addAttribute("allmed",medlist); 
		return "list-meds";
	}
	  @GetMapping("/findMedid")
		public String findMedicineById(@RequestParam("Id") int id,Model model) {
		  Medicine themed=medservice.findById(id);
	    	model.addAttribute("findmedbyid", themed);
			return "find-med-id-form";
		}
	  @GetMapping("/addmedform")
		public String showAddForm(Model model)
		{
		  Medicine themed=new Medicine();
			model.addAttribute("addmed", themed);
			return "add-med-form";
		}
	    @PostMapping("/addmed")
		public String addNewMed(@RequestParam("productImage") MultipartFile file,Medicine product,
	               @RequestParam("imgName") String imgName) throws IOException {
	          
	          product.setMedicineid(product.getMedicineid());
	          product.setMedicinename(product.getMedicinename());
	          product.setExpdate(product.getExpdate());
	          product.setManufacture(product.getManufacture());
	          product.setPrice(product.getPrice());
	          product.setPescriptionreq(product.getPescriptionreq());
	          product.setQuantity(product.getQuantity());
	          product.setStocks(product.getStocks());
	          String imageUUID;
	          if (!file.isEmpty()) {
	               imageUUID = file.getOriginalFilename();
	               Path fileAndPathName = Paths.get(uploadDir,imageUUID);
	               Files.write(fileAndPathName, file.getBytes());
	          } else {
	               imageUUID = imgName;
	          }
	          product.setMedicineimg(imageUUID);
	          medservice.save(product);
	          return "redirect:/medicine/medlist";
	     }
	    @GetMapping("/updatemedform")
		public String showUpdateForm(@RequestParam("Id") int id,Model model)
		{
	    	Medicine themed=medservice.findById(id);
			model.addAttribute("updatemed", themed);
			return "update-med-form";
		}
	    @PostMapping("/updatemed")
		public String updateMed(@RequestParam("productImage") MultipartFile file,Medicine product,
	               @RequestParam("imgName") String imgName) throws IOException {    
	          product.setMedicineid(product.getMedicineid());
	          product.setMedicinename(product.getMedicinename());
	          product.setExpdate(product.getExpdate());
	          product.setManufacture(product.getManufacture());
	          product.setPrice(product.getPrice());
	          product.setPescriptionreq(product.getPescriptionreq());
	          product.setQuantity(product.getQuantity());
	          product.setStocks(product.getStocks());
	          String imageUUID;
	          if (!file.isEmpty()) {
	               imageUUID = file.getOriginalFilename();
	               Path fileAndPathName = Paths.get(uploadDir,imageUUID);
	               Files.write(fileAndPathName, file.getBytes());
	          } else {
	               imageUUID = imgName;
	          }
	          product.setMedicineimg(imageUUID);
	          medservice.save(product);
			return "redirect:/medicine/medlist";
		}
	    @GetMapping("/deletemed")
		public String deleteMed(@RequestParam("Id") int id) {
	    	medservice.deleteById(id);
			return "redirect:/medicine/medlist";
		}
	    @GetMapping("/getlistmedicinedetail")
	    public String getBillDetailMedicine(@RequestParam("id") int id, Model model) {
	        MedicineBilldetailDTO medicinebilldto = medservice.getMedicineBillDetail(id);
	        model.addAttribute("getmed", medicinebilldto.getMed());
	        model.addAttribute("billdetaillist", medicinebilldto.getBillDetailList());
	        return "list-medicine-billdetail";
	    }
}
