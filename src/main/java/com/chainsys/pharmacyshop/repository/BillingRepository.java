package com.chainsys.pharmacyshop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.pharmacyshop.model.Billing;


public interface BillingRepository extends CrudRepository<Billing, Integer>{
	Billing findById(int id);

	Billing save(Billing bill);

	Billing deleteById(int billid);

	List<Billing> findAll();
	
	Billing findByUserId(int userId);

	List<Billing> findAllByUserId(int userId);
}
