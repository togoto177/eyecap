package com.homepage.eyecap.dao;

import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.homepage.eyecap.model.Admin;

@Repository
public class AdminDaoImpl implements AdminDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public Admin selectUserInfo(Map<String, Object> map) {
		return sst.selectOne("admins.selectUserInfo", map);
	}
	
	@Override
	public Admin selectCorpUserInfo(Map<String, Object> map) {
		return sst.selectOne("admins.selectCorpUserInfo", map);
	}

}
