package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.claim.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer,Integer>{

	//Query
}
