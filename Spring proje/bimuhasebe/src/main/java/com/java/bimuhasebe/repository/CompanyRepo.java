package com.java.bimuhasebe.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.java.bimuhasebe.model.Company;

public interface CompanyRepo extends JpaRepository<Company, Integer> {

}
