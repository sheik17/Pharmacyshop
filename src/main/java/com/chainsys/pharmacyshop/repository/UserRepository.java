package com.chainsys.pharmacyshop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.pharmacyshop.model.User;


public interface UserRepository extends CrudRepository<User, Integer>{
	User findById(int id);

	User save(User u);

	User deleteById(int userid);

	List<User> findAll();
	
	User findByUserNameAndUserPasswordAndRole(String userName, String userPassword,String role);
}
