package com.claim.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.claim.service.VehicleService;
import com.claim.entity.Vehicle;

@Controller
public class VehicleController {

	
	@Autowired
	VehicleService vehicleService;
	@GetMapping("/")
	public String welcome(Model model) {
		return "home";
	}
	@GetMapping("/home")
	public String loadHome(Model model) {
		return "home";
	}
	@GetMapping("/inventory")
	public String handleDisplayAll(Model model) {
		List<Vehicle> vehicles = vehicleService.getVehicles();
		model.addAttribute("vehicles", vehicles);
		return "inventory";
	}

	// TODO display vehicle details
	@GetMapping("/addVehicle")
	public ModelAndView addNewVehicle(Model model) {
		System.out.println("getmapping add new vehicle fired");
		return new ModelAndView("addVehicle", "vehicle", new Vehicle());
	}
	
	@PostMapping("/addVehicle")
	public String handleAddNewVehicle(Model model, @ModelAttribute("vehicle") Vehicle vehicle, HttpSession session) {
		System.out.println("postmapping add new vehicle fired");
		model.addAttribute("newVehicle", vehicle);
		vehicleService.saveVehicle(vehicle);
			return "addVehicle";
	}

	// Inventory >120 days, user max 10% discount
	@GetMapping("/bid")
	public String handleDisplayAllIdle(Model model) throws ParseException {
		List<Vehicle> allVehicles = vehicleService.getVehicles();
		List<Vehicle> idleVehicles = new ArrayList<Vehicle>();
		SimpleDateFormat sdformat = new SimpleDateFormat("dd-MM-yyyy");
		Date d = sdformat.parse("31-01-2022");
		double discountedPrice = 0;
		// date comparison
		for (Vehicle temp : allVehicles) {
			if (temp.getDopDealer().before(d)) {
				//System.out.println(temp);
				// modify price
				discountedPrice = temp.getPrice() * 0.5;
				temp.setPrice(discountedPrice);
				idleVehicles.add(temp);
			}
		}
		model.addAttribute("vehicles", idleVehicles);
		return "bid";
	}
	@GetMapping("/searchByModel")
	public ModelAndView searchByModel(Model model) {
		System.out.println("getmapping searchByModel fired");
		return new ModelAndView("searchByModel", "vehicle", new Vehicle());
	}
	@PostMapping("/searchByModel")
	public String handleSearchByModel(Model model, @ModelAttribute("vehicle") Vehicle vehicle, HttpSession session) {

		System.out.println(vehicle.getModel());
		vehicle.setModel(vehicle.getModel());
		List<Vehicle> modelQuery = vehicleService.getVehiclesByModel(vehicle.getModel());
		System.out.println(modelQuery.size());
		
		if (!modelQuery.isEmpty()) {
			for (Vehicle temp : modelQuery) {
				System.out.println(temp);
			}
			model.addAttribute("vehicles", modelQuery);
			return "searchByModel";
		} else {
			System.out.println("No models found ");
			return "home";
		}
}
}
