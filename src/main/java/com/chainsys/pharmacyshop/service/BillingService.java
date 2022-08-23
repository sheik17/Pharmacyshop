package com.chainsys.pharmacyshop.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.pharmacyshop.dto.BillToBillDetailDTO;
import com.chainsys.pharmacyshop.dto.BillToPaymentDTO;
import com.chainsys.pharmacyshop.model.BillDetails;
import com.chainsys.pharmacyshop.model.Billing;
import com.chainsys.pharmacyshop.model.Payment;
import com.chainsys.pharmacyshop.repository.BillingDetailsRepository;
import com.chainsys.pharmacyshop.repository.BillingRepository;
import com.chainsys.pharmacyshop.repository.PaymentRepository;


@Service
public class BillingService {
	@Autowired
	private BillingRepository billRepo;
	@Autowired
	private BillingDetailsRepository billdetailRepo;
	@Autowired
	private PaymentRepository payRepo;
	
	public Billing findById(int id) {
		return billRepo.findById(id);
	}
	
	public Billing deleteById(int billid) {
		return billRepo.deleteById(billid);
	}
	
	public void save(Billing bill) {
		billRepo.save(bill);
	}
	
	public BillToBillDetailDTO getBillToBillDetail(int id) {
		Billing bill = findById(id);
		BillToBillDetailDTO dto = new BillToBillDetailDTO();
		dto.setBill(bill);
		List<BillDetails> billdetail = billdetailRepo.findAllByBillid(id);
		Iterator<BillDetails> itr = billdetail.iterator();
		while (itr.hasNext()) {
			dto.addBillDetail((BillDetails) itr.next());
		}
		return dto;
	}
	public BillToPaymentDTO getBillToPaymentDTO(int id) {
        Billing bill = billRepo.findById(id);
        BillToPaymentDTO dto = new BillToPaymentDTO();
        dto.setBilling(bill);
        Payment payment = payRepo.findByBillid(id);
        dto.setPayment(payment);
        return dto;
    }
	public List<Billing> getBilling() {
		List<Billing> bills = billRepo.findAll();
		return bills;
	}
	public List<Billing> cusPhoneno(long cusPhoneno) {
        return billRepo.getCusPhoneno(cusPhoneno);
    }
}
