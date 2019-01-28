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
		$("#A_li_0"+j).attr("class", "border_bd");
	}
	$("#A_li_04").attr("class","active border_bd");
});
</script>
<title>Cable Connectors</title>
</head>
<body>

<div id="wrapper">
        <jsp:include flush="true" page="../headerSub.jsp"></jsp:include>

        <!-- TODO : Main Content -->
        <div class="sub-main-content">
            <section class="section" id="sub-section-1">     
              <div class="sub_top_visual">
                  <div class="sub_wrapper">
                      <h2 class="sub_title">
                        Cable Connectors
                      </h2>
                      <div class="location">
                        <a href="/" class="home">Home</a>
                        <a href="">Products</a>
                        <a href="A_01.do">Cable Connectors</a>
                        <a href="A_04.do" class="current">Washer responsive to overheat</a>
                      </div>
                  </div>
              </div>
              
              <jsp:include flush="true" page="../sub_menu.jsp"></jsp:include> 
              
            </section>
            <!-- #section-1 END-->
            <!-- #section-2 START-->
            <section class="section" id="sub-section-2">
              <div class="sub_wrapper">
                  <h3 class="sub_content_title">
                    Washer responsive to overheat
                  </h3>
                  <ul class="product_top_gallery">
                    <li>
                        <img src="resources/sub/A/A_04/img_01.jpg" alt="insulation cap resposive to overheat img1" />
                    </li>
                    <li>
                        <img src="resources/sub/A/A_04/img_02.jpg" alt="insulation cap resposive to overheat img2" />
                    </li>
                  </ul>
              </div>
            </section>
            <!-- #section-2 END-->
            <!-- #section-3 START-->
            <section class="section" id="sub-section-3">
            
            	<div id="sub_product_function" style="background:#f7f7f7;">
                      <div class="sub_wrapper">
                      	<div style="text-align: center; margin-bottom: 55px;">
                      	<img style="width: 70%;" class="one_img" alt="img" src="resources/sub/A/A_04/img_03.png">
                      	</div>
                          <p class="sub_des_des02">
                              - Color changes at 50℃<br><br>
                              - Possible for anyone to inspect with naked eye and inspector's fast judgment<br><br>
                              &emsp;&raquo; Inspection with the naked eye is possible without any other equipment
                          </p>
                      </div>
                  </div>
                 
                    <div id="sub_product_des">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                                EYECAP-WT-Washer for Overheat detection
                            </h4>
                            <ul class="sub_des_box03">
	                            <li class="last_merge">
	                            	<p class="sub_des_tit03">
		                            	Product Features
		                        	</p>
		                            <p class="sub_des_des">
		                            	<em class="txt_red">01</em> Detect the deterioration of the terminal lug part by processing the temperature
										sensing function outside the washer<br />
										<em class="txt_red">02</em> Detect the deterioration of all connecting
										parts connected with bolts (bus duct, bus
										bar, switchboard, etc.)
		                            </p>
	                            </li>
                            </ul>
                            <ul class="sub_des_box02">
		                        <li class="widthFull2">
		                            <div class="leftBox_3">
			                            <div style="width: 100%; text-align: center;">
			                            <img style="width: 30%;" alt="img" src="resources/sub/A/A_04/img_04.png">
			                            </div>
			                            
			                         </div>
			                         <div class="leftBox_3" id="tableTop2">
			                         	<table class="table03" style="margin:0;">
			                               <tr><td style="background:gray;">Size(PI)</td><td>8∅</td><td>10∅</td><td>12∅</td><td>14∅</td><td>16∅</td></tr>
			                               <tr><td colspan="6">COLOR : BK(Black), R(Red),B(Blue),Y(Yellow)</td></tr>
			                            </table>
			                            <p class="sitText" style="margin-top:3%; text-align: left;">
			                            	※T - Average thickness ±10% All other dimensions are restricted to ±15% tolerance.<br />
											&emsp;Specification may change without prior notification for better performance.
			                            </p>
		                            </div>
			                    </li>
		                    </ul>
                        </div>
                        
                        <div id="sub_product_function">
		                   	<div class="btnDiv1">
		            			<a class="btnCap" id="priceBtn">PriceList Washer</a>
		            		</div>
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