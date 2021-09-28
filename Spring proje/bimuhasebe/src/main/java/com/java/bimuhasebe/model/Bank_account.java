package com.java.bimuhasebe.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "bank_account")
public class Bank_account {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bank_id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="total_balance")
	private Double total_balance;
	
	@Column(name="cdate")
	private Date cdate;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "company_company_id", nullable = false)
	   private Company companys;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "trader_account_trader_id", nullable = false)
	   private Trader_account trader_accounts;

}
