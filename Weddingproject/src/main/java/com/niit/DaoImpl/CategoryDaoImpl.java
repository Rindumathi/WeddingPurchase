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

import com.niit.Dao.CategoryDao;
import com.niit.model.CategoryInfo;

@Repository("categoryDao")
@EnableTransactionManagement
@Transactional
public class CategoryDaoImpl implements CategoryDao
{
@Autowired
SessionFactory sessionFactory;

public CategoryDaoImpl(SessionFactory sessionFactory)
{
	this.sessionFactory=sessionFactory;
}
public boolean saveorupdate(CategoryInfo category)
{
	sessionFactory.getCurrentSession().saveOrUpdate(category);
	return true;
}


public boolean delete(CategoryInfo category) 
{
	sessionFactory.getCurrentSession().delete(category);
	return true;
}


public CategoryInfo Getcategory(String catid) 
{
	String query="from CategoryInfo where catid='"+catid+"'";
	Query c=sessionFactory.getCurrentSession().createQuery(query);
	List<CategoryInfo> list= (List<CategoryInfo>) c.list();
	if(list==null || list.isEmpty())
	{
		return null;
	}
	return list.get(0);
}


public List<CategoryInfo> list() {
	List<CategoryInfo> categorys = (List<CategoryInfo>) sessionFactory.getCurrentSession().createCriteria(CategoryInfo.class)
			.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	return categorys;
}



public List<CategoryInfo> getcategoryByproduct(String id) 
	{
		String query="from CategoryInfo where catid='"+id+"'";
		Query c=sessionFactory.getCurrentSession().createQuery(query);
		List<CategoryInfo> list= (List<CategoryInfo>) c.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		return list;
	}

}

