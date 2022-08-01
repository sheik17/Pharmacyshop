package com.chainsys.pharmacyshop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.pharmacyshop.model.BillDetails;


public interface BillingDetailsRepository extends CrudRepository<BillDetails, Integer>{
	BillDetails findById(int id);

	BillDetails save(BillDetails billdetails);

	BillDetails deleteById(int billid);

	List<BillDetails> findAll();
}
