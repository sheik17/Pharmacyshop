package com.chainsys.pharmacyshop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.pharmacyshop.model.Payment;



public interface PaymentRepository extends CrudRepository<Payment, Integer>{
	Payment findById(int id);

	@SuppressWarnings("unchecked")
	Payment save(Payment pay);

	Payment deleteById(int userid);

	List<Payment> findAll();
		
	Payment findByBillid(int id);
}
