package com.java.bimuhasebe.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.java.bimuhasebe.model.Users;

public interface UsersRepo extends JpaRepository<Users, Integer> {

	Users findByEmail(String email);
	
}
