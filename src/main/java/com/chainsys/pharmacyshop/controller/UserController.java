package com.chainsys.pharmacyshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.pharmacyshop.dto.UserBillingDTO;
import com.chainsys.pharmacyshop.dto.UserPaymentDTO;
import com.chainsys.pharmacyshop.model.User;
import com.chainsys.pharmacyshop.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userservice;
	@GetMapping("/index")
	public String index()
	{
		return "index";
	}
	@GetMapping("/userlist")
	public String getUserAll(Model model) {
		List<User> doclist = userservice.findAll();
		model.addAttribute("alluser", doclist);
		return "list-users";
	}

	@GetMapping("/findUserid")
	public String findUserById(@RequestParam("Id") int id, Model model) {
		User thedoc = userservice.findById(id);
		model.addAttribute("finduserbyid", thedoc);
		return "find-user-id-form";
	}

	@GetMapping("/adduserform")
	public String showAddForm(Model model) {
		User thedoc = new User();
		model.addAttribute("adduser", thedoc);
		return "add-user-form";
	}

	@PostMapping("/adduser")
	public String addNewUser(@ModelAttribute("adduser") User theuser) {
		userservice.save(theuser);
		return "redirect:/user/login";
	}

	@GetMapping("/updateuserform")
	public String showUpdateForm(@RequestParam("Id") int id, Model model) {
		User theuser = userservice.findById(id);
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

	@GetMapping("/login")
	public String adminaccessform(Model model) {
		User theuser = new User();
		model.addAttribute("user", theuser);
		return "login-form";
	}
	@GetMapping("/getlistuserbilling")
    public String getDocumentUser(@RequestParam("id") int id, Model model) {
        UserBillingDTO userBillingdto = userservice.getUserBilling(id);
        model.addAttribute("getuser", userBillingdto.getUsers());
        model.addAttribute("billlist", userBillingdto.getBillingList());
        return "list-user-billing";
    }
	@GetMapping("/getlistuserpayment")
    public String getPaymentUser(@RequestParam("id") int id, Model model) {
        UserPaymentDTO userPaymentdto = userservice.getUserPayment(id);
        model.addAttribute("getuser", userPaymentdto.getUsers());
        model.addAttribute("paymentlist", userPaymentdto.getPaymentList());
        return "list-user-payment";
    }
	@PostMapping("/checkuserlogin")
	public String checkingAccess(@ModelAttribute("user") User user) {
		User users = userservice.getUserNameAndUserPasswordAndRole(user.getUserName(), user.getUserPassword(),user.getRole());
		if (users != null) {
			if(!"admin".equals(users.getRole()))
			{
			return "redirect:/user/userlist";
			}
			else
			{
				return "redirect:/medicine/medlist";
			}
		} else
		{
			return "invalid-user-error";
		}

	}
}
