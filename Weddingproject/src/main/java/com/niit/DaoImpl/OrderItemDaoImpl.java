package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.OrderItemDao;
import com.niit.model.OrderItem;

@Repository("orderItemDao")
@EnableTransactionManagement
@Transactional
public class OrderItemDaoImpl implements OrderItemDao
{
	@Autowired
	SessionFactory sessionFactory;

	public OrderItemDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	public boolean saveorupdate(OrderItem orderItem)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(orderItem);
		return true;
	}


	public boolean delete(OrderItem orderItem) 
	{
		sessionFactory.getCurrentSession().delete(orderItem);
		return true;
	}

	
	public OrderItem GetOrderItem(String oiId) 
	{
		String query="from OrderItem where oiId='"+oiId+"'";
		Query c=sessionFactory.getCurrentSession().createQuery(query);
		List<OrderItem> list= (List<OrderItem>) c.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	
	public List<OrderItem> list() {
		List<OrderItem> orderItems = (List<OrderItem>) sessionFactory.getCurrentSession().createCriteria(OrderItem.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return orderItems;
	}
	
	

}
