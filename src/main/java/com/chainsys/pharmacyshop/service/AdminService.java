package com.chainsys.pharmacyshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.pharmacyshop.pojo.Admin;
import com.chainsys.pharmacyshop.repository.AdminRepository;

@Service
public class AdminService {
	private AdminRepository adminRepository;

	//inject employee dao
	@Autowired   //Adding bean id @Qualifier
	public AdminService(AdminRepository obj)
	{
		adminRepository=obj;
	}
	
	public void save(Admin admin)
	{
		
		adminRepository.save(admin);
	}

	public List<Admin> findByRole(String user) {
		
		return adminRepository.findByRole(user);
	}


}
