package com.homepage.eyecap.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.homepage.eyecap.dao.UserDao;
import com.homepage.eyecap.model.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao ud;

	public int insert(User user) {
		return ud.insert(user);
	}
}