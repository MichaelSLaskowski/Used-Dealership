package com.claim.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Sale;
import com.claim.repository.SaleRepository;

@Service
public class SaleService {
	
	@Autowired
	SaleRepository saleRepository;
	
	public void saveSale(Sale sale) {
		saleRepository.save(sale);
			}
		public List<Sale> getSales(){
		return saleRepository.findAll();
	}
}