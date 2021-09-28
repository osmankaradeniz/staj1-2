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
@Table(name = "sector")
public class Sector {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sector_id;
	
	@Column(name="name")
	private String name;
	
	 @OneToMany(mappedBy = "sector", fetch = FetchType.LAZY,
	            cascade = CascadeType.ALL)
	    private Set<Company> companys;
	
}
