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
	$("#A_li_02").attr("class","active border_bd");
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
                        <a href="" class="current">Insulation cap responsive to overheat</a>
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
                    Insulation cap responsive to overheat
                  </h3>
                  <ul class="product_top_gallery">
                    <li>
                        <img src="resources/sub/A/02/product_02_01.jpg" alt="insulation cap resposive to overheat img1" />
                    </li>
                    <li>
                        <img src="resources/sub/A/02/product_02_02.jpg" alt="insulation cap resposive to overheat img2" />
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
                                Product features
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_function">
                                Material characteristics
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_test">
                                Features of the specifications
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_test">
                                EYECAP-SI
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_test">
                                EYECAP-SIT(동관단자용)
                            </a>
                        </li>
                    </ol>
                </div>
                    <div id="sub_product_des">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                                Importance of overheat detection
                            </h4>
                            <ul class="sub_des_01">
                            	<li><a>&middot;</a> UL 224-The Standard for Extruded Electrical Tubing</li>
                            	<li><a>&middot;</a> RoHS DIRECTIVE 2011/65/EU.</li>
                            	<li><a>&middot;</a> Regulation(EC)</li>
                            </ul>
                            <ul class="sub_des_02">
                            	<li>01. It allows labor, supervisor, and manager to perform a visual inspection and helps them to prevent incidents in advance.</li>
                            	<li>02. Silicon and special dye allow it to cope with overheaton cable connection.</li>
                            	<li>03. The transparency on the other end allows users to check compression on terminal lug.</li>
                            	<li>04. It is made of heat-resistant materials that prevent fire incidents including an event of ARC and overheat.</li>
                            	<li>05. It is capable of triple fire prevention if an insulation cap is applied with a copper terminal lug and a washer responsive to overheat.</li>
                            </ul>
                            <ul class="sub_des_box">
                                <li class="li2">
                                	<img alt="features1" src="resources/sub/A/02/features_01.jpg">
                                </li>
                                <li class="li2">
                                	<img alt="features2" src="resources/sub/A/02/features_02.jpg">
                                </li>
                                <li class="li2">
                                	<img alt="features3" src="resources/sub/A/02/features_03.jpg">
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    
                    <div id="sub_product_function">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                               Material characteristics
                            </h4>
                            
                            <ul class="sub_des_box02">
                            	<li class="widthFull">
                            		<table class="table03">
                                      <tr>
                                        <td class="color">Classification</td>
                                        <td>TM(Temperature of Meltdown)</td>
                                        <td>Continuous Heat-resistance temperature</td>
                                        <td>Internal ARC time</td>
                                        <td>Dielectric breakdown voltage</td>
                                      </tr>
                                      <tr>
                                        <td class="color">EYE CAP(PVP)</td>
                                        <td>90~120ºC</td>
                                        <td>72~105ºC</td>
                                        <td>14.9S</td>
                                        <td>max 34.1kv</td>
                                      </tr>
                                      <tr>
                                        <td class="color">EYECAP-SIT(SILCON)</td>
                                        <td></td>
                                        <td>-60~315ºC</td>
                                        <td>191.8S</td>
                                        <td>max 47.9kv</td>
                                      </tr>
                                    </table>
                            	</li>
                            	<li class="widthFull">
	                            	<p class="txt_test_guide">
		                                Irreversible point applied by EyeCap
		                            </p>
		                            <a class="textLeft">
		                            &nbsp;&nbsp;&nbsp;- Specimen conditioining : (23 ± 2) ℃, (50 ± 5) % R,H, for a minimum of 24 h<br>
                                    &nbsp;&nbsp;&nbsp;- Test temperature and numidity : 22 ℃, 40 % R.H.<br>
                                    &nbsp;&nbsp;&nbsp;- Spacing of the electnodes : (6.35 ± 0.1) mm<br>
                                    &nbsp;&nbsp;&nbsp;- Test boltage : 12.5 kV<br>
                                    </a>
                            		<img alt="tableTestImg" src="resources/sub/A/02/irreversible point.jpg">
                            	</li>
                            </ul>
                            
                            <h4 class="sub_des_tit" style="margin-top: 75px;">
                               Features of the specifications
                            </h4>
                            <ul class="sub_des_box02">
                            	<li class="widthFull">
                            		<table class="table03">
                                      <tr>
                                        <td class="color">Classification</td>
                                        <td>Application of ROSH</td>
                                        <td>Application of REACH</td>
                                        <td>UL Fireproof Class</td>
                                        <td>UL Rated Voltage / Usage temperature</td>
                                      </tr>
                                      <tr>
                                        <td class="color">EYE CAP(PVP)</td>
                                        <td>Applied</td>
                                        <td>Not applied</td>
                                        <td>VW-1</td>
                                        <td>600V/105°C</td>
                                      </tr>
                                      <tr>
                                        <td class="color">EYECAP-SIT(SILICONE )</td>
                                        <td>Applied</td>
                                        <td>Applied</td>
                                        <td>VW-1</td>
                                        <td>600V/105°C</td>
                                      </tr>
                                     </table>
                                  </li>
                            </ul>
                        </div>
                    </div>
                    <div id="sub_product_test">
	                    <div class="sub_wrapper">
		                    <h4 class="sub_des_tit">
		                       EYECAP-SI(압착단자용)
		                    </h4>
	                       	<ul class="sub_des_box">
                                <li class="li3">
                                	<img alt="features1" src="resources/sub/A/02/sitA_01.jpg">
                                </li>
                                <li class="li3">
                                	<img alt="features2" src="resources/sub/A/02/sitA_02.jpg">
                                </li>
                                <li class="li3">
                                	<img alt="features3" src="resources/sub/A/02/sitA_03.jpg">
                                </li>
                            </ul>
                           	<ul class="sub_des_box02">
                           		<li class="widthFull2">
                            		<table class="table03">
                                      <tr class="back_gray"><td rowspan="2">SIZE(SQ)</td><td rowspan="2">AWG</td><td rowspan="2">B</td><td rowspan="2">b</td><td rowspan="2">D</td><td rowspan="2">A</td><td rowspan="2">L</td><td rowspan="2">T</td><td rowspan="2">E</td><td colspan="7">PART NO.</td></tr>
                                      <tr class="back_gray"><td>BLACK</td><td>RED</td><td>BLUE</td><td>YELLOW</td><td>GREEN</td><td>P7</td><td>etc</td></tr>
                                      <tr><td>1.5</td><td>20,18,16</td>    <td>2.8</td> <td>5.9</td> <td>2.8</td> <td>13.1</td><td>7.6</td><td>0.8</td> <td>5.3</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td><td rowspan="16">Gwangyang(POSCO)</td></tr>
                                      <tr><td>2.5</td><td>16~14</td>       <td>3.4</td> <td>6.9</td> <td>3.5</td> <td>13.8</td><td>8.1</td><td>0.8</td> <td>5.4</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>4</td>  <td>14~12</td>       <td>3.8</td> <td>7.5</td> <td>4.3</td> <td>16.2</td><td>9.6</td><td>0.8</td> <td>7.0</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>6</td>  <td>12~10</td>       <td>4.8</td> <td>8.7</td> <td>5.0</td> <td>17.4</td><td>9.7</td><td>0.8</td> <td>7.7</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>10</td> <td>8</td>           <td>6.2</td> <td>10.1</td><td>6.7</td> <td>20.4</td><td>10.9</td><td>0.8</td><td>8.3</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>16</td> <td>6</td>           <td>7.0</td> <td>12.5</td><td>8.3</td> <td>23.5</td><td>13.0</td><td>0.8</td><td>10.0</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>25</td> <td>4</td>           <td>10.1</td><td>15.5</td><td>10.2</td><td>31.5</td><td>17.1</td><td>0.8</td><td>14.6</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>35</td> <td>2,3</td>         <td>10.6</td><td>16.5</td><td>10.8</td><td>35.1</td><td>19.0</td><td>0.8</td><td>16.8</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>50</td> <td>1</td>           <td>12.4</td><td>18.2</td><td>12.1</td><td>37.7</td><td>19.1</td><td>0.8</td><td>19.1</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>70</td> <td>1/0</td>         <td>14.2</td><td>21.8</td><td>15.2</td><td>38.3</td><td>19.5</td><td>0.8</td><td>20.5</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>95</td> <td>2/0</td>         <td>15.9</td><td>23.5</td><td>16.2</td><td>42.6</td><td>21.6</td><td>0.8</td><td>21.9</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>120</td><td>3/0</td>         <td>18.5</td><td>26.8</td><td>20.9</td><td>47.3</td><td>25.8</td><td>0.8</td><td>22.0</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>150</td><td>4/0,250Kcmil</td><td>19.9</td><td>30.3</td><td>23.7</td><td>55.5</td><td>27.5</td><td>0.8</td><td>30.8</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>185</td><td>300Kcmil</td>    <td>22.9</td><td>33.9</td><td>25.3</td><td>64.0</td><td>33.3</td><td>0.8</td><td>32.9</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>240</td><td>350~400Kcmil</td><td>25.4</td><td>39.7</td><td>30.1</td><td>70.0</td><td>36.6</td><td>0.8</td><td>37.7</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>300</td><td>450~500Kcmil</td><td>27.0</td><td>45.8</td><td>34.9</td><td>74.6</td><td>38.4</td><td>0.8</td><td>45.0</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td colspan="16">
                                      	<div class="left">
                                      		<a><strong>Example for Part Number</strong></a>
                                      		<div class="left_01">
                                      			<a>EYECAP-SIT (A) 1.5 BK</a><br />
                                      			<a class="right">③</a><a class="right">②</a><a class="right">①</a>
                                      		</div>
                                      	</div>
                                      	<div class="left" style="margin-left: 10px;">
                                      		<a class="red">①</a><a class="size">&nbsp;TYPE<br /></a>
                                      		<a class="size1">
                                      		&nbsp;&nbsp;&nbsp;(A)(Solderless terminal lugs type)<br />
                        	                &nbsp;&nbsp;&nbsp;(B)(Tubular terminal lugs type)</a><br />
                                      		<a class="red">②</a><a class="size">&nbsp;SIZE</a><br />
                                      		<a class="size1">
                                      		&nbsp;&nbsp;&nbsp;1.5SQ ~ 300SQ</a><br />
                                      		<a class="red">③</a><a class="size">&nbsp;COLOR</a><br />
                                      		<a class="size1">
                                      		&nbsp;&nbsp;&nbsp;BK(Black), R(RED), B(BLUE), Y(YELLOW), G(GREEN)<br />
                           	                &nbsp;&nbsp;&nbsp;MOQ(BK, R, B, Y, G 각 칼라별 100EA)<br />
                	                	    &nbsp;&nbsp;&nbsp;P7(BK, R, B, Y, G, 1set : 각 칼라별 50EA)-광양(포스코)</a>
                                      	</div>
                                      </td></tr>
                                     </table>
                                  </li>
                            </ul>
	                    </div>
                	</div>
                	
                	<div id="sub_product_test">
	                    <div class="sub_wrapper">
		                    <h4 class="sub_des_tit">
		                       EYECAP-SIT(동관단자용)
		                    </h4>
	                       	<ul class="sub_des_box">
                                <li class="li3">
                                	<img alt="features1" src="resources/sub/A/02/sitB_01.jpg">
                                </li>
                                <li class="li3">
                                	<img alt="features2" src="resources/sub/A/02/sitB_02.jpg">
                                </li>
                                <li class="li3">
                                	<img alt="features3" src="resources/sub/A/02/sitB_03.jpg">
                                </li>
                            </ul>
                           	<ul class="sub_des_box02">
                           		<li class="widthFull2">
                            		<table class="table03">
                                      <tr class="back_gray"><td rowspan="2">SIZE(SQ)</td><td rowspan="2">AWG</td><td rowspan="2">B</td><td rowspan="2">b</td><td rowspan="2">D</td><td rowspan="2">A</td><td rowspan="2">L</td><td rowspan="2">T</td><td rowspan="2">E</td><td colspan="7">PART NO.</td></tr>
                                      <tr class="back_gray"><td>BLACK</td><td>RED</td><td>BLUE</td><td>YELLOW</td><td>GREEN</td><td>P7</td><td>etc</td></tr>
                                      <tr><td>25</td>  <td>4</td>             <td>8.6</td>  <td>13.9</td> <td>9.0</td>  <td>10.3</td><td>25.3</td><td>1.2</td><td>14.0</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td><td rowspan="11">Gwangyang(POSCO)</td></tr>
                                      <tr><td>35</td>  <td>2,3</td>           <td>10.2</td> <td>15.5</td> <td>10.5</td> <td>10.1</td><td>27.5</td><td>1.3</td><td>17.3</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>50</td>  <td>1</td>             <td>11.6</td> <td>17.2</td> <td>11.5</td> <td>12.2</td><td>43.2</td><td>1.5</td><td>34.3</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>70</td>  <td>1/0</td>           <td>13.8</td> <td>20.3</td> <td>13.9</td> <td>12.2</td><td>48.2</td><td>1.8</td><td>36.7</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>95</td>  <td>2/0</td>           <td>16.5</td> <td>22.8</td> <td>16.0</td> <td>12.3</td><td>56.2</td><td>1.9</td><td>36.4</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>120</td> <td>3/0</td>           <td>18.3</td> <td>24.6</td> <td>18.0</td> <td>18.8</td><td>61.6</td><td>1.9</td><td>40.1</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>150</td> <td>4/0, 250Kcmil</td> <td>20.8</td> <td>27.2</td> <td>21.4</td> <td>18.8</td><td>66.7</td><td>2.0</td><td>40.1</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>185</td> <td>300Kcmil</td>      <td>22.1</td> <td>31.0</td> <td>22.7</td> <td>24.0</td><td>74.0</td><td>2.1</td><td>48.6</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>240</td> <td>350~400Kcmil</td>  <td>28.1</td> <td>35.1</td> <td>26.8</td> <td>23.2</td><td>83.0</td><td>2.1</td><td>54.5</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>300</td> <td>450~500Kcmil</td>  <td>29.0</td> <td>37.0</td> <td>28.2</td> <td>25.5</td><td>95.1</td><td>2.3</td><td>66.5</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>
                                      <tr><td>400</td> <td>550~700Kcmil</td>  <td>32.5</td> <td>40.9</td> <td>32.8</td> <td>25.7</td><td>98.9</td><td>2.5</td><td>72.7</td><td>BK</td><td>R</td><td>B</td><td>Y</td><td>G</td><td>P7</td></tr>                                      
                                      <tr><td colspan="16">
                                      	<div class="left">
                                      		<a><strong>Example for Part Number</strong></a>
                                      		<div class="left_01">
                                      			<a>EYECAP-SIT (B) 1.5 BK</a><br />
                                      			<a class="right">③</a><a class="right">②</a><a class="right">①</a>
                                      		</div>
                                      	</div>
                                      	<div class="left" style="margin-left: 10px;">
                                      		<a class="red">①</a><a class="size">&nbsp;TYPE<br /></a>
                                      		<a class="size1">
                                      		&nbsp;&nbsp;&nbsp;(A)(Solderless terminal lugs type)<br />
                        	                &nbsp;&nbsp;&nbsp;(B)(Tubular terminal lugs type)</a><br />
                                      		<a class="red">②</a><a class="size">&nbsp;SIZE</a><br />
                                      		<a class="size1">
                                      		&nbsp;&nbsp;&nbsp;25SQ ~ 400SQ</a><br />
                                      		<a class="red">③</a><a class="size">&nbsp;COLOR</a><br />
                                      		<a class="size1">
                                      		&nbsp;&nbsp;&nbsp;BK(Black), R(RED), B(BLUE), Y(YELLOW), G(GREEN)<br />
                           	                &nbsp;&nbsp;&nbsp;MOQ(BK, R, B, Y, G 각 칼라별 100EA)<br />
                	                	    &nbsp;&nbsp;&nbsp;P7(BK, R, B, Y, G, 1set : 각 칼라별 50EA)-광양(포스코)</a>
                                      	</div>
                                      </td></tr>
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