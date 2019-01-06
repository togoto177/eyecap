package com.homepage.eyecap.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping(value = "/A_03.do")
	public String A_03() {
		
		return "sub/A_Cable Connectors/03_Tubular Terminal lug responsive to overheat";
	}
	@RequestMapping(value = "/A_04.do")
	public String A_04() {
		
		return "sub/A_Cable Connectors/04_Washer responsive to overheat";
	}
	@RequestMapping(value = "/A_05.do")
	public String A_05() {
		
		return "sub/A_Cable Connectors/05_Terminal_Insulation_Cover";
	}
	@RequestMapping(value = "/A_06.do")
	public String A_06() {
		
		return "sub/A_Cable Connectors/06_FireZero_Conduit";
	}
	@RequestMapping(value = "/A_07.do")
	public String A_07() {
		
		return "sub/A_Cable Connectors/07_FireZero_Panel_Mat";
	}
	
	@RequestMapping(value = "/references.do")
	public String references() {
		
		return "sub/references/references";
	}
}
