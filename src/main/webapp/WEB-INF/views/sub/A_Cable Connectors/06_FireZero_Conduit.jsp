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
	$("#A_li_06").attr("class","active border_bd");
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
                        <a href="" class="current">FireZero Conduit</a>
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
                    FireZero Conduit
                  </h3>
                  <ul class="product_top_gallery">
                    <li style="width: 100%; text-align: center;">
                        <img style="width: auto;" src="resources/sub/A/06/img_01.jpg" alt="insulation cap resposive to overheat" />
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
                            <ul class="sub_des_box">
                                <li>
                                    <p class="sub_des_tit02">
                                        Application
                                    </p>
                                    <p class="sub_des_des" style="margin-bottom: 30px;">
                                        Prevent fire spread through wall penetration
                                    </p>
                                    <p class="sub_des_tit02">
                                        Material
                                    </p>
                                    <p class="sub_des_des" style="margin-bottom: 30px;">
                                        Silicon
                                    </p>
                                    <p class="sub_des_tit02">
                                        Features & Benefits
                                    </p>
                                    <p class="sub_des_des">
                                        - Installed in a conduit penetrating the wall<br />
										- Easy to install<br />
										- Semi-permanent effect with one-time installation<br />
										- Superior quality control and no harmful gas<br />
										- Silicon material applied inside clean room<br />
                                    </p>
                                </li>
                                <li>
                                	<div style="width: 100%; text-align: center;">
                                	<img alt="" src="resources/sub/A/06/img_02.jpg" style="width: 80%;">
                                	</div>
                                	<table class="table03">
                                		<tr class="back_gray"><td>cap Size</td><td>D</td><td>B</td><td>H</td><td>T</td></tr>
                                		<tr><td>16C</td><td>62.6</td><td>21.6</td><td>50.0</td><td>7.2</td></tr>
                                		<tr><td>22C</td><td>68.2</td><td>27.2</td><td>50.0</td><td>7.2</td></tr>
                                		<tr><td>28C</td><td>75.2</td><td>34.2</td><td>50.0</td><td>7.2</td></tr>
                                	</table>
                                	<div style="width: 100%; font-size: 12px; text-align: left;">
                                		<a style="line-height: 1.5em; font-size: 14px;">* Customized size is also available.</a><br />
                                		<a>* all specification is subject to change for the better performance</a>
                                	</div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    <div id="sub_product_function" style="background:#f7f7f7;">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                               Obtained FM Certification
                            </h4>
                            
                            <div style="width: 100%; text-align: center;">
                            	<img style="width: 50%;" alt="" src="resources/sub/A/06/img_03.jpg">
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