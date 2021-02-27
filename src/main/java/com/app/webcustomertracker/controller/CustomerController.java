package com.app.webcustomertracker.controller;

import java.util.List;

import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.app.webcustomertracker.model.Customer;
import com.app.webcustomertracker.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@GetMapping("/list")
	public String listCustomers(Model theModel) {

		List<Customer> customers = customerService.getCustomers();

		theModel.addAttribute("customers",customers);

		return "list-customers";
	}
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel){
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer",theCustomer);
		return "cutomer-form";
	}
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer){
		customerService.save(theCustomer);
		return "redirect:/customer/list";
	}
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int theId, Model theModel){
		Customer theCustomer = customerService.getOne(theId) ;
		System.out.println(theCustomer.toString());
		theModel.addAttribute("customer",theCustomer);
		return  "cutomer-form";
	}
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int theId, Model theModel){
		Customer theCustomer = customerService.getOne(theId) ;
		System.out.println(theCustomer.toString());
		customerService.delete(theCustomer);
		return "redirect:/customer/list";
	}

}
