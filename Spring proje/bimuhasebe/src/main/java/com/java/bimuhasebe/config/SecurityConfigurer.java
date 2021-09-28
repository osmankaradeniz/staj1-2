package com.java.bimuhasebe.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.BeanIds;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.java.bimuhasebe.filters.JwtRequestFilter;
import com.java.bimuhasebe.service.UsersServiceİmp;

@EnableWebSecurity
public class SecurityConfigurer  extends WebSecurityConfigurerAdapter{

	    @Autowired
	    private UsersServiceİmp usersServiceİmp;

	    @Autowired
	    private JwtRequestFilter jwtRequestFilter;

	    @Override
	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	        super.configure(auth);
	        auth.userDetailsService(usersServiceİmp);
	    }
	    
	    
	    
	    @Override
	    protected void configure(HttpSecurity http) throws Exception {
	        http.csrf().disable()
	                .authorizeRequests().antMatchers("/users/login","/users/register").permitAll()
	                .anyRequest().authenticated()
	                .and().sessionManagement()
	                .sessionCreationPolicy(SessionCreationPolicy.STATELESS);
	        http.addFilterBefore(jwtRequestFilter, UsernamePasswordAuthenticationFilter.class);
	    }

	      
	    @Bean
	    public PasswordEncoder passwordEncoder(){
	        return new BCryptPasswordEncoder();
	    }

	    @Bean(name = BeanIds.AUTHENTICATION_MANAGER)
	    @Override
	    public AuthenticationManager authenticationManagerBean() throws Exception {
	        return super.authenticationManagerBean();
	    }
	    
	    
	
	
}
