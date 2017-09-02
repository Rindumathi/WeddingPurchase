package com.niit.Dao;

import java.util.List;

import com.niit.model.Authentication;

public interface AuthenticationDao 
{

	public boolean saveorupdate(Authentication authentication);
	public boolean delete(Authentication authentication);
	public Authentication Getauthentication(String role_id);
	public List<Authentication> list();
}
