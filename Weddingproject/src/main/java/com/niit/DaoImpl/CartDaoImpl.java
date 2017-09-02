package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CartDao;
import com.niit.model.Cart;

@Repository("cartDao")
@EnableTransactionManagement
@Transactional
public class CartDaoImpl implements CartDao
{
	@Autowired
	SessionFactory sessionFactory;

	public CartDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	public boolean saveorupdate(Cart cart)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		return true;
	}


	public boolean delete(Cart cart) 
	{
		sessionFactory.getCurrentSession().delete(cart);
		return true;
	}

	
	public Cart GetCart(String cart_id) 
	{
		String query="from Cart where cart_id='"+cart_id+"'";
		Query c=sessionFactory.getCurrentSession().createQuery(query);
		List<Cart> list= (List<Cart>) c.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	
	public List<Cart> list() {
		List<Cart> carts = (List<Cart>) sessionFactory.getCurrentSession().createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return carts;
	}

	

}
