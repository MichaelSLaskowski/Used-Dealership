package com.claim.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Vehicle;
import com.claim.repository.VehicleRepository;

@Service
public class VehicleService {
	
	@Autowired
	VehicleRepository vehicleRepository;
	
	public void saveVehicle(Vehicle vehicle) {
		vehicleRepository.save(vehicle);
	}
	public List<Vehicle> getVehicles(){
		return vehicleRepository.findAll();
	}
	public List<Vehicle> getIdleVehicles(){
		return vehicleRepository.findAllIdle();
	}
	public List<Vehicle> getVehiclesByModel(String modelType) {
		System.out.println("Search for a " + modelType);
		return vehicleRepository.getVehiclesByModel(modelType);
	}
	public Vehicle getVehicleById(String vin) {
			return vehicleRepository.findById(vin).get();
	}}