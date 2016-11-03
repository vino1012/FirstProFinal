package com.eco.DAO;

import java.util.List;

import com.eco.model.register;

public interface registerdao {

public 	List<register> getAllregister();
   public register adduser(register newuser);
   public register getuserbyid(int id);
   public void updateuser(register user);
   public void deleteuser(register user);
}


