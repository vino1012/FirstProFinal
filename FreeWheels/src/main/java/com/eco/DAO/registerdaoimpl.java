package com.eco.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eco.model.register;	
@Repository
public class registerdaoimpl implements registerdao{
@Autowired
private SessionFactory sessionFactory;

	public List<register> getAllregister() {
		// TODO Auto-generated method stub
		return null;
	}

	public register adduser(register newuser) {

Session session=sessionFactory.openSession();
Transaction tx=null;
newuser.setRole("ROLE_USER");
tx=session.beginTransaction();
session.saveOrUpdate(newuser);
tx.commit();

		return null;
	}

	public register getuserbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateuser(register user) {
		// TODO Auto-generated method stub
		
	}

	public void deleteuser(register user) {
		// TODO Auto-generated method stub
		
	}

}