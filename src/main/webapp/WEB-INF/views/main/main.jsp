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
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>EyeCapInternational</title>
	<link rel="canonical" href="http://eyecap.kr/">
	<meta name="description" content="EyeCapInternational">
	<meta name="Keywords" content="eyecap, EyeCapInternational, eyecapinternational, eyecapkorea">
	<meta property="og:type" content="website">
	<meta property="og:title" content="EyeCapInternational">
	<meta property="og:description" content="EyeCapInternational">
	<meta property="og:url" content="http://eyecap.kr/">
	<script type="text/javascript">
 	jQuery(document).ready(function() {
		$.ajax({ 
			type: 'post' , 
			url: '/archaveList.do',
			cache : false,
			dataType : 'html' ,
			success: function(data) {
	//			$('#pagination').empty();
				$('#archaveList').html(data).trigger("create");
	//			history.go(-1);
	//			$("#pagination").append(pagination);
			} 
		});
		$.ajax({ 
			type: 'post' , 
			url: '/fnqList.do',
			cache : false,
			dataType : 'html' ,
			success: function(data) {
	//			$('#pagination').empty();
				$('#fnqList').html(data).trigger("create");
	//			history.go(-1);
	//			$("#pagination").append(pagination);
			} 
		});	
	}); 
	
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
                    <a href="http://eyecapkorea.com/index.php" class="lnk-moving1 radius_menu" target="blank">EYECAPKOREA</a>
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
                      <img style="height: 100%; width: 100%;" src="resources/main/main_slide_01.jpg" alt="main-slider01" />
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
                      <img style="height: 100%; width: 100%;" src="resources/main/main_slide_02.jpg" alt="main-slider02" />
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
                    <form name="login_form" id="login_form">
                    <c:if test="${sessionScope.corp_id == null}">
                    <div class="product_login">
                    	<input type="hidden" id="loginDivision" name="loginDivision" value=corpUserLogin />
                        <input type="text" id="user_id" name="corp_id" placeholder="ID: Price require"/>
                        <a id="login_btn">Login</a>
                    </div>
                    </c:if>
                    <c:if test="${sessionScope.corp_id != null}">
                    <div class="product_login">
                    	유저 로그인 성공!!<br>
                    	${sessionScope.corp_id}, 님 환영합니다.<br>
                    	${sessionScope.corp_name}, 업체 환영합니다.<br>
                    	${sessionScope.corp_country}, 나라 환영합니다.<br>
                    	${sessionScope.corp_division}, 등급이십니다.
                    </div>
                    </c:if>
                    </form>
                    
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
                            <a href="B_01.do">More Products &gt;</a>
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
                            <a class="click_btn" href="/references.do">
                                Click <span class="click_right_arrow"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- #section-3 END-->
            <!-- #section-4 START-->
            <section class="section" id="section-4">
                <div class="container" id="fnqList">
                    
                </div>
            </section>
            <!-- #section-4 END-->
            <!-- #section-5 START-->
            <section class="section" id="section-5">
				
                <div class="container" id="archaveList">
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