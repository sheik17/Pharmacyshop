package com.chainsys.pharmacyshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.pharmacyshop.model.BillDetails;
import com.chainsys.pharmacyshop.repository.BillingDetailsRepository;

@Service
public class BillingDetailsService {
	@Autowired
	private BillingDetailsRepository billDetailRepo;
	@Autowired
	private MedicineService medicineservice;
	
	public BillDetails findById(int id) {
		return billDetailRepo.findById(id);
	}
	
	public BillDetails deleteById(int billid) {
		return billDetailRepo.deleteById(billid);
	}
	
	public void save(BillDetails bill) {
		billDetailRepo.save(bill);
	}
	public void generateBill(int id)
	{
		medicineservice.
	}
	public List<BillDetails> findAll() {
		
		return billDetailRepo.findAll();
	}
}