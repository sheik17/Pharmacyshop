package com.chainsys.pharmacyshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.pharmacyshop.model.BillDetails;
import com.chainsys.pharmacyshop.model.Medicine;
import com.chainsys.pharmacyshop.repository.BillingDetailsRepository;

@Service
public class BillingDetailsService {
	@Autowired
	private BillingDetailsRepository billDetailRepo;
	@Autowired
	private MedicineService medservice;
	
	public BillDetails findById(int id) {
		return billDetailRepo.findById(id);
	}
	
	public BillDetails deleteById(int billid) {
		return billDetailRepo.deleteById(billid);
	}
	public void addBillDetails(BillDetails billDetails) {
		
		Medicine medicine=medservice.findById(billDetails.getMedicineid());
		medicine.setStocks(medicine.getStocks()-billDetails.getQuantity());
		medservice.save(medicine);
		billDetailRepo.save(billDetails);
		
	}
	public void updateBillDetails(BillDetails billDetails) {
		
		Medicine medicine=medservice.findById(billDetails.getMedicineid());
		medicine.setStocks(medicine.getStocks()-billDetails.getQuantity());
		medservice.save(medicine);
		billDetailRepo.save(billDetails);
		
	}
	public List<BillDetails> fetchallmedlist(int billid)
	{
		return billDetailRepo.findAllByMedicineid(billid);
	}
	
	public void save(BillDetails bill) {
		billDetailRepo.save(bill);
	}
	public List<BillDetails> findAll() {
		
		return billDetailRepo.findAll();
	}
	public List<BillDetails> findAllByBillid(int id)
	{
		return billDetailRepo.findAllByBillid(id);
	}

	
}