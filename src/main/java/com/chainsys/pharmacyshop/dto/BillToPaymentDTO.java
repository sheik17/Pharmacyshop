package com.chainsys.pharmacyshop.dto;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.pharmacyshop.model.Billing;
import com.chainsys.pharmacyshop.model.Payment;

public class BillToPaymentDTO {
	@Autowired
	private Billing bill;
	private Payment payment;

	public Billing getBilling() {
		return bill;
	}

	public void setBilling(Billing bill) {
		this.bill = bill;
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}
}
