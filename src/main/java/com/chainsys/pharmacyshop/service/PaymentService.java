package com.chainsys.pharmacyshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.pharmacyshop.model.Billing;
import com.chainsys.pharmacyshop.model.Payment;
import com.chainsys.pharmacyshop.repository.PaymentRepository;

@Service
public class PaymentService {
	@Autowired
	private PaymentRepository payRepo;
	@Autowired
	private BillingService billingService;
	public Payment findById(int id) {
		return payRepo.findById(id);
	}


	public Payment save(Payment pay) {
		Payment payment=payRepo.save(pay);
		Billing billing=billingService.findById(pay.getBillid());
		System.out.println(billing.getBillid());
		billing.setBillamount(pay.getBalance());
		billingService.save(billing);
		return payment;
	}
	public Payment deleteById(int id ) {
		return payRepo.deleteById(id);
	}

	public List<Payment> findAll() {

		return payRepo.findAll();
	}
}
