package com.chainsys.pharmacyshop.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.pharmacyshop.model.Medicine;

public interface MedicineRepository extends CrudRepository<Medicine, Integer>{
	Medicine findById(int id);

	@SuppressWarnings("unchecked")
	Medicine save(Medicine med);

	Medicine deleteById(int medid);

	List<Medicine> findAll();
	
	@Query(value="SELECT * FROM medicine where EXP_DATE<=?1",nativeQuery=true)
    public List<Medicine> getExpdate(Date expDate);
}
