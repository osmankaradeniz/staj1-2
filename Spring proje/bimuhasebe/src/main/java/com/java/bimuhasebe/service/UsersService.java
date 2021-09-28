package com.java.bimuhasebe.service;

import java.util.List;

import com.java.bimuhasebe.model.Users;
public interface UsersService {

	 List<Users> getAllUsers();
	 void userAdd(Users user);
	 
}
