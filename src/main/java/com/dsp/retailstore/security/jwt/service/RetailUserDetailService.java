package com.dsp.retailstore.security.jwt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dsp.retailstore.model.User;
import com.dsp.retailstore.model.UserPrinciple;
import com.dsp.retailstore.repository.UserRepository;

/**
 * 
 * @author damujuri
 *
 */
@Service
public class RetailUserDetailService implements UserDetailsService {

	@Autowired
	UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {

 		User user = userRepository.findByUsername(userName).orElseThrow(
				() -> new UsernameNotFoundException("User Not Found with -> username" + userName));

		return UserPrinciple.build(user);
	}

}