package com.app.webcustomertracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.webcustomertracker.repository.CustomerRepository;
import com.app.webcustomertracker.model.Customer;
@Service
public class CustomerService {

	
	private CustomerRepository customerRepository;
	@Autowired
	public CustomerService(CustomerRepository customerRepository) {
		super();
		this.customerRepository = customerRepository;
	}
	
	public List <Customer> getCustomers(){
		return customerRepository.findAll();	
	}
	public Customer save(Customer theCustomer){return  customerRepository.save(theCustomer);}
	public Customer getOne(int theId){return customerRepository.getOne(theId);}
	public void delete(Customer theCustomer){customerRepository.delete(theCustomer);}
	
	
}
