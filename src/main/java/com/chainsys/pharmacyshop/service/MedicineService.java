package com.chainsys.pharmacyshop.service;


import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.pharmacyshop.dto.MedicineBilldetailDTO;
import com.chainsys.pharmacyshop.dto.UserPaymentDTO;
import com.chainsys.pharmacyshop.model.BillDetails;
import com.chainsys.pharmacyshop.model.Medicine;
import com.chainsys.pharmacyshop.model.Payment;
import com.chainsys.pharmacyshop.model.User;
import com.chainsys.pharmacyshop.repository.BillingDetailsRepository;
import com.chainsys.pharmacyshop.repository.MedicineRepository;



@Service
public class MedicineService {
	@Autowired
	private MedicineRepository medicineRepo;
	@Autowired
	private BillingDetailsRepository billRepo;
	
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
	public MedicineBilldetailDTO getMedicineBillDetail(int id) {
		Medicine md = findById(id);
		MedicineBilldetailDTO dto = new MedicineBilldetailDTO();
		dto.setMed(md);
		List<BillDetails> billdetail = billRepo.findAllByMedicineid(id);
		Iterator<BillDetails> itr = billdetail.iterator();
		while (itr.hasNext()) {
			dto.addBillDetail((BillDetails) itr.next());
		}
		return dto;
	}
	
}
