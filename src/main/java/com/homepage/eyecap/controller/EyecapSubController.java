package com.homepage.eyecap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EyecapSubController {
	
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
