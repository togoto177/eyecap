package com.homepage.eyecap.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.homepage.eyecap.dao.AdminDao;
import com.homepage.eyecap.model.Admin;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao ad;

	@Override
	public Admin selectUserInfo(Map<String, Object> map) {
		return ad.selectUserInfo(map);
	}
	@Override
	public Admin selectCorpUserInfo(Map<String, Object> map) {
		return ad.selectCorpUserInfo(map);
	}
}