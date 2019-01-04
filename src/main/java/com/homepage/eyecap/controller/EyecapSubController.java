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
	public String main(@RequestParam Map<String, Object> paramMap, Model model, Board board, HttpServletRequest request) {
		
		//조회 하려는 페이지
        int startPage = (!"".equals(paramMap.get("startPage")) && paramMap.get("startPage")!=null?Integer.parseInt(paramMap.get("startPage").toString()):1);

        //한페이지에 보여줄 리스트 수
        int visiblePages = (!"".equals(paramMap.get("visiblePages")) && paramMap.get("visiblePages")!=null?Integer.parseInt(paramMap.get("visiblePages").toString()):10);
        //일단 전체 건수를 가져온다.
        int totalCnt = bs.archave_cnt(paramMap);
        
        //아래 1,2는 실제 개발에서는 class로 빼준다. (여기서는 이해를 위해 직접 적음)
        //1.하단 페이지 네비게이션에서 보여줄 리스트 수를 구한다.
        BigDecimal decimal1 = new BigDecimal(totalCnt);
        BigDecimal decimal2 = new BigDecimal(visiblePages);
        BigDecimal totalPage = decimal1.divide(decimal2, 0, BigDecimal.ROUND_UP);
        
        //int allCount = boardService.getallCount(paramMap);
 
        int startLimitPage = 0;
        //2.mysql limit 범위를 구하기 위해 계산
        if(startPage==1){
            startLimitPage = 0;
        }else{
            startLimitPage = (startPage-1)*visiblePages;
        }
        
        paramMap.put("start", startLimitPage);
        paramMap.put("end", visiblePages);
        
        model.addAttribute("startPage", startPage+"");//현재 페이지      
        model.addAttribute("totalCnt", totalCnt);//전체 게시물수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
        model.addAttribute("sch_value", paramMap.get("sch_value"));
        model.addAttribute("sch_type", paramMap.get("sch_type"));
        
		model.addAttribute("archave_list", bs.archave_list(paramMap));
		
		String path =  request.getServletPath();
		model.addAttribute("servletPath", path);
		
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
