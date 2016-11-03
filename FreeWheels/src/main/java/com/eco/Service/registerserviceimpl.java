package com.eco.Service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eco.DAO.registerdaoimpl;
import com.eco.model.register;	

@Service	
public class registerserviceimpl implements registerservice{

	@Autowired
	registerdaoimpl newuser;

	public List<register> getAllregister() {
		// TODO Auto-generated method stub
		return null;
	}

	public register adduser(register u) {
	newuser.adduser(u);
	return u;	
	}

	public register getuserbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(register user) {
		// TODO Auto-generated method stub
		
	}

	public void delete(register user) {
		// TODO Auto-generated method stub
		
	}
	

}
	
	
	