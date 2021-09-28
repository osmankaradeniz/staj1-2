package com.java.bimuhasebe.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "address")
public class Address {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int address_id;
	
	@Column(name="zip_code")
	private String zip_code;
	
	// 0 : tüzel , 1 : gerçek
	@Column(name="type")
	private boolean type;
	
	@Column(name="content")
	private String content;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "city_city_id", nullable = false)
    private City city;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "town_town_id", nullable = false)
    private Town town;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "trader_account_trader_id", nullable = false)
    private Trader_account trader_accounts;
	
	@OneToOne
    @MapsId
    @JoinColumn(name = "company_company_id")
    private Users users;
	
	

}
