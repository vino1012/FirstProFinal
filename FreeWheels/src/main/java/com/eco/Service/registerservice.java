package com.eco.Service;
import java.util.List;
import com.eco.model.register;

	public interface registerservice {

	
	public 	List<register> getAllregister();
   public register adduser(register newuser);
   public register getuserbyid(int id);
   public void update(register user);
   public void delete(register user);
	}

	
	
