package com.java.bimuhasebe.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "users")
@NamedQuery( name="findByEmail",query="select u from Users u where u.email = ?1")
public class Users {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_id;
	
	@OneToMany(mappedBy = "users")
    Set<Users_company> users_company;
	
	@Column(name="name")
	private String name;
	
	@Column(name="surname")
	private String surname;
	
	@Column(name="email",nullable=false,length = 75,unique = true)
	private String email;
	
	@Column(name="password")
	private String password;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="activation_code")
	private String activation_code;
	
	@Column(name="is_activated")
	private boolean is_activated;
	
	@Column(name="cdate")
	private Date cdate;

}
