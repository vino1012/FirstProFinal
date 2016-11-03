package com.eco.DAO;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eco.model.Product;


@SuppressWarnings("deprecation")
@Repository
public class productdaoimpl implements productdao{


@Autowired
private SessionFactory sessionFactory;

	@SuppressWarnings({ "unchecked" })
	
	public List<Product> getAllProducts() {
		List<Product> products = null;
		Session session=sessionFactory.openSession();
		Transaction tx=null;
		tx=session.beginTransaction();
		products=(List<Product>)session.createCriteria(Product.class).list();
		tx.commit();
		
		return products;
		
		
	}

	public Product addprod(Product newprod) {

Session session=sessionFactory.openSession();
Transaction tx=null;
tx=session.beginTransaction();
session.saveOrUpdate(newprod);
tx.commit();

		return null;
	}

	@SuppressWarnings({ "rawtypes" })
	public Product getprodbyid(int id) {
		Session session=sessionFactory.openSession();
		Transaction tx=null;
		Product p=null;
		try
		{
			tx=session.beginTransaction();
			String hql="from Product where id = :id";
			Query query=session.createQuery(hql);
			query.setInteger("id", id);
			p=(Product) query.uniqueResult();
			tx.commit();
		}
		catch(HibernateException e)
		{
		
		
		e.printStackTrace();
		}
		
		finally{
			
			session.close();
			}
		
		return p;
	}
		

	public void updateprod(Product prod) {
		// TODO Auto-generated method stub
		
	}

	public void deleteprod(int id) {
		Session session=this.sessionFactory.openSession();
		Transaction tx=null;
		Product prod=getprodbyid(id);
		
	
		try
		{
			tx=session.beginTransaction();
			session.delete(prod);
			tx.commit();
		}
		catch(HibernateException e)
		{
			if(tx!=null)
			{
				tx.rollback();
			}
			
			e.printStackTrace();
		}
		
		finally
		{
			session.close();
		}

	}
		
	@SuppressWarnings({ "unchecked" })
	public List<Product> getProductByCategory(String category) 
	{
		List<Product> products=null;
		Session session=this.sessionFactory.openSession();
		Transaction tx=null;
		try {

			  tx=session.beginTransaction();
			  String hql="from Product where Category ="+"'"+category+"'";
			  products =(List<Product>)session.createQuery(hql).list();
			  
			  tx.commit();

			} catch (RuntimeException f) {
			  tx.rollback();
			  throw f;
			}
		return products;
	}
}
		
		
		
