<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<%@ include file="includeMAin.jsp"%>
<html lang="ko">
<head>
	<title>EyeCapInternational</title>
	<script type="text/javascript">
/* 	jQuery(document).ready(function() {
		$.ajax({ 
			type: 'get' , 
			url: '/archaveList.do',
			dataType : 'html' ,
			success: function(data) {
	//			$('#pagination').empty();
				$('#archaveList').html(data);
	//			history.go(-1);
	//			$("#pagination").append(pagination);
			} 
		});	
	}); */
	
	</script>
</head>
<body>
    <!-- TODO : Wrapper -->
    <div id="wrapper">
        <!-- TODO : Header -->
        <header class="header">
            <div class="header-inner">
                <h1>
                    <a class="logo" href="/">EyeCap</a>
                </h1>
                <nav class="gnb">
                    <a href="#" class="lnk-moving on" data-url="section-1">HOME</a>
                    <a href="#" class="lnk-moving" data-url="section-2">PRODUCTS</a>
                    <a href="#" class="lnk-moving" data-url="section-3">REFERENCES</a>
                    <a href="#" class="lnk-moving" data-url="section-4">SUPPORT</a>
                    <a href="#" class="lnk-moving" data-url="section-5">ARCHAVE</a>
                    <a href="http://eyecapkorea.com/index.php" class="lnk-moving radius_menu" target="blank">EYECAPKOREA</a>
                </nav>
            </div>
        </header>
        <!-- TODO : Header -->


        <!-- TODO : Main Content -->
        <div class="main-content">
            <section class="section" id="section-1">     
                <!-- Swiper01 Start -->
              <div class="swiper-container">
                <div class="swiper-wrapper">
                  <div class="swiper-slide intro">
                      <img src="resources/main/main_slide_01.jpg" alt="main-slider01" />
                      <h2 class="reveal reveal-top">
                            <p>
                                Since its establishment, EYECAP have made our position secured<br/>
                                in the market with quality products and outstanding technologies as the solution provider,<br/>
                                specializing in cable connectors and firestop products.<br/>
                                Founded in 2014, EYECAP INTERNATIONAL is representing EYECAP KOREA<br/>
                                exclusively for overseas market and now exporting its products to all over the world.
                            </p>
                        </h2>
                  </div>
                  <div class="swiper-slide intro">
                      <img src="resources/main/main_slide_02.jpg" alt="main-slider02" />
                      <h2 class="reveal reveal-top">
                            <p>
                                Since its establishment, EYECAP have made our position secured<br/>
                                in the market with quality products and outstanding technologies as the solution provider,<br/>
                                specializing in cable connectors and firestop products.<br/>
                                Founded in 2014, EYECAP INTERNATIONAL is representing EYECAP KOREA<br/>
                                exclusively for overseas market and now exporting its products to all over the world.
                            </p>
                        </h2>
                  </div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
              </div>
               <!-- Swiper01 End -->
              
            </section>
            <!-- #section-1 END-->
            <!-- .icon_slider START-->
            <section class="section icon_slider">
                <div class="container">
                    <!-- Swiper Start -->
                      <div class="swiper-container">
                        <div class="swiper-wrapper">
                          <!-- Cable Connectors -->
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">About Cable connectors</p>
                          </div>
                          <div class="swiper-slide">
                           <div class="icon_area"></div>
                           <p class="icon_title">Insulation cap responsive to overheat</p>  
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">Tubular Terminal lug responsive to overheat</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">Washer responsive to overheat</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">Terminal Insulation Cover</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">FireZero Conduit</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">FireZero Panel Mat</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">FireZero Trayl Mat</p>
                          </div>
                          <!-- Firestop Products -->
                          <div class="swiper-slide">
                           <div class="icon_area"></div>
                           <p class="icon_title">About Firestop products</p>  
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">Tubular Terminal lug responsive to overheat</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">Washer responsive to overheat</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">Terminal Insulation Cover</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">FireZero Conduit</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">FireZero Panel Mat</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">FireZero Trayl Mat</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">FireZero Trayl Mat</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">FireZero Trayl Mat</p>
                          </div>
                          <div class="swiper-slide">
                            <div class="icon_area"></div>
                            <p class="icon_title">FireZero Trayl Mat</p>
                          </div>
                        </div>
                        <!-- Add Arrows -->
                        <div class="swiper-button-next">&lt;</div>
                        <div class="swiper-button-prev">&gt;</div>
                      </div>
                    <!-- Swiper02 End -->
                </div>
            </section>
            <!-- .icon_slider END-->
            <!-- #section-2 START-->
            <section class="section" id="section-2">
                <div class="container">
                    <h2 class="text_center">PRODUCT</h2>
                    <div class="title_red_line"></div>
                    
                    <div class="product_login">
                        <input type="text" name="" placeholder="ID: Price require"/>
                        <a href="#">Login</a>
                    </div>
                    
                    <div class="product_info_top">
                        <div class="reveal reveal-right product_info_left_img" style="position: absolute">
                            <img src="resources/main/main_cont1_img_01.jpg" alt="Cable connectors" />
                        </div>
                        <div class="reveal reveal-left product_info_text_right">
                            <div class="triangle_left"></div>
                            <h5>Cable connectors</h5>
                            <h3>ELECTRICAL CONNECTOR</h3>
                            <p>
                                EYECAP’S overheat detection by its color change saves your life!<br />
                                With its specialized technology, EYECAP has developed temperature-sensitive
                                INSULATING CAP with its heat resistance, up to 340C by its material of flame
                                retardant SILICON.<br />
                                By its characteristic of SILICON, it doesn’t generate harmful gas like hydrogen
                                chloride, doesn’t include any SVHC while it has UL flame resistance rating of VW-1.
                                Also it has Arc resistance time of over 190 sec, much longer than PVC’s 15 sec.,
                                providing less possibilities of catching fire!
                            </p>
                            <a href="A_01.do">More Products &gt;</a>
                        </div>
                    </div>
                    <div class="product_info" style="margin-top: 0">
                        <div class="reveal reveal-right product_info_text_left">
                            <h5>Firestop products</h5>
                            <h3>FIRESTOP</h3>
                            <p>
                                EYECAP as FIRESTOP system solution provider to penetrations, saves your life!<br/>
                                With high-rise or large buildings, safeguard against fire has become essential at hotels,
                                hospitals, plants, apartments and offices as those constructions creates a lot of spaces
                                between floors or walls, requiring many penetrations to install cables, pipes, ducts, etc.<br/>
                                Those penetrations can be also the penetrations for fire too when fire happens.<br/>
                                EYECAP’S FIRESTOP SYSTEM SOLUTION, named as FIREZERO, seals airtight all penetrations
                                to prevent fire and harmful gas from being spread from the other side of floors or walls.<br/>
                                It also provides as system, not components, resulting in less manpower, time and money.
                            </p>
                            <a href="#">More Products &gt;</a>
                            <div class="triangle_right"></div>
                        </div>
                        <div class="reveal reveal-left product_info_right_img">
                            
                            <img src="resources/main/main_cont1_img_02.jpg" alt="Firestop products" />
                        </div>
                    </div>
                </div>
            </section>
            <!-- #section-2 END-->
            <!-- #section-3 START-->
            <section class="section" id="section-3">
                <div class="container">
                    <h2 class="text_center">REFERNCE</h2>
                    <div class="title_red_line"></div>

                    <div class="explanation">
                        <div class="reveal reveal-bottom">
                            <h5>Please check the references and customer list.</h5>
                            <a class="click_btn" href="#">
                                Click <span class="click_right_arrow"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- #section-3 END-->
            <!-- #section-4 START-->
            <section class="section" id="section-4">
                <div class="container">
                    <h2 class="text_center">SUPPORT</h2>
                    <div class="title_red_line"></div>
                    <h4 class="sec_sub_title">FAQ</h4>
	                    <div id="btn_master_write" class="reveal action">
	                    <c:if test="${sessionScope.ad_id != null}">
	                        <a onClick="popFnQWrite();">Write</a>
	                        </c:if>
	                    </div>
                    <div id="accordian">
                        <ul>
                            <li class="accordian_dotted active reveal reveal-top">
                                <h4><span class="point_red_circle"></span> How often are new positions advertised on the site? 
                                    <span class="ico_ar">+</span></h4>
                                <ul>
                                    <li>
                                        <p>As soon as they come up. <br />
                                            It's worth visiting the site regularly to make sure you don't miss out on any new opportunities.</p>
                                    </li>
                                <!-- add -->
                                    <li class="btn_master">
                                        <a onClick="popFnQModify();" class="btn_master_modify">
                                            Modify
                                        </a>
                                        <a href="" class="btn_master_delete">
                                            Delete
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="accordian_dotted reveal reveal-top">
                                <h4><span class="point_red_circle"></span> Can I apply by post? <span class="ico_ar">+</span></h4>
                                <ul>
                                    <li>
                                        <p>As soon as they come up. <br />
                                            It's worth visiting the site regularly to make sure you don't miss out on any new opportunities.</p>
                                    </li>
                                </ul>
                            </li>
                            <li class="accordian_dotted reveal reveal-top">
                                <h4><span class="point_red_circle"></span> How will I benefit by registering my details? <span class="ico_ar">+</span></h4>
                                <ul>
                                    <li>
                                        <p>As soon as they come up. <br />
                                            It's worth visiting the site regularly to make sure you don't miss out on any new opportunities.</p>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <!-- add -->
                        <form name="FnQ_form" id="FnQ_form" enctype="multipart/form-data">
                        <div id="pop_master">
                            
                        </div>
                        </form>
                    </div>
                </div>
            </section>
            <!-- #section-4 END-->
            <!-- #section-5 START-->
            <section class="section" id="section-5">
				
                <div class="container" id="archaveList">
				<h2 class="text_center">ARCHAVE</h2>
                    <div class="title_red_line"></div>
                    <form name="archave_list"  method="get" id="archave_list">
					<input type="hidden" id="board_division" name="board_division" value="archave" />
					<input type="hidden" id="totalCnt" name="totalCnt" value="${totalCnt}">
					<input type="hidden" id="totalPage" name="totalPage" value="${totalPage}">
					<input type="hidden" id="servletPath" name="servletPath" value="${servletPath}">
					<input type="hidden" id="startPage" name="startPage" value="">
					<input type="hidden" id="visiblePages" name="visiblePages" value="">
					<input type="hidden" id="startPageList" name="startPageList" value="${startPage}">
                    <table class="reveal reveal-top">
                        <tr>
                            <th scope="col" class="th_line">No</th>
                            <th scope="col" class="th_line">Title</th>
                            <th scope="col" class="th_line">Date</th>
                            <th scope="col">File Download</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                        <c:forEach var="archave_list" items="${archave_list}"  varStatus="status">
                        <tr>
                        	<c:if test="${archave_list.board_notice == 0}">
                            <td class="notice text_center">
                            <c:set var="startpage" value="${startPage-1}" />
		                    <c:set var="statuscount" value="${status.count }" />
		                    ${totalCnt+1-(startpage*10+statuscount)}
                            </td>
                            </c:if>
                        	
                        	<c:if test="${archave_list.board_notice == 1}">
                            <td class="notice text_center">NOTICE</td>
                            </c:if>
                            
                            <td class="notice_title">${archave_list.board_title}</td>
                            <td>${archave_list.board_register_date}</td>
                            <td class="td_file"><span class="file_down"></span> EYECAP_CATALOG_pdf (9.2M)</td>
                            <td class="td_master">
                            	<c:if test="${sessionScope.ad_id != null}">
                                <a onclick="popAcModify(${archave_list.board_seq});" class="td_modify">Modify</a>
                                <a id="aDelete" class="td_delete" idx="${archave_list.board_seq}">Delete / ${archave_list.board_seq}</a>
                                </c:if>
                            </td>
                        </tr>
                        </c:forEach>
                    </table>
                      
                   <!-- add -->
                    <div id="btn_master_write" class="reveal action">
                    	<c:if test="${sessionScope.ad_id != null}">
                        <a onClick="popAcWrite();">Write</a>
                        </c:if>
                    </div>
                    <div class="reveal reveal-top board_pg">
                        <ul>
                            <li class="prev_btn" title="prev">
                            <a href="javascript:void(0);" name="page_move" id="page_first"></a>
                            </li>
                            <li id="pagination"></li>
                            <li class="next_btn" title="next">
                            <a href="javascript:void(0)" name="page_move" id="page_last"></a>
                            </li>
                        </ul>
                    </div>
                    </form> 
                    <form name="archave_form" id="archave_form" enctype="multipart/form-data">
                    <input type="text" value="${servletPath}">
                    <div id="pop_master02">
                    </div>
                    </form>
                    <!-- .form_select START-->
                    <div class="form_select text_center ">
                            <input type="hidden" name="bo_table" value="notice">
                            <input type="hidden" name="sca" value="">
                            <input type="hidden" name="sop" value="and">
                            
                            <select name="sfl" id="sfl">
                                <option value="wr_subject||wr_content">ALL</option>
                                <option value="wr_subject">Title</option>
                                <option value="wr_content">Content</option>
                            </select>
                            
                            <span class="form_text">
                                <label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
                        <form name="board_search" method="get">
                                <input type="text" id="sch_value" name="sch_value" value="${sch_value}" required class="sch_input" size="25" maxlength="20" placeholder="Please enter your search term">
                                <button type="submit" id="searchBtn" value="SEARCH" class="btn_search"><h5>Search</h5></button>
                                <input type="hidden" value="board_title" name="sch_type" />
                        </form>
                            </span>
                    </div>
                    <!-- .form_select END-->
                </div>
            </section>
            <!-- #section-5 END-->
        </div>
        <!-- TODO : Main Content -->    
        <!-- TODO : Footer -->
        <footer class="footer">
            <div class="footer-inner">
                <div class="footer_left">
                    <span>
                        <em>#1806, Windstone bldg., 275-2 Yangjae-dong Seocho-gu, Seoul, Korea.<br />
                            Representative: Jessica Lee | Business Registration No.: 124-87-47904&nbsp;&nbsp;<a id="popupLogin"><img alt="adminLogin" src="/resources/main/key.png"></a>
                        </em>
                    </span>
                </div>
                <div class="footer_right">
                    <span>
                        <em>
                            Please contact&nbsp;&nbsp;<a href="mailto:info@eyecap.kr">info@eyecap.kr</a>&nbsp;&nbsp;<a href="mailto:info@eyecap.kr" class="btn_send_mail">Send</a>&nbsp;&nbsp;for more information.
                        </em>
                    </span>
                </div>
                <p class="copyright">
                    Copyright © 2019 EyeCap International Ltd., All rights reserved.
                </p>
            </div>
        </footer>
        <!-- TODO : Footer -->

    </div>
    <!-- TODO : Wrapper -->

    <script src="http://www.xn--oy2b11av6zm9d.com/js/_Reveal.js"></script>
</body>

</html>