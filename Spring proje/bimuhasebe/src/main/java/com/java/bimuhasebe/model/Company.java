package com.java.bimuhasebe.model;


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "company")
public class Company {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int company_id;
	
	@OneToMany(mappedBy = "companys")
    Set<Users_company> users_company;
	
	@Column(name="identity_number")
	private String identity_number;
	
	@Column(name="name")
	private String name;
	
	@Column(name="surname")
	private String surname;
	
	@Column(name="legal_name")
	private String legal_name;
	
	//  0 : efatura , 1 : smm
	@Column(name="document_type")
	private boolean document_type;
	
	// 0 : tüzel , 1 : gerçek
	@Column(name="type")
	private boolean type;
	
	@Column(name="email")
	private String email;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="mersis_code")
	private String mersis_code;
	
	@Column(name="country")
	private String country;
	
	@Column(name="cdate")
	private Date cdate;
	
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.LAZY,mappedBy = "companys")
    private Set<İtem> items = new HashSet<>();
	
	@OneToOne(mappedBy = "users", cascade = CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private Address address;
	
    @OneToMany(mappedBy = "companys", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<Bank_account> bank_account;
    
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "tax_offices_tax_id", nullable = false)
    private Tax_offices tax_offices;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "sector_sector_id", nullable = false)
    private Sector sector;
	   
	@OneToMany(mappedBy = "companys", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<Trader_account> trader_account;   
	   
	
	
}
