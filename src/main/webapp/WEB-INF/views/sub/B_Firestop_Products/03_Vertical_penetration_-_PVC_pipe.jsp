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
	$("#B_li_03").attr("class","active border_bd");
});
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
                        <a href="" class="current">Vertical penetration - PVC pipe</a>
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
                    Vertical penetration - PVC pipe
                  </h3>
                  <ul class="product_top_gallery">
                    <li>
                        <img src="resources/sub/B/03/img_01.jpg" alt="insulation cap resposive to overheat img1" />
                    </li>
                    <li>
                        <img src="resources/sub/B/03/img_02.jpg" alt="insulation cap resposive to overheat img2" />
                    </li>
                  </ul>
              </div>
            </section>
            <!-- #section-2 END-->
            <!-- #section-3 START-->
            <section class="section" id="sub-section-3">
                <div class="sub_wrapper5">
                    <ol class="product_des_tab">
                        <li class="tab_active">
                            <a href="#sub_product_des">
                                 FIREZERO CAP - vertical penetration -PVC pipe
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_function">
                                PVC PIPE SYSTEM CONFIGURATION
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_test">
                                 PVC PIPE SYSTEM CONFIGURATION
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_test">
                                 FB STRIP SYSTEM CONFIGURATION
                            </a>
                        </li>
                    </ol>
                </div>
                    <div id="sub_product_des">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                                FIREZERO CAP - vertical penetration -PVC pipe
                            </h4>
                            <ul class="sub_des_box">
                                <li>
                                    <p class="sub_des_tit02">
                                        Features and Benefits
                                    </p>
                                    <p class="sub_des_des">
                                        01. Firestop sealants other than FIRE ZERO are not required.<br />
										02. Silicon-applied fixed terminal does not cause toxic gas from FIREZERO and its accessory in event of fire<br />
										03. Silicon-applied fixed terminal prevents toxic gas or fire from being spread because the silicon completely seals gap between sleeve and pipe.
                                    </p>
                                </li>
                                <li>
                                    <p class="sub_des_tit02">
                                        How to install
                                    </p>
                                    <p class="sub_des_des">
                                        01. Clean up pipe and sleeve.<br />
										02. Roll the pipe with FIRE ZERO and insert it into the bottom of the sleeve<br />
										03. FastenFIREZERO with the bolt.
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    
                    <div id="sub_product_function">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                               PVC PIPE SYSTEM CONFIGURATION
                            </h4>
                            
                            <ul class="sub_des_box">
                                <li>
                                	<p class="sub_des_tit02">
                                        Floor PVC less than 100A
                                    </p>
                                	<img style="width: 100%;" src="resources/sub/B/03/img_03.jpg" alt="insulation cap resposive to overheat img2" />
                                	<p class="sub_des_tit02">
                                    </p>
                                	<p class="sub_des_des">
                                        1. Check the specification of a penetrating sleeve.<br />
										2. Put a Firezero Cap around the pipe.<br />
										3. Fix the Firezero Cap using bolt, nut, and washer.tape and insert it inside
                                    </p>
                                </li>
                                <li>
                                	<p class="sub_des_tit02">
                                        Floor PVC less than 125-200A
                                    </p>
                                	<img style="width: 100%;" src="resources/sub/B/03/img_04.jpg" alt="insulation cap resposive to overheat img2" />
                                	<p class="sub_des_tit02">
                                    </p>
                                	<p class="sub_des_des">
                                        1. Check the opening.<br />
										2. Secure the Firestop board on the slab ceiling with direct coupling screw.<br />
										3. Roll the pipe with Firestop strip (80mm*8t*3 folds) and secure it with<br />		
										4. Secure the Firestop board on the slab bottom with direct coupling screw<br />
										5. Apply Firestop silicon to pipe, Firestop board, and contact area of floor and 
										     the Firestopboard
                                    </p>
                                </li>
                             </ul>
                        </div>
                    </div>
                    <div id="sub_product_function">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                                PVC PIPE SYSTEM CONFIGURATION    
                            </h4>
                        
                        <ul class="sub_des_box03">
                            <li style="padding: 20px;">
                                <img src="resources/sub/B/03/img_05.jpg" alt="" />
                            </li>
                            <li style="padding: 20px;">
                            	<p class="sub_des_tit02" style="position: absolute;">
                                        Floor PVC less than 100A 
                                </p>
                                <img style="height: 89%;" src="resources/sub/B/03/img_06.jpg" alt="" />
                            </li>
                            <li class="last_merge" style="background: #e2e2e2; text-align: left; margin-top: 0;">
                                <p class="sub_des_des">
                                    1. Check the specification of a penetrating sleeve.<br />
									2. Roll the pipe with Firestop jacket and make it firmly attached to the pipe and secure them with a bolt.<br />
									3. Secure the Firestop board on the slab ceiling with pins.
                                </p>
                            </li>
                        </ul>
                        </div>
                    </div>
                    
                    <div id="sub_product_function" style="padding-bottom: 0; margin-bottom: 0;">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                                FB STRIP SYSTEM CONFIGURATION 
                            </h4>
                        
                        
                        <ul class="sub_des_box03">
                            <li style="padding: 20px;">
                                <img src="resources/sub/B/03/img_07.jpg" alt="" />
                            </li>
                            <li style="padding: 20px;">
                            	<p class="sub_des_tit02" style="position: absolute;">
                                        Floor PVC
                                </p>
                                <img style="height: 89%;" src="resources/sub/B/03/img_08.jpg" alt="" />
                            </li>
                            <li class="last_merge" style="background: #e2e2e2; text-align: left; margin-top: 0;">
                                <p class="sub_des_des">
                                    1. Cover the drainpipe sleeve with Firestop strip and make them secured and tightened with waterproof tape.<br />
									2. Concrete is deposited.
                                </p>
                            </li>
                        </ul>
                        </div>
                    </div>
                    <div class="sub_wrapper" style="margin-bottom: 70px;">
                    <div><a style="color: red;">※ Product appearance is subject to change upon a new certificate for performance upgrade.</a></div>
                    </div>
            </section>
            <!-- #section-3 END-->
        </div>
        <!-- TODO : Main Content -->    
        
        <jsp:include flush="true" page="../footer.jsp"></jsp:include> 
        
    </div>

</body>
</html>