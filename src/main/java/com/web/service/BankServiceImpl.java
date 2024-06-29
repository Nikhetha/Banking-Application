package com.web.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.Bank;
import com.web.repo.BankRepo;

@Service
public class BankServiceImpl implements BankService {

	@Autowired
	public BankRepo repo;
	
	@Override
	public Bank saveDetails(Bank b) {
		Bank saveRecord = repo.save(b);
		return saveRecord;
	}

	@Override
	public Bank findData(long accountno, String name, String password) {
		Optional<Bank> optionalBank = repo.findById(accountno);
	    
	    if (optionalBank.isPresent()) {
	        Bank b = optionalBank.get();
	            return b;
	    } else {
	        return null;
	    }
	}
	
	public Bank getOneRecord(long accountno)
	{
		Optional<Bank> optionalBank = repo.findById(accountno);
	    
	    if (optionalBank.isPresent()) {
	        Bank b = optionalBank.get();
	            return b;
	    } else {
	        return null;
	    }
	}
	
	
	@Override
	public Bank depositAmount(Bank b,double amount) {
		double deposit=0.0;
		deposit = b.getAmount()+amount;
		b.setAmount(deposit);
		
		Bank b1=repo.save(b);
		return b1;
	}
	@Override
	public Bank withdrawAmount(Bank b,double amount) {
		double withdraw=0.0;
		if(b.getAmount()>=amount)
		{
			withdraw = b.getAmount()-amount;
			b.setAmount(withdraw);
			
			Bank b1=repo.save(b);
			return b1;
		}
		return null;
		
	}
	@Override
	public Bank transferAmount(Bank b,double amount,long target_accountno) {
		
		double amt=0.0;
		Bank tb=repo.findById(target_accountno).get();
		
		if(b.getAmount()>=amount)
		{
			double withdraw=0.0;
			withdraw = b.getAmount()-amount;
			
			double deposit=0.0;
			deposit = tb.getAmount()+amount;
			b.setAmount(withdraw);
			tb.setAmount(deposit);
			
			Bank b1=repo.save(b);
			return b1;
		}
		return null;
	}

}
