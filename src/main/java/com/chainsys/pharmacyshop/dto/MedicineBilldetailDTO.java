package com.chainsys.pharmacyshop.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.pharmacyshop.model.BillDetails;
import com.chainsys.pharmacyshop.model.Billing;
import com.chainsys.pharmacyshop.model.Medicine;
import com.chainsys.pharmacyshop.model.User;

public class MedicineBilldetailDTO {
	@Autowired
    private Medicine med;
    private List<BillDetails> billdetaillist=new ArrayList<BillDetails>();
    public Medicine getMed() {
        return med;
    }
    public void setMed(Medicine med) {
        this.med = med;
    }
    public List<BillDetails> getBillDetailList() {
        return billdetaillist;
    }
    public void addBillDetail(BillDetails billDetails)
    {
    	billdetaillist.add(billDetails);
    }
}
