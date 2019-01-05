package com.homepage.eyecap.controller;

import java.math.BigDecimal;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.homepage.eyecap.model.Board;
import com.homepage.eyecap.service.AdminService;
import com.homepage.eyecap.service.BoardFileService;
import com.homepage.eyecap.service.BoardService;

@Controller
public class EyecapSubController {
	@Autowired
	AdminService as;
	@Autowired
	BoardService bs;
	@Autowired
	BoardFileService bfs;
	@RequestMapping(value = "/main.do")
	public String main() {
		
		return "main/main";
	}
	
	@RequestMapping(value = "/A_01.do")
	public String A_01() {
		
		return "sub/A_Cable Connectors/01_product responsive to overheat";
	}
	@RequestMapping(value = "/A_02.do")
	public String A_02() {
		
		return "sub/A_Cable Connectors/02_Insulation cap responsive to overheat";
	}
	
	@RequestMapping(value = "/references.do")
	public String references() {
		
		return "sub/references/references";
	}
}
