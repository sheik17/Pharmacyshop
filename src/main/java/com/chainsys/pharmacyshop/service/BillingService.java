package com.chainsys.pharmacyshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.pharmacyshop.model.Billing;
import com.chainsys.pharmacyshop.repository.BillingRepository;


@Service
public class BillingService {
	@Autowired
	private BillingRepository medRepo;
	
	public Billing findById(int id) {
		return medRepo.findById(id);
	}
	
	public Billing deleteById(int billid) {
		return medRepo.deleteById(billid);
	}
	
	public void save(Billing bill) {
		medRepo.save(bill);
	}
	
	public List<Billing> findAll() {
		
		return medRepo.findAll();
	}
}
