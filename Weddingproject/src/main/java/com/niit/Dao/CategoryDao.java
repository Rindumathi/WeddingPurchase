package com.niit.Dao;

import java.util.List;

import com.niit.model.CategoryInfo;

public interface CategoryDao 
{
	public boolean saveorupdate(CategoryInfo category);
	public boolean delete(CategoryInfo category);
	public CategoryInfo Getcategory(String catid);
	public List<CategoryInfo> list();
	public List<CategoryInfo> getcategoryByproduct(String id);
}
