package com.chainsys.pharmacyshop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.pharmacyshop.model.Billing;


public interface BillingRepository extends CrudRepository<Billing, Integer>{
	Billing findById(int id);

	@SuppressWarnings("unchecked")
	Billing save(Billing bill);

	Billing deleteById(int billid);

	List<Billing> findAll();

}
