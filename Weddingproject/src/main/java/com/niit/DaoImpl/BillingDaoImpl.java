package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.BillingDao;
import com.niit.model.Billing;

@Repository("billingDao")
@EnableTransactionManagement
@Transactional
public class BillingDaoImpl implements BillingDao
{
	@Autowired
	SessionFactory sessionFactory;

	public BillingDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	public boolean saveorupdate(Billing billing)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(billing);
		return true;
	}


	public boolean delete(Billing billing) 
	{
		sessionFactory.getCurrentSession().delete(billing);
		return true;
	}

	
	public Billing GetBilling(String uId) 
	{
		String query="from Billing where uId='"+uId+"'";
		Query c=sessionFactory.getCurrentSession().createQuery(query);
		List<Billing> list= (List<Billing>) c.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	
	public List<Billing> list() {
		List<Billing> billings = (List<Billing>) sessionFactory.getCurrentSession().createCriteria(Billing.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return billings;
	}

	

}
