package com.java.bimuhasebe.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "trader_class")
public class Trader_class {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int trader_class_id;
	

	@Column(name="description")
	private String description;
	
	 @OneToMany(mappedBy = "trader_class", fetch = FetchType.LAZY,
	            cascade = CascadeType.ALL)
	 private Set<Trader_account> trader_accounts;
	
	
}
