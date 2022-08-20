package com.chainsys.pharmacyshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.pharmacyshop.model.Billing;


public interface BillingRepository extends CrudRepository<Billing, Integer>{
	Billing findById(int id);

	@SuppressWarnings("unchecked")
	Billing save(Billing bill);

	Billing deleteById(int billid);

	List<Billing> findAll();
	
	@Query(value="SELECT * FROM Billing where CUS_PHONE_NO=?1",nativeQuery=true)
    public List<Billing> getCusPhoneno(long cusPhoneno);

}
