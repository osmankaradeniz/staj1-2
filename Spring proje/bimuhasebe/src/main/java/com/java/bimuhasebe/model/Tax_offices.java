package com.java.bimuhasebe.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.Set;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "tax_offices")
public class Tax_offices {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int tax_id;
	
	@Column(name="tax_department")
	private String tax_department;
	
	 @OneToMany(mappedBy = "tax_offices", fetch = FetchType.LAZY,
	            cascade = CascadeType.ALL)
	    private Set<Company> companys;
	
	 @OneToMany(mappedBy = "tax_offices", fetch = FetchType.LAZY,
	            cascade = CascadeType.ALL)
	    private Set<Trader_account> trader_accounts;

}
