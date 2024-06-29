
package com.web.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.Bank;
import com.web.repo.BankRepo;
import com.web.service.BankServiceImpl;

@Controller
@RequestMapping("/")
public class Bankcontroller {

    @Autowired
    private BankServiceImpl bankService;

    @Autowired
    private BankRepo bankRepo;

    // Home page mapping
    @RequestMapping("/")
    public String home() {
        return "home";
    }

    // About Us page mapping
    @RequestMapping("/aboutus")
    public String aboutUs() {
        return "aboutus";
    }

    // Registration page mapping
    @RequestMapping("/newacc")
    public String register() {
        return "register";
    }

    // Handle new account registration
    @GetMapping("/RegUrl")
    public String regAndSave(@ModelAttribute("bank") Bank bank, ModelMap model) {
        bankService.saveDetails(bank);
        return "regsucess";
    }
    
    //Login Form Page
    @RequestMapping("/Login")
    public String LoginForm() {
        return "login_Form";
    }
    
  
    @RequestMapping("/Login_Page")
    public String LoginPage() {
        return "Login_Page";
    }
    
 // Handle Login form submission
    @GetMapping("/loginUrl")
    public String loginSubmit(@ModelAttribute("bank") Bank bank, ModelMap model) {
    	 Bank existingBank = bankService.findData(bank.getAccountno(), bank.getName(), bank.getPassword());
    	  
         if (existingBank != null) {
             // Check if name and password are correct
             if (existingBank.getName().equals(bank.getName()) && existingBank.getPassword().equals(bank.getPassword())) {
                 model.addAttribute("bank", existingBank);
                 return "Login_Page";
             } 
             if(!existingBank.getName().equals(bank.getName()))
             {
            	 model.addAttribute("error_name", "Invalid name");
                 return "login_Form";
             }
             if(!existingBank.getPassword().equals(bank.getPassword()))
             {
                 model.addAttribute("error_password", "Invalid password.");
                 return "login_Form";
             }
         } 
         else 
         {
             model.addAttribute("error_accno", "Account number does not exist.");
             return "login_Form";
         }
		return null;
    }

    // Balance form page mapping
    @RequestMapping("/balance")
    public String balanceForm(ModelMap model) {
        model.addAttribute("bank", new Bank()); // Initialize empty Bank object for form binding
        return "balance_Form";
    }

 // Handle balance form submission
    @GetMapping("/balanceUrl")
    public String balanceSubmit(ModelMap model,@RequestParam long accountno) {
    	 Bank existingBank = bankService.getOneRecord(accountno);
    	  
         if (existingBank != null) {
                 model.addAttribute("bank", existingBank);
                 return "balance_sheet";
         } 
         else 
         {
             model.addAttribute("error_accno", "Account number does not exist.");
             return "balance_Form";
         }
    }

    // Deposit form page mapping
    @GetMapping("/deposit")
    public String depositForm(ModelMap model) {
        model.addAttribute("bank", new Bank()); // Initialize empty Bank object for form binding
        return "deposit_Form";
    }

    // Handle deposit form submission
    @GetMapping("/depositUrl")
    public String depositSubmit(ModelMap model,@RequestParam long accountno,@RequestParam double amount) {
    	 Bank existingBank = bankService.getOneRecord(accountno);
   	  
         if (existingBank != null) {
        	 bankService.depositAmount(existingBank, amount);
             return "sucess";
         } 
         else
         {
             model.addAttribute("error_accno", "Account number does not exist.");
             return "deposit_Form";
         }
    }

    // Withdraw form page mapping
    @GetMapping("/withdraw")
    public String withdrawForm(ModelMap model) {
        model.addAttribute("bank", new Bank()); // Initialize empty Bank object for form binding
        return "withdraw_Form";
    }

    // Handle withdraw form submission
    @GetMapping("/withdrawUrl")
    public String withdrawSubmit(ModelMap model,@RequestParam long accountno,@RequestParam double amount) {
    	 Bank existingBank = bankService.getOneRecord(accountno);
      	  
         if (existingBank != null) {
        	 Bank b1=bankService.withdrawAmount(existingBank, amount);
         	if(b1 != null)
         	{
         		return "sucess";
         	}
         	else
         	{
         		model.addAttribute("error_amount", "Insufficient Balance");
         		return "withdraw_Form";
         	}
         } 
         else
         {
             model.addAttribute("error_accno", "Account number does not exist.");
             return "withdraw_Form";
         }
    }

    // Transfer form page mapping
    @GetMapping("/transfer")
    public String transferForm(ModelMap model) {
        model.addAttribute("bank", new Bank()); // Initialize empty Bank object for form binding
        return "transfer_Form";
    }

    // Handle transfer form submission
    @GetMapping("/transferUrl")
    public String transferSubmit(ModelMap model,@RequestParam long accountno,@RequestParam double amount,@RequestParam long target_accountno) {
    	 Bank existingBank = bankService.getOneRecord(accountno); 
       
        if (existingBank != null) 
        {
            	Optional<Bank> optionalBank = bankRepo.findById(target_accountno);
        	    
        	    if (optionalBank.isPresent()) 
        	    {
        	    	Bank b1=bankService.transferAmount(existingBank, amount, target_accountno);
        	    	if(b1 != null)
                	{
                		return "sucess";
                	}
                	else
                	{
                		model.addAttribute("error_Amount", "Insufficient Balance");
                		return "transfer_Form";
                	}
        	    }
        	    else
        	    {
        	    	model.addAttribute("error_taccno", "Account number does not exist.");
                    return "transfer_Form";
        	    }
        } 
        else 
        {
            model.addAttribute("error_accno", "Account number does not exist.");
            return "transfer_Form";
        }
    }
}
