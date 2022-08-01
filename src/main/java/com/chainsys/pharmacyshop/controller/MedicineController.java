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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.chainsys.pharmacyshop.model.Medicine;

import com.chainsys.pharmacyshop.service.MedicineService;



@Controller
@RequestMapping("/medicine")
public class MedicineController {	
	@Autowired
	MedicineService medservice;
	
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
			return "find-user-id-form";
		}
	  @GetMapping("/addmedform")
		public String showAddForm(Model model)
		{
		  Medicine themed=new Medicine();
			model.addAttribute("addmed", themed);
			return "add-med-form";
		}
	    @PostMapping("/addmed")
		public String addNewMed(@ModelAttribute("addmed") Medicine themed)
		{
	    	medservice.save(themed);
			return "redirect:/medicine/medlist";
		}
	    @GetMapping("/updatemedform")
		public String showUpdateForm(@RequestParam("Id") int id,Model model)
		{
	    	Medicine themed=medservice.findById(id);
			model.addAttribute("updateuser", themed);
			return "update-med-form";
		}
	    @PostMapping("/updatemed")
		public String updateMed(@ModelAttribute("updatemed") Medicine themed)
		{
	    	medservice.save(themed);
			return "redirect:/medicine/medlist";
		}
	    @GetMapping("/deletemed")
		public String deleteMed(@RequestParam("Id") int id) {
	    	medservice.deleteById(id);
			return "redirect:/medicine/medlist";
		}
}
