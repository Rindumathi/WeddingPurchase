 package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.SupplierDao;
import com.niit.model.ProductInfo;
import com.niit.model.SupplierInfo;

@Repository("supplierDao")
@EnableTransactionManagement
@Transactional
public class SupplierDaoImpl implements SupplierDao
{
@Autowired
SessionFactory sessionFactory;

public SupplierDaoImpl(SessionFactory sessionFactory)
{
	this.sessionFactory=sessionFactory;
}


public boolean saveorupdate(SupplierInfo supplier) {
	sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	return true;
}

public boolean delete(SupplierInfo supplier) 
{
	sessionFactory.getCurrentSession().delete(supplier);
	return true;
}


public SupplierInfo Getsupplier(String supId)
{
	String query="from SupplierInfo where supId='"+supId+"'";
	Query s=sessionFactory.getCurrentSession().createQuery(query);
	List<SupplierInfo> list=(List<SupplierInfo>) s.list();
	if(list==null || list.isEmpty())
	{
		return null;
	}
	return list.get(0);
}


public List<SupplierInfo> list() {
	List<SupplierInfo> suppliers = (List<SupplierInfo>) sessionFactory.getCurrentSession().createCriteria(SupplierInfo.class)
			.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	return suppliers;
}








}
