package com.homepage.eyecap.dao;

import java.util.Map;

import com.homepage.eyecap.model.Admin;


public interface AdminDao {
	Admin selectUserInfo(Map<String, Object> map);
}
