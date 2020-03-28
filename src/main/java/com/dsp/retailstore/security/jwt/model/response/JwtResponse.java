package com.dsp.retailstore.security.jwt.model.response;

/**
 * JwtResponse is used to store the jwtToken and response message for the
 * operation.
 * 
 * @author damujuri
 *
 */
public class JwtResponse {
	private String jwtToken;
	private String message;

	public JwtResponse(String jwtToken, String message) {
		this.jwtToken = jwtToken;
		this.message = message;

	}

	/**
	 * @return the jwtToken
	 */
	public String getJwtToken() {
		return jwtToken;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}