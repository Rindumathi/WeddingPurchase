package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.PayDao;
import com.niit.model.Pay;

@Repository("payDao")
@EnableTransactionManagement
@Transactional
public class PayDaoImpl implements PayDao
{
	@Autowired
	SessionFactory sessionFactory;

	public  PayDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	public boolean saveorupdate(Pay pay)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(pay);
		return true;
	}


	public boolean delete(Pay pay) 
	{
		sessionFactory.getCurrentSession().delete(pay);
		return true;
	}

	
	public Pay GetPay(String pay_id) 
	{
		String query="from Pay where pay_id='"+pay_id+"'";
		Query c=sessionFactory.getCurrentSession().createQuery(query);
		List<Pay> list= (List<Pay>) c.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	
	public List<Pay> list() {
		List<Pay> pays = (List<Pay>) sessionFactory.getCurrentSession().createCriteria(Pay.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return pays;
	}

	

}
