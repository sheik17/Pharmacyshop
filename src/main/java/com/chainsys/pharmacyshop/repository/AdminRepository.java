package com.chainsys.pharmacyshop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.pharmacyshop.pojo.Admin;

public interface AdminRepository extends CrudRepository<Admin, Long>{	
	List<Admin> findByRole(String user);
	Admin findById(String user);
	
}
