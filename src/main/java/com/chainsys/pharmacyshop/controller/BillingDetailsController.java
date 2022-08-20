package com.chainsys.pharmacyshop.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.pharmacyshop.model.BillDetails;
import com.chainsys.pharmacyshop.model.Medicine;
import com.chainsys.pharmacyshop.service.BillingDetailsService;
import com.chainsys.pharmacyshop.service.BillingService;
import com.chainsys.pharmacyshop.service.MedicineService;

@Controller
@RequestMapping("/billdetail")
public class BillingDetailsController {
	@Autowired
	BillingDetailsService billdetailservice;
	@Autowired
	BillingService billservice;
	@Autowired
	MedicineService medservice;
	public static String next="redirect:/billdetail/billslist?id=";
	@GetMapping("/billdetaillist")
	public String getBillDetailsAll(Model model) {
		List<BillDetails> billdetaillist = billdetailservice.findAll();
		model.addAttribute("allbilldetail", billdetaillist);
		return "list-billdetails";
	}
	@GetMapping("/findbilldetailid")
	public String findDetailById(@RequestParam("Id") int id, Model model) {
		BillDetails billdetaillist = billdetailservice.findById(id);
		model.addAttribute("findbillbyid", billdetaillist);
		return "find-billdetail-id-form";
	}
	@GetMapping("/addbilldetailform")
	public String showAddForm(Model model) {
		BillDetails billdetaillist = new BillDetails();
		model.addAttribute("addbilldetail", billdetaillist);
		return "add-billdetail-form";
	}
	@PostMapping("/addbilldetail")
	public String addNewUser(@ModelAttribute("addbilldetail") BillDetails billdetaillist) {
		billdetailservice.save(billdetaillist);
		return "redirect:/billdetail/addbilldetailform";
	}
	@GetMapping("/updatebilldetailform")
	public String showUpdateForm(@RequestParam("id") int id, Model model) {
		BillDetails billdetaillist = billdetailservice.findById(id);
		model.addAttribute("updatebilldetail", billdetaillist);
		return "update-billdetail-form";
	}
	@PostMapping("/updatebilldetail")
	public String updateBill(@ModelAttribute("updatebilldetail") BillDetails billdetaillist) {
		billdetailservice.save(billdetaillist);
		return next+billdetaillist.getBillid();
	}
	@GetMapping("/deletebilldetail")
	public String deleteBill(@RequestParam("id") int id,Model model) {
		billdetailservice.deleteById(id);
		return "";
	}
	@GetMapping("/billslist")
	public String getAllBillList(@RequestParam("id")int id,Model model) {
		List<Medicine> med=medservice.findAll();
		model.addAttribute("allmedicine",med);
		List<BillDetails> billDetails = billdetailservice.findAllByBillid(id);
		model.addAttribute("allbilldetails", billDetails);
		model.addAttribute("billid", id);
		return "add-billdetail-form";
	}
	@GetMapping("/billDetailsAdd")
	public String addBillDetailsByBillId(@RequestParam("id")int medId,@RequestParam("billId")int billId,Model model) {
		BillDetails billDetails = new BillDetails();
		Medicine med=medservice.findById(medId);
		billDetails.setBillid(billId);
		billDetails.setPrice(med.getPrice());
		billDetails.setMedicineid(med.getMedicineid());
		billDetails.setQuantity(1);
		billDetails.setAmount(med.getPrice());
		billdetailservice.addBillDetails(billDetails);
		return next+billId;
	}
	@GetMapping("/deletebilldetails")
	public String deletebilldetails(@RequestParam("id")int billDetailId,@RequestParam("billId") int billId,Model model) {
		billdetailservice.deleteById(billDetailId);
		return next+billId;
	}
}