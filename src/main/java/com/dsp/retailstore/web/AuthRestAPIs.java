package com.dsp.retailstore.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dsp.retailstore.model.User;
import com.dsp.retailstore.repository.UserRepository;
import com.dsp.retailstore.security.jwt.JwtUtil;
import com.dsp.retailstore.security.jwt.model.request.LoginForm;
import com.dsp.retailstore.security.jwt.model.request.SignUpForm;
import com.dsp.retailstore.security.jwt.model.response.JwtResponse;
import com.dsp.retailstore.security.jwt.service.RetailUserDetailService;

/**
 * 
 * @author damujuri
 *
 */
@RestController
public class AuthRestAPIs {

	@Autowired(required = true)
	AuthenticationManager authenticationManager;

	@Autowired
	UserRepository userRepository;

	@Autowired
	RetailUserDetailService retailUserDetailService;

	@Autowired
	PasswordEncoder encoder;

	@Autowired
	JwtUtil jwtUtil;

	@RequestMapping(value = "/authenticate", method = RequestMethod.POST)
	public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginForm loginRequest) throws Exception {

		try {
			authenticationManager.authenticate(
					new UsernamePasswordAuthenticationToken(loginRequest.getUsername(), loginRequest.getPassword()));

		} catch (BadCredentialsException e) {
			throw new Exception("Incorrect username and password", e);
		}

		final UserDetails userDetails = retailUserDetailService.loadUserByUsername(loginRequest.getUsername());
		String jwt = jwtUtil.generateJwtToken(userDetails);

		return ResponseEntity.ok(new JwtResponse(jwt, "User Authenticated."));
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ResponseEntity<?> registerUser(@Valid @RequestBody SignUpForm signUpRequest) {
		if (userRepository.existsByUsername(signUpRequest.getUsername())) {
			return new ResponseEntity<>(new JwtResponse("", "Fail -> Username is already taken!"),
					HttpStatus.BAD_REQUEST);
		}

		// Creating user's account
		User user = new User(signUpRequest.getUsername(), encoder.encode(signUpRequest.getPassword()));

		userRepository.save(user);
		final UserDetails userDetails = retailUserDetailService.loadUserByUsername(signUpRequest.getUsername());
		String jwt = jwtUtil.generateJwtToken(userDetails);
		return ResponseEntity.ok(new JwtResponse(jwt, "User registered successfully!"));
	}

}