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
	
	public Medicine deleteById(int userid) {
		return medicineRepo.deleteById(userid);
	}
	
	public Medicine save(Medicine user) {
		return medicineRepo.save(user);
	}
	
	public List<Medicine> findAll() {
		
		return medicineRepo.findAll();
	}
}
