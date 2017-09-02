package com.niit.Dao;

import java.util.List;


import com.niit.model.UserInfo;

public interface UserDao 
{
	public boolean saveorupdate(UserInfo user);
	public boolean delete(UserInfo user);
	public UserInfo Getuser(String uId);
	public List<UserInfo> list();
	public UserInfo isValid(String umail, String pwd);
	public UserInfo getUseremail(String email);
}
