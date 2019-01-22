package com.homepage.eyecap.controller;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.homepage.eyecap.model.Pro_log;
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
	public String main(Pro_log pro_log, HttpServletRequest request) {
		
		return "main/main";
	}
	
	@RequestMapping(value = "/A_01.do")
	public String A_01(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());	
				
		String path =  request.getServletPath();
		String str = path.substring(0,path.lastIndexOf('.'));
		String producPageName = str.substring(1);
		
		pro_log.setPro_date(format_time);
		pro_log.setPro_name(producPageName);
		
		if (bs.proHitRead(pro_log) == null) {
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/A_Cable Connectors/01_overheat2";
	}
	@RequestMapping(value = "/A_02.do")
	public String A_02(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/A_Cable Connectors/02_overheat2";
	}
	@RequestMapping(value = "/pop02.do")
	public String pop(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/A_Cable Connectors/02_pop";
	}
	@RequestMapping(value = "/A_03.do")
	public String A_03(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/A_Cable Connectors/03_Tubular Terminal lug responsive to overheat";
	}
	@RequestMapping(value = "/A_04.do")
	public String A_04(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/A_Cable Connectors/04_Washer responsive to overheat";
	}
	@RequestMapping(value = "/A_05.do")
	public String A_05(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/A_Cable Connectors/05_Terminal_Insulation_Cover";
	}
	@RequestMapping(value = "/A_06.do")
	public String A_06(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/A_Cable Connectors/06_FireZero_Conduit";
	}
	@RequestMapping(value = "/A_07.do")
	public String A_07(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/A_Cable Connectors/07_FireZero_Panel_Mat";
	}
	@RequestMapping(value = "/A_08.do")
	public String A_08(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/A_Cable Connectors/08_FireZero_Tray_Mat";
	}
	
	@RequestMapping(value = "/B_01.do")
	public String B_01(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/B_Firestop_Products/01_fire_system";
	}
	@RequestMapping(value = "/B_02.do")
	public String B_02(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/B_Firestop_Products/02_Vertical_penetration_-_steel_pipe";
	}
	@RequestMapping(value = "/B_03.do")
	public String B_03(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/B_Firestop_Products/03_Vertical_penetration_-_PVC_pipe";
	}
	@RequestMapping(value = "/B_04.do")
	public String B_04(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());
		
		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/B_Firestop_Products/04_Wall_penetration_-_steel__pipe";
	}
	@RequestMapping(value = "/B_05.do")
	public String B_05(Pro_log pro_log, HttpServletRequest request) {
		
		SimpleDateFormat todayDate = new SimpleDateFormat ( "yyyy-MM-dd");
		
		Calendar time = Calendar.getInstance();
		String format_time = todayDate.format(time.getTime());

		String path =  request.getServletPath();//url 경로 불러옴
		String str = path.substring(0,path.lastIndexOf('.')); //구분자로 잘름 
		String producPageName = str.substring(1); //앞에 '/' 제거시킴
		
		pro_log.setPro_date(format_time); //현재 포멧날짜 변수 선언된걸 모델에 담는다
		pro_log.setPro_name(producPageName); //위에 구분자로 자른 페이지명을 모델에 담는다
		
		if (bs.proHitRead(pro_log) == null) { //오늘날짜와 해당 제품으로 조회가 안되면 insert
		
			pro_log.setPro_name(producPageName);
			bs.proHitInsert(pro_log); //2019-01-09 제품 클릭 시조회수 등록을 위해 추가
			
		}else{ //오늘 날짜로 이미 카운트가 되어있을경우 카운트 1씩증가
			bs.proHitUpdate(pro_log);
		}
		
		return "sub/B_Firestop_Products/05_Wall_penetration_-_PVC_Pipe";
	}
	
	@RequestMapping(value = "/references.do")
	public String references() {
		
		return "sub/references/references";
	}
}
