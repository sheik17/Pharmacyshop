package com.chainsys.pharmacyshop.controller;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.pharmacyshop.model.Medicine;
import com.chainsys.pharmacyshop.model.Payment;
import com.chainsys.pharmacyshop.model.User;
import com.chainsys.pharmacyshop.service.MedicineService;
import com.chainsys.pharmacyshop.service.PaymentService;
import com.chainsys.pharmacyshop.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userservice;
	@Autowired
	MedicineService medservice;
	@Autowired
	PaymentService payservice;
	@GetMapping("/index")
	public String index(Model model)
	{
		List<Medicine> medlist = medservice.findAll();
		model.addAttribute("allmed", medlist);
		return "index";
	}
	@GetMapping("/successpage")
	public String sucesspage(@RequestParam("id") int id,Model model) {
	 Payment payment = payservice.findById(id);
	 model.addAttribute("findById", payment);
	 model.addAttribute("billid",id);
		return "success-page";
	}
	@GetMapping("/admin")
	public String admin()
	{
		return "admin_index";
	}
	@GetMapping("/user")
	public String user()
	{
		return "user_index";
	}
	@GetMapping("/staffindex")
	public String staffIndex()
	{
		return "staffindex";
	}
	@GetMapping("/loginerror")
	public String loginError()
	{
		return "invalid-user-error";
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
	public String addNewUser(@Valid@ModelAttribute("adduser") User theuser,Errors errors,Model model) {
		if(errors.hasErrors()) {
			return "add-user-form";
		}
		else {
			try {
		userservice.save(theuser);
		return "redirect:/user/login";
			}catch(Exception er)
			{	
				model.addAttribute("message","Enter unique name and email");
				return "add-user-form";
			}
		}
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
	@PostMapping("/checkuserlogin")
	public String checkingAccess(@ModelAttribute("user") User user,Model model) {
		User users = userservice.getUserNameAndUserPasswordAndRole(user.getUserName(), user.getUserPassword(),user.getRole());
		if (users != null) {
			if("admin".equals(users.getRole()))
			{
			return "redirect:/user/admin";
			}
			else
			{
				return "redirect:/medicine/medlist";
			}
		} else
		{
			model.addAttribute("result","Invalid UserName or Password");
			return "login-form";
		}
	}
}
