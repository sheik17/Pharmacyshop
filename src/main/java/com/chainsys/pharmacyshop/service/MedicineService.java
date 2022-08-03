package com.chainsys.pharmacyshop.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.pharmacyshop.model.Medicine;
import com.chainsys.pharmacyshop.repository.MedicineRepository;



@Service
public class MedicineService {
	@Autowired
	private MedicineRepository medicineRepo;
	
	public Medicine findById(int id) {
		return medicineRepo.findById(id);
	}
	
	public Medicine deleteById(int medid) {
		return medicineRepo.deleteById(medid);
	}
	
	public void save(Medicine med) {
		 medicineRepo.save(med);
	}
	
	public List<Medicine> findAll() {
		
		return medicineRepo.findAll();
	}
	
}
