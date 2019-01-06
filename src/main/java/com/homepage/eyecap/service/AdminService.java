package com.homepage.eyecap.service;

import java.util.Map;

import com.homepage.eyecap.model.Admin;

public interface AdminService {
	Admin selectUserInfo(Map<String, Object> map);
	Admin selectCorpUserInfo(Map<String, Object> map);
}
