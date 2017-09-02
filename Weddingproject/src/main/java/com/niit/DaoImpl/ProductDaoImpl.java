package com.niit.DaoImpl;

import java.util.List;
import java.util.Locale.Category;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.ProductDao;
import com.niit.model.CategoryInfo;
import com.niit.model.ProductInfo;

@Repository("productDao")
@EnableTransactionManagement
@Transactional
public class ProductDaoImpl implements ProductDao
{
@Autowired
SessionFactory sessionFactory;

public ProductDaoImpl(SessionFactory sessionFactory)
{
	this.sessionFactory=sessionFactory;
}

public boolean saveorupdate(ProductInfo product)
{
	sessionFactory.getCurrentSession().saveOrUpdate(product);
	return true;
}


public boolean delete(ProductInfo product) {
	sessionFactory.getCurrentSession().delete(product);
	return true;
}


public ProductInfo Getproduct(String prdid) {
	String query="from ProductInfo where prdid='"+prdid+"'";
	Query p=sessionFactory.getCurrentSession().createQuery(query);
	List<ProductInfo> list=(List<ProductInfo>) p.list();
	if(list==null || list.isEmpty())
	{
		return null;
	}
	return list.get(0);
}


public List<ProductInfo> list() {
	List<ProductInfo> products = (List<ProductInfo>) sessionFactory.getCurrentSession().createCriteria(ProductInfo.class)
			.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	return products;
}


public List<ProductInfo> GetProductByCategory(String id)
{
	String query="from ProductInfo where prdid='"+id+"'";
	Query p=sessionFactory.getCurrentSession().createQuery(query);
	List<ProductInfo> list=(List<ProductInfo>) p.list();
	if(list==null || list.isEmpty())
	{
		return null;
	}
	return list;
}
}
