package com.java.bimuhasebe.model;

import java.util.Date;
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
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "trader_account")
public class Trader_account {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int trader_id;
	
	@Column(name="name")
	private String name;
	
	// 0 : tüzel , 1 : gerçek
	@Column(name="type")
	private boolean type;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="email")
	private String email;
	
	@Column(name="tax_number")
	private String tax_number;
	
	@Column(name="code")
	private String code;
	
	@Column(name="identity_number")
	private String identity_number;
	
	
	@Column(name="cdate")
	private Date cdate;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "company_company_id", nullable = false)
	   private Company companys;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "trader_class_trader_class_id", nullable = false)
    private Trader_class trader_class;
	
	@OneToMany(mappedBy = "trader_accounts", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<Bank_account> bank_account;
	
    @OneToMany(mappedBy = "trader_accounts", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<Address> address;
    
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "tax_offices_tax_id", nullable = false)
    private Tax_offices tax_offices;
	
}
