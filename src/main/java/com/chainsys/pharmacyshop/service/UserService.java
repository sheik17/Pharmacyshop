package com.chainsys.pharmacyshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.pharmacyshop.model.User;
import com.chainsys.pharmacyshop.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	public User findById(int id) {
		return userRepository.findById(id);
	}

	public User deleteById(int userid) {
		return userRepository.deleteById(userid);
	}

	public void save(User user) {
		userRepository.save(user);
	}

	public List<User> findAll() {

		return userRepository.findAll();
	}
	public User getUserNameAndUserPasswordAndRole(String userName, String userPassword,String role) {
		return userRepository.findByUserNameAndUserPasswordAndRole(userName, userPassword,role);
	}
}
