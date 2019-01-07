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
	$("#B_li_05").attr("class","active border_bd");
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
                        Fire Products
                      </h2>
                      <div class="location">
                        <a href="/" class="home">Home</a>
                        <a href="">Products</a>
                        <a href="">Firestop Products</a>
                        <a href="" class="current">Wallpenetration - PVC Pipe</a>
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
                    Wallpenetration - PVC Pipe
                  </h3>
                  <ul class="product_top_gallery">
                    <li class="width3">
                        <img src="resources/sub/B/05/img_01.jpg" alt="insulation cap resposive to overheat img1" />
                    </li>
                    <li class="width3">
                        <img src="resources/sub/B/05/img_02.jpg" alt="insulation cap resposive to overheat img2" />
                    </li>
                    <li class="width3">
                        <img src="resources/sub/B/05/img_03.jpg" alt="insulation cap resposive to overheat img2" />
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
                                 Sidewall penetrating panel of PVC Pipe
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
                                Sidewall penetrating panel of PVC Pipe
                            </h4>
                            <ul class="sub_des_box">
                                <li>
                                    <p class="sub_des_tit02">
                                        Features and Benefits
                                    </p>
                                    <p class="sub_des_des">
                                        01. It is a standardized product that allows anyone to easily carry out their jobs.<br />
										02. Outstanding flame barrier due to integrated type of FB STRIP (Firestop strip)<br />
										03. Silicon-applied fixed socket does not cause toxic gas from FIREZERO and its accessory in event of fire<br />
                                    </p>
                                </li>
                                <li>
                                    <p class="sub_des_tit02">
                                        CONFIGURATION
                                    </p>
                                    <p class="sub_des_des">
                                        01. Clean up pipe and sleeve.<br />
										02. Roll the pipe with FIREZERO and insert it into the opening.<br />
										03. Secure FIREZERO with clip<br />
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
                                        Sidewall less than PVC 100A
                                    </p>
                                	<img style="width: 100%;" src="resources/sub/B/05/img_04.jpg" alt="insulation cap resposive to overheat img2" />
                                	<p class="sub_des_tit02">
                                    </p>
                                	<p class="sub_des_des">
                                        1. Check the specification of a penetrating sleeve<br />
										2. Put a Firezero Cap on the pipe.<br />
										3. Fix the Firezero Cap using a clip.<br />
										4. Insert the Firezero Cap until it reaches to the sidewall (Work on both sides)
                                    </p>
                                </li>
                                <li>
                                	<p class="sub_des_tit02">
                                        Sidewall PVC less than 125-200A
                                    </p>
                                	<img style="width: 100%;" src="resources/sub/B/05/img_05.jpg" alt="insulation cap resposive to overheat img2" />
                                	<p class="sub_des_tit02">
                                    </p>
                                	<p class="sub_des_des">
                                        1. Check the opening<br />
										2. Roll the pipe with Firestop strip (100mm*8t*2 folds) and secure it with tape.<br />
										3. Insert the Firestop strip into the sidewall.<br />
										4. Secure the Firestop board on to the sidewall with direct coupling screw. (Work on both sides)<br />
										5. Apply Firestop sealant to the points where pipelines and the Firestop board meet, and the sidewall and the Firestop board meet.
                                    </p>
                                </li>
                            </ul>
                        <div><a style="color: red;">※  Product appearance is subject to change upon a new certificate for performance upgrade.</a></div>
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