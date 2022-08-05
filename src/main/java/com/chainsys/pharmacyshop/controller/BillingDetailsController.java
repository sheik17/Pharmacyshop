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
import com.chainsys.pharmacyshop.service.BillingDetailsService;

@Controller
@RequestMapping("/billdetail")
public class BillingDetailsController {
	@Autowired
	BillingDetailsService billdetailservice;

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
		return "redirect:/billdetail/billdetaillist";
	}

	@GetMapping("/updatebilldetailform")
	public String showUpdateForm(@RequestParam("Id") int id, Model model) {
		BillDetails billdetaillist = billdetailservice.findById(id);
		model.addAttribute("updatebilldetail", billdetaillist);
		return "update-billdetail-form";
	}

	@PostMapping("/updatebilldetail")
	public String updateBill(@ModelAttribute("updatebilldetail") BillDetails billdetaillist) {
		billdetailservice.save(billdetaillist);
		return "redirect:/billdetail/billdetaillist";
	}

	@GetMapping("/deletebilldetail")
	public String deleteBill(@RequestParam("Id") int id) {
		billdetailservice.deleteById(id);
		return "redirect:/billdetail/billdetaillist";
	}
}