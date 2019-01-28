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
	$("#A_li_07").attr("class","active border_bd");
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
                        <a href="A_07.do" class="current">FireZero Panel Mat</a>
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
                    FireZero Panel Mat
                  </h3>
                  <ul class="product_top_gallery" style="text-align: center;">
                    <li>
                        <img src="resources/sub/A/07/img_01.jpg" alt="insulation cap resposive to overheat" />
                    </li>
                    <li>
                        <img src="resources/sub/A/07/img_02.jpg" alt="insulation cap resposive to overheat" />
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
                                Fire test
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_test">
                                Installation
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
                                        application
                                    </p>
                                    <p class="sub_des_des" style="margin-bottom: 30px;">
                                        Prevent inflow of foreign substances to upper/
lower part of a panel and prevent fire spread 
                                    </p>
                                    <p class="sub_des_tit02">
                                        Material
                                    </p>
                                    <p class="sub_des_des" style="margin-bottom: 30px;">
                                        Silicon + expansion agent (foaming strip)
                                    </p>
                                    <p class="sub_des_tit02">
                                        Features & Benefits
                                    </p>
                                    <p class="sub_des_des">
                                        - Finished product type per panel top / bottom specification<br />
										- Easy to install by anyone<br />
										- Semi-permanent use with one-time installation	(convenient for repeated replacing of cables)<br />
										- Superior quality control<br />
										- Superior panel waterproof function
                                    </p>
                                </li>
                                <li>
                                	<p class="sub_des_tit02">
                                        Drawings / Specifications
                                    </p>
                                	<div style="width: 100%; text-align: center;">
                                	<img alt="" src="resources/sub/A/07/img_03.jpg" style="width: 80%;">
                                	</div>
                                	<table class="table03">
                                		<tr class="back_gray"><td>Tray Size</td><td>W</td><td>D</td><td>H</td><td>T</td></tr>
                                		<tr><td>A-type(p40)</td><td>380</td><td>180</td><td>25</td><td>10</td></tr>
                                		<tr><td>B-type(p120)</td><td>1080</td><td>170</td><td>25</td><td>10</td></tr>
                                	</table>
                                	<div style="width: 100%; font-size: 12px; text-align: left;">
                                		<a style="line-height: 1.5em; font-size: 14px;">* Customized size is also available.</a><br />
                                		<a>* all specification is subject to change for the better performance</a>
                                	</div>
                                </li>
                            </ul>
                            <p class="txt_test_guide" style="margin-bottom: 30px;">
                                Test Report
                            </p>
                            <div style="width: 100%; text-align: center;">
                            	<img alt="" src="resources/sub/A/07/img_04.jpg" style="width: 20%;">
                            </div>
                        </div>
                    </div>
                    
                    <div id="sub_product_function" style="background:#f7f7f7;">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                               Fire test
                            </h4>
                            <ul class="sub_des_box02">
                            	<li class="widthFull">
                            		<table class="table03">
                            		<colgroup>
									    <col width="25%"/>
									    <col width="25%"/>
									    <col width="25%"/>
									    <col width="25%"/>
									  </colgroup>
                                		<tr class="back_gray"><td>Product</td><td>Before the test</td><td>During the test</td><td>After the test</td></tr>
                                		<tr>
                                			<td><img alt="" src="resources/sub/A/07/img_05.jpg" style="width: 100%;"></td>
                                			<td><img alt="" src="resources/sub/A/07/img_06.jpg" style="width: 100%;"></td>
                                			<td><img alt="" src="resources/sub/A/07/img_07.jpg" style="width: 100%;"></td>
                                			<td><img alt="" src="resources/sub/A/07/img_08.jpg" style="width: 100%;"></td>
                                		</tr>
                                		<tr>
                                			<td colspan="2">- Structural testing similar to fire (TFR-CV cable 95SQ 3C)<br />
                                			- Fire spreads itself after 3 minutes of heating.</td>
                                			<td colspan="2">- The foam strip attached to the panel mat
                                			 does not expand to the outside of the panel.</td>
                                		</tr>
                                	</table>
                            	</li>
                            </ul>
			                  
                            
                        </div>
                    </div>
                    
                    <div id="sub_product_test">
                    	<div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                                Installation
                            </h4>
                            
                            <ul class="sub_des_box">
                                <li>
                                    <img alt="" src="resources/sub/A/07/img_09.jpg" style="width: 100%;">
                                </li>
                                <li>
                                	<p class="sub_des_tit02">
                                        Features & Benefits
                                    </p>
                                	<p class="sub_des_des">
                                        1. Fire prevention<br />
										2. Waterproof panel top<br />
										3. Improve construction efficiency<br />
										&ensp;• Efficient departmental finishing on the upper part of the panel<br />
										&ensp;• Reduce the risk of safety accidents during operation<br />
										4. Installation on the panel eliminates the need for on-site machining and processing <br />
										5. Top caps are freely removable and reusable<br />
										6. Cap flexibility allows for installation at various angles
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