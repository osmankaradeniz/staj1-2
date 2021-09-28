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
@Table(name = "item")
public class İtem {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int item_id;
	
	 @ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name = "company_company_id", nullable = false)
	    private Company companys;
	
	 @ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name = "unit_unit_id", nullable = false)
	    private Unit units;

	@Column(name="code")
	private String code;
	

	@Column(name="barcode")
	private String barcode;
	

	@Column(name="name")
	private String name;
	

	@Column(name="description")
	private String description;

	@Column(name="origin")
	private String origin;
	
	@Column(name="tax_amount")
	private Double tax_amount;
	
	@Column(name="discount")
	private Double discount;
	
	@Column(name="unit_price")
	private Double unit_price;
	
	@Column(name="udate")
	private Date udate;
	
	@Column(name="quantity")
	private Double quantity;
	
	
	
	
	
	
	
	
}
