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

import com.chainsys.pharmacyshop.model.User;
import com.chainsys.pharmacyshop.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userservice;
	@GetMapping("/userlist")
	public String getUserAll(Model model) {
		List<User> doclist = userservice.findAll();
		model.addAttribute("alluser",doclist); 
		return "list-users";
	}
	  @GetMapping("/findUserid")
		public String findUserById(@RequestParam("Id") int id,Model model) {
		  User thedoc=userservice.findById(id);
	    	model.addAttribute("finduserbyid", thedoc);
			return "find-user-id-form";
		}
	  @GetMapping("/adduserform")
		public String showAddForm(Model model)
		{
		  User thedoc=new User();
			model.addAttribute("adduser", thedoc);
			return "add-user-form";
		}
	    @PostMapping("/adduser")
		public String addNewUser(@ModelAttribute("adduser") User theuser) {
	    	userservice.save(theuser);
			return "redirect:/user/userlist";
		}
	    @GetMapping("/updateuserform")
		public String showUpdateForm(@RequestParam("Id") int id,Model model)
		{
			User theuser=userservice.findById(id);
			model.addAttribute("updateuser", theuser);
			return "update-user-form";
		}
	    @PostMapping("/updateuser")
		public String updateUser(@ModelAttribute("updateuser") User theuser) {
	    	userservice.save(theuser);
			return "redirect:/user/userlist";
		}
	    @GetMapping("/deleteuser")
		public String deleteUser(@RequestParam("Id") int id) {
	    	userservice.deleteById(id);
			return "redirect:/user/userlist";
		}
	}