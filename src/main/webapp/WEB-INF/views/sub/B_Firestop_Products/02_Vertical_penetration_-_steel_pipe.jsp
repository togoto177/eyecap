<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../include.jsp"%>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
jQuery(document).ready(function($){
	for(var j = 1; j < 10; j++){
		$("#B_li_0"+j).attr("class", "border_bd");
	}
	$("#B_li_02").attr("class","active border_bd");
});
</script>
</script>
<title>Fire Products</title>
</head>
<body>

<div id="wrapper">
        <jsp:include flush="true" page="../headerSub.jsp"></jsp:include>

        <!-- TODO : Main Content -->
        <div class="sub-main-content">
            <section class="section" id="sub-section-1">     
              <div class="sub_top_visual2">
                  <div class="sub_wrapper">
                      <h2 class="sub_title">
                        Cable Connectors
                      </h2>
                      <div class="location">
                        <a href="/" class="home">Home</a>
                        <a href="">Products</a>
                        <a href="">Firestop Products</a>
                        <a href="" class="current">Vertical penetration - steel pipe</a>
                      </div>
                  </div>
              </div>
              
              <jsp:include flush="true" page="../sub_menuB.jsp"></jsp:include> 
              
            </section>
            <!-- #section-1 END-->
            <!-- #section-2 START-->
            <section class="section" id="sub-section-2">
              <div class="sub_wrapper">
                  <h3 class="sub_content_title">
                    Vertical penetration - steel pipe
                  </h3>
                  <ul class="product_top_gallery">
                    <li>
                        <img src="resources/sub/B/02/img_01.jpg" alt="insulation cap resposive to overheat img1" />
                    </li>
                    <li>
                        <img src="resources/sub/B/02/img_02.jpg" alt="insulation cap resposive to overheat img2" />
                    </li>
                  </ul>
              </div>
            </section>
            <!-- #section-2 END-->
            <!-- #section-3 START-->
            <section class="section" id="sub-section-3">
                <div class="sub_wrapper">
                    <ol class="product_des_tab">
                        <li class="tab_active">
                            <a href="#sub_product_des">
                                 Vertical penetration panel of steel pipe
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_function">
                                CONFIGURATION
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_test">
                                 --
                            </a>
                        </li>
                    </ol>
                </div>
                    <div id="sub_product_des">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                                Vertical penetration panel of steel pipe
                            </h4>
                            <ul class="sub_des_box">
                                <li>
                                    <p class="sub_des_tit02">
                                        Features and Benefits
                                    </p>
                                    <p class="sub_des_des">
                                        01. No need of thermal insulation material for a pipe that has an external diameter less than 60.5mm (SUS 60A).<br />
										02. No toxic gas from FIREZERO and its accessory in event of firethanks to Silicon-applied fixed terminal.<br />
										03. No toxic gas or firebeing spread thanks to silicon-applied fixed terminalbecause the silicon completely seals the gap between sleeve and pipe.<br />
										04. Outstanding flame barrier due to integrated type of FB STRIP (Firestop strip)
                                    </p>
                                </li>
                                <li>
                                    <p class="sub_des_tit02">
                                        Installation Guide
                                    </p>
                                    <p class="sub_des_des">
                                        01. Please comply with the table of sleeve standard  (Move on click)<br />
										02. It allows you to save not only labour cost, but efforts for troubleshooting caused by eccentricity if you install FIREZEROalong with setting up riser pipeline and sidewall 
										        penetrating pipeline.<br />
										03. Pipe sleeves and pipe clamps work best when they are used together to fix riser pipeline because they will make the new installation more secure, and they will help you 
										        to save cost and achieve quality work.
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    
                    <div id="sub_product_function">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                               CONFIGURATION
                            </h4>
                            
                            <ul class="sub_des_box">
                                <li>
                                	<p class="sub_des_tit02">
                                        Floor STEEL less than 50A
                                    </p>
                                	<img style="width: 100%;" src="resources/sub/B/02/img_03.jpg" alt="insulation cap resposive to overheat img2" />
                                	<p class="sub_des_tit02">
                                    </p>
                                	<p class="sub_des_des">
                                        1. Check the specification of a penetrating sleeve.<br />
										2. Put a Firezero Cap around the pipe.<br />
										3. Fix the Firezero Cap using bolt, nut, and washer.
                                    </p>
                                </li>
                                <li>
                                	<p class="sub_des_tit02">
                                        Floor STEEL less than 65~100A
                                    </p>
                                	<img style="width: 100%;" src="resources/sub/B/02/img_04.jpg" alt="insulation cap resposive to overheat img2" />
                                	<p class="sub_des_tit02">
                                    </p>
                                	<p class="sub_des_des">
                                        1. Check the specification of penetrating sleeve.<br />
										2. Put a Firezero Cap around a pipe.<br />
										3. Fix the Firezero Cap using bolt, nut, and washer<br />
										4. Install glass wool pipe cover(24kg/m3 40t) to a point 200mm above the floor
                                    </p>
                                </li>
                             </ul>
                             
                             <ul class="sub_des_box">
                                <li>
                                	<p class="sub_des_tit02">
                                        Floor STEEL less than 125 – 150A
                                    </p>
                                	<img style="width: 100%;" src="resources/sub/B/02/img_05.jpg" alt="insulation cap resposive to overheat img2" />
                                	<p class="sub_des_tit02">
                                    </p>
                                	<p class="sub_des_des">
                                        1. Check the specification of a penetrating sleeve.<br />
										2. Roll the pipe with HB MAT(100kg/m3 2t)30mm and insert it  into the sleeve bottom.<br />
										3. Put a Firezero Cap around the pipe.<br />
										4. Fix the Firezero Cap using bolt, nut, and washer.
                                    </p>
                                </li>
                                <li>
                                	<p class="sub_des_tit02">
                                        Floor STEEL less than 200A
                                    </p>
                                	<img style="width: 100%;" src="resources/sub/B/02/img_06.jpg" alt="insulation cap resposive to overheat img2" />
                                	<p class="sub_des_tit02">
                                    </p>
                                	<p class="sub_des_des">
                                        1. Check the specification of a penetrating sleeve.<br />
										2. Put a Firezero Cap around the pipe<br />
										3. Apply Firestop silicon to pipe, Firezero Cap, and contact area of floor and 
										     the Firezero Cap<br />
										4. Install mineral wool pipe cover (100kg/m3 40t) to a point 600mm
                                    </p>
                                </li>
                             </ul>
                        </div>
                    </div>
                    
            </section>
            <!-- #section-3 END-->
        </div>
        <!-- TODO : Main Content -->    
        
        <jsp:include flush="true" page="../footer.jsp"></jsp:include> 
        
    </div>

</body>
</html>