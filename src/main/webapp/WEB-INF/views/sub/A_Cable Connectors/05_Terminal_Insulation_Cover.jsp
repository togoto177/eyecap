<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../include.jsp"%>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cable Connectors</title>
<script type="text/javascript">
jQuery(document).ready(function($){
	for(var j = 1; j < 10; j++){
		$("#A_li_0"+j).attr("class", "border_bd");
	}
	$("#A_li_05").attr("class","active border_bd");
});
</script>
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
                        <a href="">Cable Connectors</a>
                        <a href="" class="current">Terminal Insulation Cover</a>
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
                    Terminal Insulation Cover
                  </h3>
                  <ul class="product_top_gallery2">
                    <li>
                        <img src="resources/sub/A/05/img_01.jpg" alt="insulation cap resposive to overheat img1" />
                    </li>
                    <li>
                        <img src="resources/sub/A/05/img_02.jpg" alt="insulation cap resposive to overheat img2" />
                    </li>
                  </ul>
              </div>
            </section>
            <!-- #section-2 END-->
            <!-- #section-3 START-->
            <section class="section" id="sub-section-3">
                    <div id="sub_product_des">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                                Product Description
                            </h4>
                            <ul class="sub_des_02">
                            	<li>Low pressure MCCB Secondary BUS & terminal connection
								BUS insulation tube for temperature change to
								prevent electric accident</li>
                            </ul>
                            <ul class="sub_des_box" style="text-align: center;">
                            	<li>
                                	<img style="width: 100%;" alt="features1" src="resources/sub/A/05/img_03.jpg">
                                	<table class="table03">
                                		<tr class="back_gray"><td>Size</td><td>B</td><td>L</td><td>H</td></tr>
                                		<tr><td>300</td><td>30.8</td><td>213</td><td>74</td></tr>
                                	</table>
                                	<div style="width: 100%; font-size: 12px; text-align: left;">
                                		<a style="line-height: 1.5em; font-size: 14px;">* Customized size is also available.</a><br />
                                		<a>※ T - Average thickness ±10%. All other dimensions are restricted to ±15% tolerance.
Specification may change without prior notification for better performance</a>
                                	</div>
                                </li>
                                <li>
                                	<img style="width: 60%;" alt="features1" src="resources/sub/A/05/img_04.jpg">
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    <div id="sub_product_function" style="background:#f7f7f7;">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                               Benefits
                            </h4>
                            
                            <p class="sub_des_des02" style="line-height: 1.5em">
                                01 Prevent electric shock during inspection and operational work <br />
								02 Prevent blackout due to short circuit/ground fault<br />
								03 Reduce investment cost by using BUS insulation tube without using existing eye cap<br />
								04 No deformation as a silicon product with heat resistance 250℃ or higher
                            </p>
			                  
                            
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