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
import com.chainsys.pharmacyshop.dto.BillToBillDetailDTO;
import com.chainsys.pharmacyshop.dto.BillToPaymentDTO;
import com.chainsys.pharmacyshop.model.Billing;
import com.chainsys.pharmacyshop.service.BillingDetailsService;
import com.chainsys.pharmacyshop.service.BillingService;

@Controller
@RequestMapping("/billing")
public class BillingController {
	@Autowired
	BillingService billservice;
	@Autowired
	private BillingDetailsService billdetailservice;
	public String uploadDir = System.getProperty("user.dir") + "/src/main/resources/static/presImg";
	@GetMapping("/billalllist")
	public String getBillAll(Model model) {
		List<Billing> billlist = billservice.getBilling();
		model.addAttribute("allbill", billlist);
		return "list-bills";
	}
	@GetMapping("/findbillid")
	public String findBillById(@RequestParam("id") int id, Model model) {
		Billing thebill = billservice.findById(id);
		model.addAttribute("findbillbyid", thebill);
		return "find-bill-id-form";
	}
	@GetMapping("/addbillform")
	public String showAddForm(Model model) {
		Billing thebill = new Billing();
		billdetailservice.fetchallmedlist(thebill.getBillid());
		model.addAttribute("addbill", thebill);
		return "add-bill-form";
	}
	@PostMapping("/addbill")
	public String addNewUser(@RequestParam("productImage") MultipartFile file, Billing bill,
			@RequestParam("imgName") String imgName) throws IOException {
		bill.setBillamount(bill.getBillamount());
		bill.setBilldate(bill.getBilldate());
		bill.setCusName(bill.getCusName());
		bill.setCusPhoneno(bill.getCusPhoneno());
		String imageUUID;
		if (!file.isEmpty()) {
			imageUUID = file.getOriginalFilename();
			Path fileAndPathName = Paths.get(uploadDir, imageUUID);
			Files.write(fileAndPathName, file.getBytes());
		} else {
			imageUUID = imgName;
		}
		bill.setPescriptionimg(imageUUID);
		billservice.save(bill);
		return "redirect:/billdetail/billslist?id="+bill.getBillid();
	}
	@GetMapping("/updatebillform")
	public String showUpdateForm(@RequestParam("Id") int id, Model model) {
		Billing thebill = billservice.findById(id);
		model.addAttribute("updatebill", thebill);
		return "update-bill-form";
	}
	@PostMapping("/updatebill")
	public String updateBill(@RequestParam("productImage") MultipartFile file, Billing bill,
	@RequestParam("imgName") String imgName)throws IOException
	{
		bill.setBillamount(bill.getBillamount());
		bill.setBilldate(bill.getBilldate());
		bill.setCusName(bill.getCusName());
		bill.setCusPhoneno(bill.getCusPhoneno());
		String imageUUID;
		if (!file.isEmpty()) {
			imageUUID = file.getOriginalFilename();
			Path fileAndPathName = Paths.get(uploadDir, imageUUID);
			Files.write(fileAndPathName, file.getBytes());
		} else {
			imageUUID = imgName;
		}
		bill.setPescriptionimg(imageUUID);
		billservice.save(bill);
		return "redirect:/billing/billlist";
	}
	@GetMapping("/deletebill")
	public String deleteBill(@RequestParam("Id") int id) {
		billservice.deleteById(id);
		return "redirect:/billing/billlist";
	}
	 @GetMapping("/getlistbilldetail")
	    public String getBillDetailBilling(@RequestParam("id") int id, Model model) {
	        BillToBillDetailDTO billtobilldetaildto = billservice.getBillToBillDetail(id);
	        model.addAttribute("getbill", billtobilldetaildto.getBill());
	        model.addAttribute("billdetaillist", billtobilldetaildto.getBillDetailList());
	        return "list-billing-billdetail";
	    }
	 @GetMapping("/getbilltopayment")
	    public String getBillToPayment(@RequestParam("id") int id, Model model) {
	        BillToPaymentDTO dto = billservice.getBillToPaymentDTO(id);
	        model.addAttribute("getbill", dto.getBilling());
	        model.addAttribute("getpayment", dto.getPayment());
	        return "list-bill-payment";
	    }
	 @GetMapping("/getfilterphoneno")
	    public String getPhoneNoForm() {
	        return "list-filter-bill";
	    }
	 @GetMapping("/phoneno")
	    public String getAllStatus(@RequestParam("cusPhoneno") long cusPhoneno, Model model) {
	        List<Billing> billCusPhoneno = billservice.cusPhoneno(cusPhoneno);
	        model.addAttribute("allbill", billCusPhoneno);
	        return "list-bills";
	    }
	 }