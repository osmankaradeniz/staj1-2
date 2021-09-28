package com.java.bimuhasebe.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.java.bimuhasebe.model.Users;
import com.java.bimuhasebe.repository.UsersRepo;

@Service
public class UsersServiceİmp implements UsersService,UserDetailsService{

	@Autowired
	UsersRepo usersRepo;

	@Autowired
	private PasswordEncoder bcryptEncoder;
	
	@Override
	public List<Users> getAllUsers() {
	
		return usersRepo.findAll();
	}


	public Users findByEmail(String email){
	
		return usersRepo.findByEmail(email);
	}

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {

		Users user = findByEmail(email);
		if (user == null) {
			throw new UsernameNotFoundException("Bu email bulunamadı :" + email);
		}
		return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(),
				new ArrayList<>());
	}


	@Override
	public void userAdd(Users user) {
		
	   user.setPassword(bcryptEncoder.encode(user.getPassword()));	
	   
	   user.set_activated(true);
	   LocalDate date = LocalDate.now();
	   DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
	   Date date_now=null;
	try {
		date_now = new SimpleDateFormat("dd-MM-yyyy").parse(date.format(formatter));
	} catch (ParseException e) {
		
		e.printStackTrace();
	}  
	   
	   user.setCdate((date_now));
	   
	   
	   usersRepo.save(user);
	   
	   
	}


	
	

}
