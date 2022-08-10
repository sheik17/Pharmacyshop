package com.chainsys.pharmacyshop.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.pharmacyshop.model.BillDetails;
import com.chainsys.pharmacyshop.model.Billing;

public class BillToBillDetailDTO {
	@Autowired
    private Billing bill;
    private List <BillDetails> billdetaillist=new ArrayList <BillDetails>();
    public Billing getBill() {
        return bill;
    }
    public void setBill(Billing bill) {
        this.bill = bill;
    }
    public List<BillDetails> getBillDetailList() {
        return billdetaillist;
    }
    public void addBillDetail(BillDetails billDetails)
    {
    	billdetaillist.add(billDetails);
    }
}
