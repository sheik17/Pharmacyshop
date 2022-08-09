package com.chainsys.pharmacyshop.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.pharmacyshop.model.Billing;
import com.chainsys.pharmacyshop.model.User;

public class UserBillingDTO {
	@Autowired
    private User users;
    private List<Billing> billlist=new ArrayList<Billing>();
    public User getUsers() {
        return users;
    }
    public void setUsers(User users) {
        this.users = users;
    }
    public List<Billing> getBillingList() {
        return billlist;
    }
    public void addBilling(Billing billing)
    {
    	billlist.add(billing);
    }
}
