package com.chainsys.pharmacyshop.repository;

import java.util.List;

import com.chainsys.pharmacyshop.pojo.User;

public interface UserRepository {
	User findById(int id);

	User save(User u);

	User deleteById(int userid);

	List<User> findAll();
}
