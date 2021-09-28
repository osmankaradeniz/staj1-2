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
@Table(name = "unit")
public class Unit {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int unit_id;
	
	@Column(name="description")
	private String description;
	
	@Column(name="code")
	private String code;
	
	 @OneToMany(mappedBy = "units", fetch = FetchType.LAZY,
	            cascade = CascadeType.ALL)
	    private Set<İtem> items;
	

}
