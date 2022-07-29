package com.chainsys.pharmacyshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.pharmacyshop.service.AdminService;
import com.chainsys.pharmacyshop.service.UserService;
import com.chainsys.pharmacyshop.pojo.Admin;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	AdminService adminservice;
	UserService userService;

	public AdminController(UserService userService, AdminService obj) {
		this.userService = userService;
		adminservice = obj;
	}

	@RequestMapping("/user-details")
	public String index(Model model) {

		List<Admin> list = adminservice.findByRole("ROLE_USER");
		model.addAttribute("user", list);

		// get last seen
		String username = "";
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			username = ((UserDetails) principal).getUsername();
			String Pass = ((UserDetails) principal).getPassword();
			System.out.println("One + " + username + "   " + Pass);

		} else {
			username = principal.toString();
			System.out.println("Two + " + username);
		}

		Admin admin = adminServiceImplementation.findByEmail(username);

		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		Date now = new Date();

		String log = now.toString();

		admin.setLastseen(log);

		adminServiceImplementation.save(admin);

		return "admin/user";
	}
}