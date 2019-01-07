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
	$("#A_li_08").attr("class","active border_bd");
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
                        <a href="" class="current">FireZero Tray Mat</a>
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
                    FireZero Tray Mat
                  </h3>
                  <ul class="product_top_gallery" style="text-align: center;">
                    <li style="width: 100%; text-align: center;">
                        <img style="width: auto;" src="resources/sub/A/08/img_01.jpg" alt="insulation cap resposive to overheat" />
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
                                Product Description
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_function">
                                Cable Tray Fire Test
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
                                Product Description
                            </h4>
                            <ul class="sub_des_box">
                                <li>
                                    <p class="sub_des_tit02">
                                        Application
                                    </p>
                                    <p class="sub_des_des" style="margin-bottom: 30px;">
                                        Cable tray fire prevention
                                    </p>
                                    <p class="sub_des_tit02">
                                        Features and Benefits
                                    </p>
                                    <p class="sub_des_des">
                                        - Excellence in Firestop by the expansion agent (foaming strip)<br />
										- Finished product type by cable tray size<br />
										- Easy to install<br />
										- Semi-permanent effect with one-time installation<br />
										- Superior quality control<br />
										- Can be applied inside FAB with silicon material
                                    </p>
                                </li>
                                <li>
                                	<p class="sub_des_tit02">
                                        Drawings / Specifications
                                    </p>
                                	<div style="width: 100%; text-align: center;">
                                	<img alt="" src="resources/sub/A/08/img_02.jpg" style="width: 80%;">
                                	</div>
                                	<table class="table03">
                                		<tr class="back_gray"><td>Tray Size</td><td>W</td><td>L</td><td>H</td><td>Remarks</td></tr>
                                		<tr><td>300*100</td><td>406</td><td>346</td><td>320</td><td>Standard size</td></tr>
                                		<tr><td>400*100</td><td>556</td><td>496</td><td>470</td><td rowspan="3">Customized size<br />production</td></tr>
                                		<tr><td>600*100</td><td>706</td><td>646</td><td>620</td></tr>
                                		<tr><td>900*100</td><td>1006</td><td>946</td><td>920</td></tr>
                                	</table>
                                	<div style="width: 100%; font-size: 12px; text-align: left;">
                                		<a style="line-height: 1.5em; font-size: 14px;">* Specification: 300 * 100 standard size / 450 ~ 900: customized size</a><br />
                                		<a>* all specification is subject to change for the better performance</a>
                                	</div>
                                </li>
                            </ul>
                            <p class="txt_test_guide" style="margin-bottom: 30px;">
                                Test Report
                            </p>
                            <div style="width: 100%; text-align: center;">
                            	<img alt="" src="resources/sub/A/08/img_03.jpg" style="width: 20%;">
                            </div>
                        </div>
                    </div>
                    
                    <div id="sub_product_function" style="background:#f7f7f7;">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                               Cable Tray Fire Test
                            </h4>
                            <ul class="product_top_gallery" style="text-align: center;">
			                    <li>
			                        <img src="resources/sub/A/08/img_04.jpg" alt="insulation cap resposive to overheat" />
			                    </li>
			                    <li>
			                        <img src="resources/sub/A/08/img_05.jpg" alt="insulation cap resposive to overheat" />
			                    </li>
			                  </ul>
                            <ul class="sub_des_box02">
                            	<li class="widthFull">
                            		<table class="table03">
                                		<tr class="back_gray">
                                			<td>Before the test</td>
                                			<td>During the test</td>
                                			<td>After the test</td>
                                		</tr>
                                		<tr>
                                			<td><img alt="" src="resources/sub/A/08/img_06.jpg" style="width: 100%;"></td>
                                			<td><img alt="" src="resources/sub/A/08/img_07.jpg" style="width: 100%;"></td>
                                			<td><img alt="" src="resources/sub/A/08/img_08.jpg" style="width: 100%;"></td>
                                		</tr>
                                		<tr>
                                			<td colspan="3" style="text-align: left; padding: 15px;">- After 3 minutes of heating, the fireproof bottom cable is completely burned.<br />
											- After 10 minutes of heating, the cover of the fireproof bottom cable is completed burned
											and then extinguished by itself, causing no fire spread to the top of fireproof material.</td>
                                		</tr>
                                	</table>
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