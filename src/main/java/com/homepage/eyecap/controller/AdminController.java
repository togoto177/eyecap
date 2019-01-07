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

import org.json.JSONObject;
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
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
public class AdminController {
	
	@Autowired
	AdminService as;
	@Autowired
	BoardService bs;
	@Autowired
	BoardFileService bfs;
	
	//로그인폼
	@RequestMapping(value = "/popupLogin.do")
	public ModelAndView popupLogin(HttpServletRequest request, SessionStatus status, HttpServletResponse response,
			CommandMap commandMap, Model model, @RequestParam Map<String, Object> paramMap) throws Exception {
		
		ModelAndView mav = new ModelAndView("main/admin/mainLogin");
		model.addAttribute("result", paramMap.get("result"));
		
		if (request.getSession().getAttribute("ad_id") != null) {
			/*세션 종료 삭제*/
			request.getSession(false).invalidate();
		}
		
		return mav;
	}
	
	//로그인 액션
	@RequestMapping(value = "/loginTry.do", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> loginTry(HttpServletRequest request, @RequestParam Map<String, Object> map) throws Exception {
		/*로그인*/
		
		Object divison = map.get("loginDivision");
		if (divison.equals("adminLogin")) {
			System.out.println(divison);
			Admin admin = as.selectUserInfo(map);

				if (admin == null) {
					map.put("fail", "fail");
				}else{
					request.getSession().setAttribute("ad_id", map.get("ad_id"));
					request.getSession().setAttribute("ad_seq", admin.getAd_seq());
					request.getSession().setAttribute("ad_name", admin.getAd_name());
					request.getSession().setAttribute("ad_contact", admin.getAd_contact());
					request.getSession().setAttribute("ad_email", admin.getAd_email());
					request.getSession().setMaxInactiveInterval(60*30);
					map.put("sucess", "sucess");
				}
		
		}else if (divison.equals("corpUserLogin")) {
			System.out.println(divison);
			Admin admin = as.selectCorpUserInfo(map);

				if (admin == null) {
					map.put("fail", "fail");
				}else{
					request.getSession().setAttribute("corp_id", map.get("corp_id"));
					request.getSession().setAttribute("corp_name", admin.getCorp_name());
					request.getSession().setAttribute("corp_division", admin.getCorp_division());
					request.getSession().setAttribute("corp_country", admin.getCorp_country());
					request.getSession().setMaxInactiveInterval(60*30);
					map.put("sucess", "sucess");
				}
		
		}
		
		return map;
	}
	
	//메인 글쓰기 작성 액션
	@RequestMapping(value="/mainBoardAction.do", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> mainBoardAction(@ModelAttribute Board board, Fileup fileup, HttpServletRequest request, Model model, HttpSession session, @RequestParam Map<String, Object> map, MultipartHttpServletRequest multi)throws Exception{
				
				Object ss_id = session.getAttribute("ad_id");
	    		String session_id = ss_id.toString();
	    		System.out.println("===============>" + board.getBoard_division());
				board.setBoard_division(board.getBoard_division());
				if (board.getBoard_notice() == null) {					
					board.setBoard_notice("0");
				}else {
					
				}
				board.setBoard_hit(0);
				board.setBoard_use_yn("Y");
		    	board.setBoard_register_id(session_id);
				board.setBoard_update_id(session_id);
		   
				bs.board_insert(board);
				
				board = bs.board_read(board);
				
				String board_division = board.getBoard_division();
				
		        BoardFile boardFile = new BoardFile();
		        boardFile.setBoard_seq(board.getBoard_seq());
		        boardFile.setFile_register_id(board.getBoard_register_id());
		        boardFile.setFile_update_id(board.getBoard_register_id());
		        boardFile.setFile_use_yn("Y");
				
				//파일
		        Calendar cal = Calendar.getInstance()  ;
		        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd-HHmmSS");
		        String time = dateFormat.format(cal.getTime());
		        List<MultipartFile> files = multi.getFiles("uploadfile");
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
							
							if(board_division.equals("archave")) {
								attach_path = "resources/uploadFile/archave/";
							}else if (board_division.equals("oooo")) {
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
							boardFile.setFile_ext_name(fileExt);
							boardFile.setFile_ori_name(file_ori_name);
							boardFile.setFile_sub_name(file_sub_name);
							boardFile.setFile_path("/" + attach_path);

							long fsize = multipartFile.getSize();
							String Fsize = String.valueOf(fsize);
					        System.out.println(" size = " + Fsize + " bytes");
							boardFile.setFile_size(Fsize);
							System.out.println("확장명 : " + fileExt);
							bfs.file_insert(boardFile);
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
				
			    map.put("code","1");
				
				return map;
		      
		    }
	//글 삭제 액션
	@RequestMapping(value = "/board_delete.do" , method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> board_delete(Board board, BoardFile boardFile, int[] board_seq, HttpServletRequest request, HttpSession session) {
			
			System.out.println("=======================board_seq?" + board_seq);
		
			Object ss_id = session.getAttribute("ad_id");
			String session_id = ss_id.toString();
			
			for (int i = 0; i < board_seq.length; i++) {
				
			board.setBoard_update_id(session_id);
			board.setBoard_seq(board_seq[i]);
			System.out.println("=======================board_seq[i]?" + board_seq[i]);
			
			bs.board_delete(board);

			boardFile.setFile_update_id(session_id);
			boardFile.setBoard_seq(board_seq[i]);
			
			bfs.file_delete(boardFile);
			}
			HashMap<String, Object> map = new HashMap<String, Object>();
		    map.put("code","1");
			
			return map;
				
			
			
			}
	//archave 작성창
		@RequestMapping(value = "/archaveWriteForm.do", method = RequestMethod.POST)
		public String archaveWriteForm(@RequestParam Map<String, Object> paramMap, Model model, Board board, HttpServletRequest request) {
			String path =  request.getServletPath();
			model.addAttribute("servletPath", path);
			model.addAttribute("board_read",bs.board_read(board));
			
			return "main/admin/archaveWrite";
		}	
	
	//archave 수정창
	@RequestMapping(value = "/archaveModifyForm.do", method = RequestMethod.POST)
	public String archaveModifyForm(@RequestParam Map<String, Object> paramMap, Model model, Board board, HttpServletRequest request) {
		String path =  request.getServletPath();
		model.addAttribute("servletPath", path);
		model.addAttribute("file_list",bfs.file_list(paramMap));
		model.addAttribute("board_read",bs.board_read(board));
		
		return "main/admin/archaveModify";
	}
	
	//Fnq 작성창
	@RequestMapping(value = "/fnqWriteForm.do", method = RequestMethod.POST)
	public String fnqWriteForm(@RequestParam Map<String, Object> paramMap, Model model, Board board, HttpServletRequest request) {
		String path =  request.getServletPath();
		model.addAttribute("servletPath", path);
		model.addAttribute("board_read",bs.board_read(board));
		
		return "main/admin/fnqWrite";
	}
	
	//Fnq 수정창
	@RequestMapping(value = "/fnqModifyForm.do", method = RequestMethod.POST)
	public String fnqModifyForm(@RequestParam Map<String, Object> paramMap, Model model, Board board, HttpServletRequest request) {
		String path =  request.getServletPath();
		model.addAttribute("servletPath", path);
		model.addAttribute("board_read",bs.board_read(board));
		
		return "main/admin/fnqModify";
	}
	
	//메인 글쓰기 수정 액션
		@RequestMapping(value="/ModifyAction.do", method=RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> ModifyAction(@ModelAttribute Board board, Fileup fileup, HttpServletRequest request, Model model, HttpSession session, @RequestParam Map<String, Object> map,String[] file_key, String[] flag, MultipartHttpServletRequest multi)throws Exception{
					
					Object ss_id = session.getAttribute("ad_id");
		    		String session_id = ss_id.toString();
					if (board.getBoard_notice() == null) {					
						board.setBoard_notice("0");
					}else {
						
					}
					board.setBoard_update_id(session_id);
			   
					System.out.println("====================>" + board);
					bs.board_update(board);
					
			        BoardFile boardFile = new BoardFile();
			        boardFile.setBoard_seq(board.getBoard_seq());
			        boardFile.setFile_register_id(session_id);
			        boardFile.setFile_update_id(session_id);
			        boardFile.setFile_use_yn("Y");
			        
			        String board_division = board.getBoard_division();
			        
			        //파일
			        Calendar cal = Calendar.getInstance()  ;
			        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd-HHmmSS");
			        String time = dateFormat.format(cal.getTime());
			        
			        List<MultipartFile> files = multi.getFiles("uploadfile");
					
					//List<String> fileNames = new ArrayList<String>();
					if (null != files && files.size() > 0) {
						
						
						for (MultipartFile multipartFile : files) {
							if (!"".equals(multipartFile.getOriginalFilename()) && multipartFile.getSize() > 0) {
							
								System.out.println("file = " + multipartFile.getOriginalFilename() + "/" + multipartFile.getSize());
								// 상대경로 
								String file_path = request.getSession().getServletContext().getRealPath("/");
								String file_ori_name = multipartFile.getOriginalFilename();
								String file_sub_name = time + "-" + UUID.randomUUID().toString() +"_" +file_ori_name;
								
								System.out.println("file_ori_name ----->" + file_ori_name);
								
								String attach_path = "";
								if(board_division.equals("archave")) {
									attach_path = "resources/uploadFile/archave/";
								}else if (board_division.equals("oooo")) {
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
								boardFile.setFile_ext_name(fileExt);
								boardFile.setFile_ori_name(file_ori_name);
								boardFile.setFile_sub_name(file_sub_name);
								boardFile.setFile_path("/" + attach_path);
								
								long test = multipartFile.getSize();
								String test2 = String.valueOf(test);

						        System.out.println(" size = " + test2 + " bytes");
						 
								
								boardFile.setFile_size(test2);

								System.out.println("확장명 : " + fileExt);
								
								bfs.file_insert(boardFile);
								
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
					if(file_key != null) {
			    		
			    		for(int i=0; i<file_key.length ; i++) {
			    			
			    			System.out.println("===========fileKey==============>" + file_key[i]);
			    			System.out.println("===========flag==============>" + flag[i]);
			        		/*System.out.println("===========fName==============>" + fName[i]);*/

			        		//flag가 D인건 삭제. 데이터도 삭제, 파일도 삭제.
			    			if("D".equals(flag[i])) {
			    				boardFile.setFile_seq(Integer.parseInt(file_key[i]));
			    				boardFile.setFile_update_id(session_id);
			    				
			    				bfs.file_updateform_delete(boardFile);
									
			    			}
			    		}
			    		}else{
					bs.board_update(board);
					}
					
				    map.put("code","1");
					
					return map;
			      
			    }

		//아카이브 리스트
		@RequestMapping(value = "/archaveList.do", method=RequestMethod.POST)
		public String archaveList(@RequestParam Map<String, Object> paramMap, Model model, Board board, HttpServletRequest request) {
			
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
			
			
			return "main/admin/archaveList";
		}
		
		//공통 다운로드 액션
		@RequestMapping("/boardFileDown")
	    private void boardFileDown(String file_name, String file_seq, String board_division, HttpServletRequest request, HttpServletResponse response) throws Exception{
	   	request.setCharacterEncoding("UTF-8");
	   		
	   		//자료실 다운 액션
	   		try {
				 /*상대경로 */
	   		String file_path = request.getSession().getServletContext().getRealPath("/");
	   		String attach_path = "";
	   		
	   		if(board_division.equals("archave")) {
	   			attach_path = "resources/uploadFile/archave/";
	   		}else if (board_division.equals("000")) {
	   			attach_path = "resources/portfolio/portfolio_uploadfile/";
			}

	   		String savePath = file_path+attach_path;
	   		String fileName = file_name;
	   		//실제 내보낼 파일명
	   		String oriFileName = file_name;
	   		
	   		String oriFileNames = oriFileName.substring(oriFileName.indexOf("_")+1);

	   		
	   		System.out.println(oriFileNames); 
	   		
	   		InputStream in = null;
	   		OutputStream os = null;
	   		File file = null;
	   		boolean skip = false;
	   		String client = "";
	   		
	   		
	   		//파일을 읽어 스트림에 담기
	   		try {
					file = new File(savePath, fileName);
					in = new FileInputStream(file);
				} catch (FileNotFoundException fe) {
					skip = true;
				}
	   		
	   		client = request.getHeader("User-Agent");
	   		
	   		
	   		//파일 다운로드 헤더 지정 
	           response.reset();
	           response.setContentType("application/octet-stream");
	           response.setHeader("Content-Description", "JSP Generated Data");
	           
	           
	           
	           if (!skip) {
	               // IE
	               if (client.indexOf("MSIE") != -1) {
	                   response.setHeader("Content-Disposition", "attachment; filename=\""
	                           + java.net.URLEncoder.encode(oriFileNames, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
	                   
	                   // IE 11 이상.
	               } else if (client.indexOf("Trident") != -1) {
	                   response.setHeader("Content-Disposition", "attachment; filename=\""
	                           + java.net.URLEncoder.encode(oriFileNames, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
	               } else {
	                   // 한글 파일명 처리
	                   response.setHeader("Content-Disposition",
	                           "attachment; filename=\"" + new String(oriFileNames.getBytes("UTF-8"), "ISO8859_1") + "\"");
	                   response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
	               }
	               response.setHeader("Content-Length", "" + file.length());
	               os = response.getOutputStream();
	               byte b[] = new byte[(int) file.length()];
	               int leng = 0;
	               while ((leng = in.read(b)) > 0) {
	                   os.write(b, 0, leng);
	               
	                   bfs.file_hit(file_seq);
	               
	               }
	           } else {
	               response.setContentType("text/html;charset=UTF-8");
	               System.out.println("파일을 찾을 수 없습니다.");
	           }
	           in.close();
	           os.close();
	       } catch (Exception e) {
	           System.out.println("ERROR : " + e.getMessage());
	       }
	   		
	   	}
		
		@RequestMapping(value = "/fnqList.do", method=RequestMethod.POST)
		public String fnqList(@RequestParam Map<String, Object> paramMap, Model model, Board board, HttpServletRequest request) {
			
			//조회 하려는 페이지
	        int startPage = (!"".equals(paramMap.get("startPage")) && paramMap.get("startPage")!=null?Integer.parseInt(paramMap.get("startPage").toString()):1);

	        //한페이지에 보여줄 리스트 수
	        int visiblePages = (!"".equals(paramMap.get("visiblePages")) && paramMap.get("visiblePages")!=null?Integer.parseInt(paramMap.get("visiblePages").toString()):5);
	        //일단 전체 건수를 가져온다.
	        int totalCnt = bs.fnq_cnt(paramMap);
	        
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
	        
			model.addAttribute("fnq_List", bs.fnq_list(paramMap));
			
			String path =  request.getServletPath();
			model.addAttribute("servletPath", path);
			
			
			return "main/admin/fnqList";
		}
}
