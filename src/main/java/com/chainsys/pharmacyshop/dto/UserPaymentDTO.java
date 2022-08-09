package com.chainsys.pharmacyshop.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.pharmacyshop.model.Payment;
import com.chainsys.pharmacyshop.model.User;

public class UserPaymentDTO {
	@Autowired
    private User users;
    private List<Payment> paymentlist=new ArrayList<Payment>();
    public User getUsers() {
        return users;
    }
    public void setUsers(User users) {
        this.users = users;
    }
    public List<Payment> getPaymentList() {
        return paymentlist;
    }
    public void addPayment(Payment payment)
    {
    	paymentlist.add(payment);
    }
}
