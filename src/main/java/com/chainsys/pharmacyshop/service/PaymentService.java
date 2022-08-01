package com.chainsys.pharmacyshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.pharmacyshop.model.Payment;
import com.chainsys.pharmacyshop.repository.PaymentRepository;

@Service
public class PaymentService {
	@Autowired
	private PaymentRepository payRepo;

	public Payment findById(int id) {
		return payRepo.findById(id);
	}

	public Payment deleteById(int userid) {
		return payRepo.deleteById(userid);
	}

	public Payment save(Payment pay) {
		return payRepo.save(pay);
	}

	public List<Payment> findAll() {

		return payRepo.findAll();
	}
}
