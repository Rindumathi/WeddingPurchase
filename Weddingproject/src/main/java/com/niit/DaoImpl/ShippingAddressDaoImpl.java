package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.ShippingAddressDao;
import com.niit.model.ShippingAddress;

@Repository("shippingAddressDao")
@EnableTransactionManagement
@Transactional
public class ShippingAddressDaoImpl implements ShippingAddressDao
{
	@Autowired
	SessionFactory sessionFactory;

	public  ShippingAddressDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	public boolean saveorupdate(ShippingAddress shippingAddress)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
		return true;
	}


	public boolean delete(ShippingAddress shippingAddress) 
	{
		sessionFactory.getCurrentSession().delete(shippingAddress);
		return true;
	}

	
	public ShippingAddress GetShippingAddress(String ship_Id) 
	{
		String query="from ShippingAddress where ship_Id='"+ship_Id+"'";
		Query c=sessionFactory.getCurrentSession().createQuery(query);
		List<ShippingAddress> list= (List<ShippingAddress>) c.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	
	public List<ShippingAddress> list() {
		List<ShippingAddress> shippingaddress = (List<ShippingAddress>) sessionFactory.getCurrentSession().createCriteria(ShippingAddress.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return shippingaddress;
	}
	
	public List<ShippingAddress> getaddbyUserInfo(String uId) 
	{
		String query="from ShippingAddress where uId='"+uId+"'";
		Query c=sessionFactory.getCurrentSession().createQuery(query);
		List<ShippingAddress> list= (List<ShippingAddress>) c.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		return list;
	}

	
	

}
