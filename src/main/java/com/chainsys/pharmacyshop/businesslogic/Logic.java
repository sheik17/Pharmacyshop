package com.chainsys.pharmacyshop.businesslogic;
import java.util.List;
import com.chainsys.pharmacyshop.model.BillDetails;
public class Logic {
		public static float getTotalAmount(List<BillDetails> billDetailsList) {
			float totalAmount=0;
			for(int i=0;i<billDetailsList.size();i++) {
				totalAmount+=billDetailsList.get(i).getAmount();
			}
			return totalAmount;
		}
}
