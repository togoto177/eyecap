package com.homepage.eyecap.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.homepage.eyecap.model.Admin;
import com.homepage.eyecap.model.Board;
import com.homepage.eyecap.model.BoardFile;
import com.homepage.eyecap.model.Fileup;
import com.homepage.eyecap.service.AdminService;
import com.homepage.eyecap.service.BoardFileService;
import com.homepage.eyecap.service.BoardService;
import com.homepage.eyecap.util.CommandMap;

@Controller
public class CmsController {
	
	@Autowired
	private AdminService as;
	@Autowired
    BoardService boardService;
	@Autowired
    BoardFileService boardFileService;
	//로그인 및 회원가입
	@RequestMapping(value = "/cms_login.do") 
	public ModelAndView view_cms_main(HttpServletRequest request, SessionStatus status, HttpServletResponse response,
			CommandMap commandMap, Model model, @RequestParam Map<String, Object> paramMap) throws Exception {
		
		ModelAndView mav = new ModelAndView("cms_view/admin/login");
		model.addAttribute("result", paramMap.get("result"));
		
		if (request.getSession().getAttribute("ad_id") != null) {
			/*세션 종료 삭제*/
			request.getSession(false).invalidate();
		}
		
		return mav;
	}
/*	//아이디 중복 검사
	@RequestMapping(value = "/userIdCheck.do", method = RequestMethod.POST) 
	@ResponseBody
	public Map<String, Object> userIdCheck(@RequestParam("userid") String id){
		int person = as.idcheck(id);
		Map<String,Object>  map = new HashMap<String,Object>();
		map.put("cnt", person);
		return map;
	}
	//login try
	@RequestMapping(value = "/loginTry.do")
	public ModelAndView loginTry(HttpServletRequest request, @RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mav = new ModelAndView();
		로그인
		Admin_tb admin_tb = as.selectUserInfo(map);	
		
	    
		if (admin_tb == null) {
			mav.setViewName("cms_view/admin/login");
			mav.addObject("result", "fail");
		}else{
			request.getSession().setAttribute("ad_id", map.get("ad_id"));
			request.getSession().setAttribute("ad_seq", admin_tb.getAd_seq());
			request.getSession().setAttribute("ad_name", admin_tb.getAd_name());
			request.getSession().setAttribute("ad_contact", admin_tb.getAd_contact());
			request.getSession().setAttribute("ad_email", admin_tb.getAd_email());
			request.getSession().setMaxInactiveInterval(60*30);
			mav.setViewName("redirect:/cms_main.do");
		}
		return mav;
	}
	//cms메인
		@RequestMapping(value = "/cms_main.do")
		public String cms_main(){

			return "cms_view/cms_main";
		}
	//회원가입
	@RequestMapping(value="/sign_form_insert.do", method = RequestMethod.POST)
	public String sign_form_insert(CommandMap commandmap, Admin_tb admin_tb){
			admin_tb.setAd_update_id(admin_tb.getAd_id());
			as.insert(admin_tb);
			System.out.println("ddddddddddddddd");

		
		return "cms_view/admin/login";
	}
	
	//로그아웃
	@RequestMapping(value = "/logout.do") 
	public String logout(HttpServletRequest request) {

		return "cms_view/admin/logout";
	}
	//비밀번호 변경 폼
	@RequestMapping(value = "/password.do") 
	public String password(@RequestParam Map<String, Object> paramMap, Admin_tb admin, Model model, HttpServletRequest request, HttpSession session) {
		
		String division = "password";
        model.addAttribute("division", division);
		
		model.addAttribute("admin_info", as.admin_read(admin));
		model.addAttribute("result", paramMap.get("result"));
		
		return "cms_view/admin/password";
	}
	//비밀번호 변경 액션
    @RequestMapping(value = "/password_modify_action.do", method=RequestMethod.POST) 
    public String password_modify_action(@RequestParam Map<String, Object> paramMap, String ad_pw, String ad_passwordChk, @ModelAttribute Admin_tb admin, Model model, HttpServletRequest request, HttpSession session) {
       boolean result = as.passwordCheck(admin);

        Object ss_id = session.getAttribute("ad_id");
	    String session_id = ss_id.toString();
		
		admin.setAd_update_id(session_id);
		if(result == true){
			if(!ad_pw.equals(ad_passwordChk)){
	        	return "redirect:/password.do?result=fail_id";
	        }
			as.password_update(admin);
			return "redirect:/password.do?result=sucsess";
			
        }else { 
        	return "redirect:/password.do?result=fail";
        }

    }
    //업체관리 목록
  	@RequestMapping(value = "/corpList.do") 
  	public String corpList(@RequestParam Map<String, Object> paramMap, Model model, HttpSession session) {
  		
  		//조회 하려는 페이지
          int startPage = (!"".equals(paramMap.get("startPage")) && paramMap.get("startPage")!=null?Integer.parseInt(paramMap.get("startPage").toString()):1);

          //한페이지에 보여줄 리스트 수
          int visiblePages = (!"".equals(paramMap.get("visiblePages")) && paramMap.get("visiblePages")!=null?Integer.parseInt(paramMap.get("visiblePages").toString()):10);
          //일단 전체 건수를 가져온다.
          int totalCnt = boardService.corp_cnt(paramMap);
          
          //아래 1,2는 실제 개발에서는 class로 빼준다. (여기서는 이해를 위해 직접 적음)
          //1.하단 페이지 네비게이션에서 보여줄 리스트 수를 구한다.
          BigDecimal decimal1 = new BigDecimal(totalCnt);
          BigDecimal decimal2 = new BigDecimal(visiblePages);
          BigDecimal totalPage = decimal1.divide(decimal2, 0, BigDecimal.ROUND_UP);
          
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
          
  		  model.addAttribute("corp_list", boardService.corp_list(paramMap));
  		
  		return "cms_view/corp/corpList";
  	}
    //포트폴리오 작성 폼
  	@RequestMapping(value = "/corpWrite.do")
  	public String corpWrite(@RequestParam Map<String, Object> paramMap, Model model) {
  		
  		model.addAttribute("board_division", paramMap.get("board_division"));
  		
  		return "cms_view/corp/corpWrite";
  	}
    //공통 CMS 게시판 작성 액션
  	@RequestMapping(value="/boardWriteAction.do", method=RequestMethod.POST)
  	public String boardWriteAction(@ModelAttribute Board board, Fileup fileup, HttpServletRequest request, String board_division, Model model, HttpSession session)throws Exception{
  				
  				
  			if (board_division.equals("corp")) {
  				
  				Object objss_id = session.getAttribute("ad_id");
  				String session_id = objss_id.toString();
  				board.setCorp_register_id(session_id);
  				board.setCorp_update_id(session_id);
			}
  			
  			boardService.board_insert(board);
  			System.out.println("내맘속에저장");
  				
  				board = boardService.board_read(board);
  				
  		        BoardFile boardFile = new BoardFile();
  		        boardFile.setBoard_seq(board.getBoard_seq());
  		        boardFile.setFile_updateid(board.getBoard_writer());
  		        boardFile.setFile_use_yn("Y");
  		        
  		        //파일
  		        Calendar cal = Calendar.getInstance()  ;
  		        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd-HHmmSS");
  		        String time = dateFormat.format(cal.getTime());
  		        
  		        List<MultipartFile> files = fileup.getUploadfile();
  				System.out.println("File ----->" + files);
  				if (null != files && files.size() > 0) {
  					
  					
  					for (MultipartFile multipartFile : files) {
  						if (!"".equals(multipartFile.getOriginalFilename()) && multipartFile.getSize() > 0) {
  						
  							System.out.println("file = " + multipartFile.getOriginalFilename() + "/" + multipartFile.getSize());
  							// 상대경로 
  							String file_path = request.getSession().getServletContext().getRealPath("/");
  							
  							String file_ori_name = multipartFile.getOriginalFilename();
  							String file_sub_name = time + "-" + UUID.randomUUID().toString() +"_" +file_ori_name;
  							String attach_path = "";
  							
  							if(board_division.equals("download")) {
  								attach_path = "resources/download/download_uploadfile/";
  							}else if (board_division.equals("portfolio")) {
  								attach_path = "resources/portfolio/portfolio_uploadfile/";
  							}
  							
  							File f = new File(file_path + attach_path + file_sub_name);
  							
  							System.out.println("===========자료실 파일업로드 실제 Path=========" + f);
  							
  							if(!f.exists())
  								f.mkdirs();
  							
  							//	이력서 model에 파일명,주소 저장
  							//         파일명에서 확장자 추출 
  							String filename = file_ori_name;
  							int fileLen = filename.length();
  							int lastDot = filename.lastIndexOf('.');
  							String fileExt = filename.substring(lastDot, fileLen).toLowerCase();
  							boardFile.setExtention_name(fileExt);
  							boardFile.setFile_ori_name(file_ori_name);
  							boardFile.setFile_sub_name(file_sub_name);
  							boardFile.setFile_path("/" + attach_path);
  							
  							long fsize = multipartFile.getSize();
  							String Fsize = String.valueOf(fsize);

  					        System.out.println(" size = " + Fsize + " bytes");
  					 
  							
  							boardFile.setFile_size(Fsize);

  							System.out.println("확장명 : " + fileExt);
  							
  							boardFileService.file_insert(boardFile);
  							
  							try {
  								multipartFile.transferTo(f);
  							} catch (IllegalStateException e) {
  								e.printStackTrace();
  							} catch (IOException e) {
  								e.printStackTrace();
  							}
  							
  							
  							
  							
  							try { 						
  								
  							} catch (Exception e) {
  								model.addAttribute("msg", "다시 입력하세요.");
  							}
  							
  						}
  					}
  					
  					
  				}

  		        if(board_division.equals("main")) {
  		        	return "redirect:/main.do";	
  		        }else if (board_division.equals("corp")) {
  		        	return "redirect:/corpList.do?board_division=corp";
  				}
  		        return "redirect:/downloadsList.do?board_division=" + board.getBoard_division();
  		    }*/
}