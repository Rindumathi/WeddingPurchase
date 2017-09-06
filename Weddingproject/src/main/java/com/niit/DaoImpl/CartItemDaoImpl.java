package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CartItemDao;
import com.niit.model.CartItem;

@Repository("cartItemDao")
@EnableTransactionManagement
@Transactional
public class CartItemDaoImpl implements CartItemDao
{

	@Autowired
	SessionFactory sessionFactory;

	public CartItemDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	public boolean saveorupdate(CartItem cartItem)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
		return true;
	}


	public boolean delete(CartItem cartItem) 
	{
		sessionFactory.getCurrentSession().delete(cartItem);
		return true;
	}

	
	public CartItem GetCartItem(String carti_id) 
	{
		String query="from CartItem where carti_id='"+carti_id+"'";
		Query c=sessionFactory.getCurrentSession().createQuery(query);
		List<CartItem> list= (List<CartItem>) c.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	
	public List<CartItem> list() {
		List<CartItem> cartItems = (List<CartItem>) sessionFactory.getCurrentSession().createCriteria(CartItem.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return cartItems;
	}
	
	public CartItem getListall(String carti_id, String prdid) 
	{
		String query="from CartItem where carti_id='"+carti_id+"' and prdid='"+prdid+"'";
		Query c=sessionFactory.getCurrentSession().createQuery(query);
		List<CartItem> list= (List<CartItem>) c.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}
	
	public List<CartItem> getlist(String cart_id) 
	{
		String query="from CartItem where cart_id='"+cart_id+"'";
		Query c=sessionFactory.getCurrentSession().createQuery(query);
		List<CartItem> list= (List<CartItem>) c.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		return list;
	}

	


}
