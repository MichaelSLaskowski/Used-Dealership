package com.claim.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Customer;
import com.claim.service.CustomerService;


@Controller
public class CustomerController {

	
		@Autowired
		CustomerService customerService;
		
		// TODO add a new customer to the customer table
		@GetMapping("/saveCustomer")
		public ModelAndView addNewCustomer(Model model) {
			System.out.println("getmapping add new CUSTOMER fired");
			return new ModelAndView("saveCustomer", "customer", new Customer());
		}

		// TODO add a new customer to the customer table @post
		@PostMapping("/saveCustomer")
		public String handleAddNewCustomer(Model model, @ModelAttribute("customer") Customer customer, HttpSession session) {
			System.out.println("postmapping add new customer fired");
			model.addAttribute("newCustomer", customer);
			customerService.saveCustomer(customer);
					
			return "thank you";
		}
		
		
		@GetMapping("/transactions")
		public String handlePurchased(Model model)	{
		//	List<Vehicle> vehicles = vehicleService.findAll();
		//	model.addAttribute("vehicles", vehicles);
			return " ";
		}
		
		
		@GetMapping("/newCustomer")
		public ModelAndView CreateNewCustomer(Model model) {
			return new ModelAndView("newCustomer", "customer", new Customer());
		}
		
		@PostMapping("/newCustomer")
		public String registerCustomer(Model model, @ModelAttribute Customer customer, HttpSession session) {
			//Note-- "handleAddNewCustomer"has been implemented //
			
			return "thank you";
		}
}
