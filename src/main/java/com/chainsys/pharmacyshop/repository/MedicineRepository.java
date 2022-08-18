package com.chainsys.pharmacyshop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.pharmacyshop.model.Medicine;

public interface MedicineRepository extends CrudRepository<Medicine, Integer>{
	Medicine findById(int id);

	@SuppressWarnings("unchecked")
	Medicine save(Medicine med);

	Medicine deleteById(int medid);

	List<Medicine> findAll();
}
