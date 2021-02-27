package com.app.webcustomertracker.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.webcustomertracker.model.Customer;
@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {

        
}
