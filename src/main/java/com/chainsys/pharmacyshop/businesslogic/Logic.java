package com.chainsys.pharmacyshop.businesslogic;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.pharmacyshop.model.BillDetails;
import com.chainsys.pharmacyshop.service.BillingDetailsService;
import com.chainsys.pharmacyshop.service.MedicineService;
public class Logic {
	@Autowired
	MedicineService medservice;
	@Autowired
	BillingDetailsService billdetailservice;
	private Logic() {
	    throw new IllegalStateException("Utility class");
	  }
		public static float getTotalAmount(List<BillDetails> billDetailsList) {
			float totalAmount=0;
			for(int i=0;i<billDetailsList.size();i++) {
				totalAmount+=billDetailsList.get(i).getAmount();
			}
			return totalAmount;
		}
}
