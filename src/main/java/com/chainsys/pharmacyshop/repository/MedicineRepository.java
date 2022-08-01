package com.chainsys.pharmacyshop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.pharmacyshop.model.Medicine;

public interface MedicineRepository extends CrudRepository<Medicine, Integer>{
	Medicine findById(int id);

	Medicine save(Medicine Med);

	Medicine deleteById(int userid);

	List<Medicine> findAll();
}
