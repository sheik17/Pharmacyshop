package com.chainsys.pharmacyshop.businesslogic;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
		public static Date getInstanceDate() {
	        Calendar vcalendar = Calendar.getInstance();
	        String dates = vcalendar.get(Calendar.DATE) + "/" + (vcalendar.get(Calendar.MONTH) + 1) + "/"
	                + vcalendar.get(Calendar.YEAR);
	        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	        Date date = null;
	        try {
	            date = new java.sql.Date(dateFormat.parse(dates).getTime());
	        } catch (ParseException e) {
	            //
	        }
	        return date;
	    }
}
