package com.java.bimuhasebe.util;

import java.io.Serializable;

public class JwtResponse  implements Serializable  {
	/**
	 * 
	 */ 
	private static final long serialVersionUID = 5107235024509116884L;
	
	private final String jwttoken;
	private Boolean success;

	public JwtResponse(String jwttoken, Boolean success) {
		this.jwttoken = jwttoken;
		this.success = success;
	}

	public String getToken() {
		return this.jwttoken;
	}

	 public Boolean getSuccess() {
	        return success;
	    }
	 
	 public void setSuccess(Boolean success) {
	        this.success = success;
	    }
	
	
	
}
