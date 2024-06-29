package com.web.service;

import java.util.List;

import com.web.model.Bank;

public interface BankService {
	
	public Bank saveDetails(Bank b);
	public Bank findData(long id,String name,String password);
	public Bank getOneRecord(long accountno);
	public Bank depositAmount(Bank b,double amount);
	public Bank withdrawAmount(Bank b,double amount);
	public Bank transferAmount(Bank b,double amount,long target_accountno);

}
