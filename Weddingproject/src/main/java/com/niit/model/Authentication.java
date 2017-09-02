package com.niit.model;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Authentication 
{
	 @Id
private String role_id;
private String rolename="ROLE_USER";
private String username;
public Authentication()
{
	 this.role_id="AUTHENTICATION"+UUID.randomUUID().toString().substring(30).toUpperCase();
}
public String getRole_id() {
	return role_id;
}
public void setRole_id(String role_id) {
	this.role_id = role_id;
}
public String getRolename() {
	return rolename;
}
public void setRolename(String rolename) {
	this.rolename = rolename;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
	
}
