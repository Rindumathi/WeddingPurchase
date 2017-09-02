package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.OrderDao;
import com.niit.model.Order;

@Repository("orderDao")
@EnableTransactionManagement
@Transactional
public class OrderDaoImpl implements OrderDao
{
	@Autowired
	SessionFactory sessionFactory;

	public OrderDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	public boolean saveorupdate(Order order)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(order);
		return true;
	}


	public boolean delete(Order order) 
	{
		sessionFactory.getCurrentSession().delete(order);
		return true;
	}

	
	public Order GetOrder(String oid) 
	{
		String query="from Order where oid='"+oid+"'";
		Query c=sessionFactory.getCurrentSession().createQuery(query);
		List<Order> list= (List<Order>) c.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	
	public List<Order> list() {
		List<Order> orders = (List<Order>) sessionFactory.getCurrentSession().createCriteria(Order.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return orders;
	}

	

}
