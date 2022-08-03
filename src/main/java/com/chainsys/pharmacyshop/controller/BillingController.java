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

import com.chainsys.pharmacyshop.model.Billing;
import com.chainsys.pharmacyshop.service.BillingService;

@Controller
@RequestMapping("/billing")
public class BillingController {
	@Autowired
	BillingService billservice;
	public static String uploadDir = System.getProperty("user.dir") + "/src/main/resources/static/presImg";

	@GetMapping("/billlist")
	public String getBillAll(Model model) {
		List<Billing> billlist = billservice.findAll();
		model.addAttribute(" ", billlist);
		return "list-bills";
	}

	@GetMapping("/findbillid")
	public String findBillById(@RequestParam("Id") int id, Model model) {
		Billing thebill = billservice.findById(id);
		model.addAttribute("findbillbyid", thebill);
		return "find-bill-id-form";
	}

	@GetMapping("/addbillform")
	public String showAddForm(Model model) {
		Billing thebill = new Billing();
		model.addAttribute("addbill", thebill);
		return "add-bill-form";
	}

	@PostMapping("/addbill")
	public String addNewUser(@RequestParam("productImage") MultipartFile file, Billing bill,
			@RequestParam("imgName") String imgName) throws IOException {
		bill.setBillamount(bill.getBillamount());
		bill.setBilldate(bill.getBilldate());
		bill.setBillid(bill.getBillid());
		bill.setUserid(bill.getUserid());
		String imageUUID;
		if (!file.isEmpty()) {
			imageUUID = file.getOriginalFilename();
			Path fileAndPathName = Paths.get(uploadDir, imageUUID);
			Files.write(fileAndPathName, file.getBytes());
		} else {
			imageUUID = imgName;
		}
		bill.setPescriptionimg(imageUUID);
		return "redirect:/bill/billlist";
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
		bill.setBillid(bill.getBillid());
		bill.setUserid(bill.getUserid());
		String imageUUID;
		if (!file.isEmpty()) {
			imageUUID = file.getOriginalFilename();
			Path fileAndPathName = Paths.get(uploadDir, imageUUID);
			Files.write(fileAndPathName, file.getBytes());
		} else {
			imageUUID = imgName;
		}
		bill.setPescriptionimg(imageUUID);
		return "redirect:/bill/billlist";
	}

	@GetMapping("/deletebill")
	public String deleteBill(@RequestParam("Id") int id) {
		billservice.deleteById(id);
		return "redirect:/bill/billlist";
	}
}