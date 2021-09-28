package com.java.bimuhasebe.util;

import java.io.Serializable;

public class MessageResponse implements Serializable{
	 
	/**
	 * 
	 */
	private static final long serialVersionUID = 8249428032070528160L;
	
	private String message;
	private Boolean success;

	public MessageResponse(Boolean success, String message) {
        this.success = success;
        this.message = message;
    }
	
	 public Boolean getSuccess() {
	        return success;
	    }
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
        this.message = message;
    }
	
	 public void setSuccess(Boolean success) {
	        this.success = success;
	    }

}
