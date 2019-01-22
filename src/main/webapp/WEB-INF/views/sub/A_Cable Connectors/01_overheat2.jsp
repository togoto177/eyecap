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
	$("#A_li_01").attr("class","active border_bd");
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
                        <a href="">Cable Connectors</a>
                        <a href="" class="current">Product responsive to overheat</a>
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
                    Product responsive to overheat
                  </h3>
                  <ul class="product_top_gallery3">
                    <li>
                        <img src="resources/sub/A/test/11.jpg" alt="insulation cap resposive to overheat" />
                    </li>
                    <li>
                        <img src="resources/sub/A/test/22.jpg" alt="insulation cap resposive to overheat" />
                    </li>
                    <li>
                        <img src="resources/sub/A/test/33.jpg" alt="insulation cap resposive to overheat" />
                    </li>
                  </ul>
              </div>
            </section>
            <!-- #section-2 END-->
            <!-- #section-3 START-->
            <section class="section" id="sub-section-3">
                
                    <div id="sub_product_des">
                        <div class="sub_wrapper">
                            <ul class="sub_des_box03">
	                            <li class="last_merge">
	                            	<p class="sub_des_tit03">
		                            	Product Features and Benefits
		                        	</p>
		                            <p class="sub_des_des">
		                            	<em class="txt_red">01</em> Visual inspection possible for degradation due to change of
										color by insulation cap (EYECAPⓇ) and inspection tab<br />
										<em class="txt_red">02</em> Visual inspections possible for solderless state of tubular
										terminal lug part by insulation cap (EYECAPⓇ)<br />
										<em class="txt_red">03</em> Tubular terminal lug inspection tab allows for visual inspection
										of the cable connection state
		                            </p>
	                            </li>
	                            <li class="last_merge">
	                            	<p class="sub_des_tit03">
		                            	Degradation and the risks
		                        	</p>
		                            <p class="sub_des_des">
		                            	When a polymer material such as electric wire is heated, pyrolysis
										of the material starts, decomposition starts at 90℃, and gas is
										generated. Thereafter, heat accumulation proceeds inside the
										connecting material, and as the temperature of the material
										increases, smoke begins to be generated. If the temperature
										continued to rise and exceeds the ignition point, flame may be
										generated to spread to a fire.
		                            </p>
	                            </li>
                            </ul>
                            <ul class="sub_des_box02">
                                <li>
                                    <table class="table01">
                                        <tr>
                                            <td>
                                                What is REACH?
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            	It stands for Registration, Evaluation,
												Authorization and Restriction of Chemicals.
												European New Chemical Substance
												Management System and EU Regulation of
												all chemical substances handled more than
												1 ton per year in the EU.
												i.e., chemical strengthening is spreading all
												over the world including the US and China.
                                            </td>
                                        </tr>
                                    </table>
                                </li>
                                <li>
                                    <table class="table01">
                                        <tr>
                                            <td>
                                                 Risk of PVC Material
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            	Prohibited to be used as substance of
												high-risk concern, regulated by the REACH
												system (European environment regulation
												system)
												* SVHC: Substance of Very High Concern,
												hazardous substance of concern, standard is
												0.1% or less)
												* The trend is to restrict its use in special
												environments such as semiconductors
												and display production lines since it is
												classified as human “endocrine disruptor”
												(environmental hormone substance)
                                            </td>
                                        </tr>
                                    </table>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    <div id="sub_product_test">
                        <div class="sub_wrapper">
                        <h4 class="sub_des_tit">
                           Heat-resistance test 
                        </h4>
                        <ul class="sub_des_box03">
                            <li>
                            	<div class="test_center_text">
                            		<p class="sub_des_des">
                            		PVC
                            		</p>
                            	</div>
                            	<div class="test_center_text">
                            		<p class="sub_des_des">
                            		EYECAP
                            		</p>
                            	</div>
                                <img class="width2" src="resources/sub/A/test/44.jpg" alt="" />
                                <img class="width2" src="resources/sub/A/test/55.jpg" alt="" />
                                <div class="test_center_text">
                            		<p class="sub_des_des">
                            		Melting point of 90℃
                            		</p>
                            	</div>
                            	<div class="test_center_text">
                            		<p class="sub_des_des">
                            		Melting point at 250℃ or even
									above does not occur
                            		</p>
                            	</div>
                            	<img class="width2" src="resources/sub/A/test/66.jpg" alt="" />
                                <img class="width2" src="resources/sub/A/test/77.jpg" alt="" />
                            </li>
                            <li>
                                <table class="table01" style="border: none;">
                                     <tr>
                                         <td style="border-bottom: 1px solid #cccccc;">
                                              Arc Generation and the Risks
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                         	Arc is a flash discharge phenomenon that occurs in an insulator and usually
											causes the electrode to burn out. The generation of an arc varies from an
											instant to a long period of time, and the magnitude of the energizing current
											and the arc duration are the main factors of the fire. Also, arc defects can occur
											at temperatures 1,000℃ or above even with small currents. Thus, arc can be a
											direct cause of fire or it may cause a fire through insulator deterioration.
											<br /><br /><em class="txt_red" style="font-size: 11px;">Results of arc resistance test :
											Flame retardant PVC 12.3s, Flame retardant silicon 191.8s</em>
                                         </td>
                                     </tr>
                                 </table>
                            </li>  
                        </ul>
                    </div>
                </div>
                
                <div class="sub_wrapper">
                  <h4 class="sub_des_tit">
                     Comparison between PVC and EYECAPⓇ(Silicon)
                  </h4>
					<ul class="sub_des_box02">
						<li>
							<table class="table03">
							<colgroup>
								<col style="width: 40%;"/>
							<col style="width: 30%;"/>
							<col style="width: 30%;"/>
							</colgroup>
								<tr><td colspan="3">● Material properties</td></tr>
								<tr><td>Description</td><td>PVC</td><td>EYECAPⓇ (silicon)</td></tr>
								<tr><td>TM(melting point)</td><td>90 to 120℃</td><td>No dripping</td></tr>
								<tr><td>Continuous heat resistance temperature</td><td>72 to 105℃</td><td>-60 to 250℃</td></tr>
								<tr><td>Arc resistance time<em class="txt_red">*</em></td><td>14.9S</td><td>191.8S</td></tr>
								<tr><td>Dielectric breakdown voltage</td><td>max 14.1kv</td><td>max 47.9kv</td></tr>
								<tr><td colspan="3" style="font-size: 11px; text-align: left;"><em class="txt_red">*</em>Time of arc breaking due to specimen break after generation of arc between tungsten electrodes KS C 2130: 1996</td></tr>
							</table>
						</li>
						<li>
							<table class="table03">
							<colgroup>
								<col style="width: 40%;"/>
							<col style="width: 30%;"/>
							<col style="width: 30%;"/>
							</colgroup>
								<tr><td colspan="3">● Specification Characteristics</td></tr>
								<tr><td>Description</td><td>PVC</td><td>EYECAPⓇ (silicon)</td></tr>
								<tr><td>Harmful gas</td><td>Hydrogen chloride gas (Dioxin)</td><td>No harmful gas</td></tr>
								<tr><td>Environmental regulations (Europe), REACH, applies</td><td>Not meet the regulations</td><td>meet the regulations</td></tr>
								<tr><td>UL Flame Resistance Rating</td><td>VW-1</td><td>VW-1</td></tr>
								<tr><td>Rated voltage/operating temperature</td><td>600V / 105℃</td><td>600V / 150℃<em class="txt_red">**</em></td></tr>
								<tr><td colspan="3" style="font-size: 11px; text-align: left;"><em class="txt_red">**</em> by the limit of cable at lab, it’s tested up to 150℃</td></tr>
							</table>
						</li>
					</ul>
                </div>
                
                <div class="sub_wrapper">
                  <h4 class="sub_des_tit">
                    Est. 30% is caused by poor electrical connection
                  </h4>
                  <ul class="product_top_gallery">
                    <li>
                        <img src="resources/sub/A/test/88.jpg" alt="insulation cap resposive to overheat" />
                    </li>
                    <li>
                        <img src="resources/sub/A/test/99.jpg" alt="insulation cap resposive to overheat" />
                    </li>
                    <li>
                        <img src="resources/sub/A/test/10.jpg" alt="insulation cap resposive to overheat" />
                    </li>
                    <li>
                        <img src="resources/sub/A/test/101.jpg" alt="insulation cap resposive to overheat" />
                    </li>
                  </ul>
              </div>
              
              <div class="sub_wrapper" style="margin-bottom: 55px;">
                  <h4 class="sub_des_tit" style="margin-top: 55px;">
                    CertificateProduct
                  </h4>
                  <div style="width: 100%; text-align: center;">
                  	<img class="certificate" alt="img" src="resources/sub/A/test/102.jpg">
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