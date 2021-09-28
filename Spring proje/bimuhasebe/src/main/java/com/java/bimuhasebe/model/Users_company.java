package com.java.bimuhasebe.model;


import javax.persistence.Entity;
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
@Table(name = "users_company")
public class Users_company {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int uc_id;
	
    @ManyToOne
    @JoinColumn(name = "users_user_id")
    Users users;

    @ManyToOne
    @JoinColumn(name = "company_company_id")
    Company companys;
}
