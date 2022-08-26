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
import com.chainsys.pharmacyshop.businesslogic.Logic;
import com.chainsys.pharmacyshop.model.BillDetails;
import com.chainsys.pharmacyshop.model.Payment;
import com.chainsys.pharmacyshop.service.BillingDetailsService;
import com.chainsys.pharmacyshop.service.PaymentService;

@Controller
@RequestMapping("/payment")
public class PaymentController {
	@Autowired
	PaymentService payservice;
	@Autowired
	BillingDetailsService billservice;

	@GetMapping("/paymentlist")
	public String getPaymentAll(Model model) {
		List<Payment> paymentlist = payservice.findAll();
		model.addAttribute("allpayment", paymentlist);
		return "list-payments";
	}

	@GetMapping("/findpaymentid")
	public String findPaymentById(@RequestParam("Id") int id, Model model) {
		Payment thepayment = payservice.findById(id);
		model.addAttribute("findpaymentbyid", thepayment);
		return "find-payment-id-form";
	}

	@GetMapping("/addpaymentform")
	public String showAddForm(Model model) {
		Payment thepayment = new Payment();
		model.addAttribute("addpayment", thepayment);
		return "add-payment-form";
	}


	@GetMapping("/updatepaymentform")
	public String showUpdateForm(@RequestParam("Id") int id, Model model) {
		Payment thepayment = payservice.findById(id);
		model.addAttribute("updatepayment", thepayment);
		return "update-payment-form";
	}

	@PostMapping("/updatepayments")
	public String updateMed(@ModelAttribute("updatepayment") Payment thepayment) {
		payservice.save(thepayment);
		return "redirect:/payment/paymentlist";
	}

	@GetMapping("/deletepayment")
	public String deletePayment(@RequestParam("Id") int id) {
		payservice.deleteById(id);
		return "redirect:/payment/paymentlist";
	}

	@GetMapping("/findbybillidpayment")
	public String findPayment(@RequestParam("Id") int id, Model model) {
		List<BillDetails> billDetalsLit = billservice.findAllByBillid(id);
		float amount = 0;
		Payment payment = new Payment();
		amount = Logic.getTotalAmount(billDetalsLit);
		payment.setBalance(amount);
		payment.setBillid(id);
		model.addAttribute("payments", payment);
		return "find-billid-payment";
	}
	@PostMapping("/addpayment")
	public String addPayment(@Valid @ModelAttribute("payments") Payment payment,Errors error,Model model) {
		if(error.hasErrors()) {
			return "find-billid-payment";
		}
		else {
			try {
				payservice.save(payment);
				return "redirect:/billing/findbillid?id="+payment.getBillid();
			}catch (Exception e) {
				model.addAttribute("message","Failed to add payment");
			}
		}
	     return "find-billid-payment";
	}

}
