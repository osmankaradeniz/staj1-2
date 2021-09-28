package com.java.bimuhasebe.controller;



import com.java.bimuhasebe.model.Users;
import com.java.bimuhasebe.service.UsersServiceİmp;
import com.java.bimuhasebe.util.JwtResponse;
import com.java.bimuhasebe.util.JwtUtil;
import com.java.bimuhasebe.util.MessageResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("users")
public class UsersController {
	
	@Autowired
    private JwtUtil jwtUtil;
	
	@Autowired
	private AuthenticationManager authenticationManager;

    @Autowired
    private UsersServiceİmp usersServiceİmp;

    

    
    @PostMapping("login")
    public ResponseEntity<?> authenticateUser(@RequestParam String email,@RequestParam String password) throws Exception {
        
    	 try {
             authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(email, password));
         } catch (BadCredentialsException ex) {
             throw new Exception("Hatalı Kullanıcı adı veya şifre", ex);
         }
         final UserDetails userDetails = usersServiceİmp.loadUserByUsername(email);

        final String jwt = jwtUtil.generateToken(userDetails);

        return ResponseEntity.status(HttpStatus.OK).body(new JwtResponse(jwt,true));
    }
	
    
    @PostMapping("register")
    public ResponseEntity<?> add(@RequestBody Users users) {
    	
    	  if(usersServiceİmp.findByEmail(users.getEmail()) != null) {
              return new ResponseEntity<MessageResponse>(new MessageResponse(false, "Email kullanımda !"),
                      HttpStatus.BAD_REQUEST);
          }
    	
    	usersServiceİmp.userAdd(users);
    	return ResponseEntity.ok(new MessageResponse(true, "Kullanıcı kaydı başarılı !"));
    }
    
    
    @GetMapping("getUser")
    public ResponseEntity<?> checkUser(){
    	
    	Users user = usersServiceİmp.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName());
    	  return ResponseEntity.ok(new MessageResponse(true,user+" "));
    }
    
    

}
