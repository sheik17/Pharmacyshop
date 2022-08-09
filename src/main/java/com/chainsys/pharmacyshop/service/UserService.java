package com.chainsys.pharmacyshop.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.pharmacyshop.dto.UserBillingDTO;
import com.chainsys.pharmacyshop.dto.UserPaymentDTO;
import com.chainsys.pharmacyshop.model.Billing;
import com.chainsys.pharmacyshop.model.Payment;
import com.chainsys.pharmacyshop.model.User;
import com.chainsys.pharmacyshop.repository.BillingRepository;
import com.chainsys.pharmacyshop.repository.PaymentRepository;
import com.chainsys.pharmacyshop.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private BillingRepository medRepo;
	@Autowired
	private PaymentRepository payRepo;

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

	public UserBillingDTO getUserBilling(int id) {
		User us = findById(id);
		UserBillingDTO dto = new UserBillingDTO();
		dto.setUsers(us);
		List<Billing> billing = medRepo.findAllByUserId(id);
		Iterator<Billing> itr = billing.iterator();
		while (itr.hasNext()) {
			dto.addBilling((Billing) itr.next());
		}
		return dto;
	}
	public UserPaymentDTO getUserPayment(int id) {
		User us = findById(id);
		UserPaymentDTO dto = new UserPaymentDTO();
		dto.setUsers(us);
		List<Payment> payment = payRepo.findAllByUserId(id);
		Iterator<Payment> itr = payment.iterator();
		while (itr.hasNext()) {
			dto.addPayment((Payment) itr.next());
		}
		return dto;
	}

	public User getUserNameAndUserPasswordAndRole(String userName, String userPassword, String role) {
		return userRepository.findByUserNameAndUserPasswordAndRole(userName, userPassword, role);
	}
}
