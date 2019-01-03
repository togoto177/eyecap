package com.homepage.eyecap.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.homepage.eyecap.model.User;


@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	private SqlSessionTemplate sst;
	
	public int insert(User user) { return sst.insert("users.insert", user);	}
	
}