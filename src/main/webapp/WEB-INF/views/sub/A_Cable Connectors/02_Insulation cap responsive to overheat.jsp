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
                        <a href="A_01.do">Cable Connectors</a>
                        <a href="A_02.do" class="current">Insulation cap responsive to overheat</a>
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
              </div>
            </section>
            <!-- #section-2 END-->
            <!-- #section-3 START-->
            <section class="section" id="sub-section-3">
            	<div class="btnDiv">
            		<a class="btnCap" href="/resources/sub/A/A_01/CAPspecification.xlsx" target="_blank">Specification&darr;</a><a class="btnCap" href="pop02.do">CertificateCAP</a><a class="btnCap" id="priceBtn">PriceListCap</a>
            	</div>
                    <div id="sub_product_des">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit" style="margin-bottom: 15px;">
                                Insulation Cap for Overheat detection (EYECAPⓇ-SIT)
                            </h4>
                            <p class="sub_des_tit03" style="color: orange;">
                            	Deterioration can be visually confirmed with naked eyes without any equipment!
                        	</p>
                            <ul class="sub_des_01">
                            	<li><a>&middot;</a> UL 224-The Standard for Extruded Electrical Tubing</li>
                            	<li><a>&middot;</a> RoHS DIRECTIVE 2011/65/EU.</li>
                            	<li><a>&middot;</a> REACH Regulation(EC) No. 1907/2006</li>
                            </ul>
                            <ul class="sub_des_02">
                            	<li>01. Operators, managers and supervisors can visually check with their eyes directly.</li>
                            	<li>02. Silicon material and special dye precisely respond to overheat.</li>
                            	<li>03. Part except dye is made of transparent material. Inspection of solderless part and improper construction can be visually performed and confirmed with naked eyes.</li>
                            	<li>04. Exceptional fire prevention effect even at the time of heat or arc generation as it is produced by its overheat detection.</li>
                            	<li>05. It is possible to triply prevent fire using insulation cap along with tubular terminal lug and washer for temperature changes.</li>
                            </ul>
                        </div>
                    </div>
                    
                   <div class="sub_wrapper">
                    <h4 class="sub_des_tit">
                       EYECAPⓇ-SIT(A) - For Solderless Terminal Lug
                    </h4>
                    <ul class="sub_des_box02">
                        <li class="widthFull2">
                            <div class="leftBox_3">
	                            <div style="width: 100%; text-align: center;">
	                            <img style="width: 90%;" alt="img" src="resources/sub/A/A_02/103.jpg">
	                            </div>
	                            <p class="sitText">
	                            	※T - Average thickness ±10%. All other dimensions are restricted to ±15% tolerance. Specification may change without prior notification for better performance.
	                            </p>
	                         </div>
	                         <div class="leftBox_3">
	                         <a class="mmLeft">(Unit: mm)</a>
	                         	<table class="table03" style="margin:0;">
                               <tr class="back_gray"><td colspan="2">Specification</td><td rowspan="2">D</td><td rowspan="2">B</td><td rowspan="2">L</td><td rowspan="2">T</td></tr>
                               <tr class="back_gray"><td>ICE</td><td>AWG</td></tr>
                               <tr><td>1.5SQ</td><td>16,18,20</td>    <td>3.16</td> <td>3.00</td> <td>13.70</td><td>0.80</td></tr>
                               <tr><td>2.5SQ</td><td>14~16</td>       <td>3.83</td> <td>3.70</td> <td>14.40</td><td>0.80</td></tr>
                               <tr><td>4SQ</td>  <td>12~14</td>       <td>4.53</td> <td>4.40</td> <td>16.00</td><td>0.90</td></tr>
                               <tr><td>6SQ</td>  <td>10~12</td>       <td>5.00</td> <td>5.19</td> <td>18.00</td><td>1.00</td></tr>
                               <tr><td>10SQ</td> <td>8</td>           <td>7.10</td> <td>6.50</td> <td>21.00</td><td>1.10</td></tr>
                               <tr><td>16SQ</td> <td>6</td>           <td>9.00</td> <td>7.70</td> <td>24.00</td><td>1.14</td></tr>
                               <tr><td>25SQ</td> <td>4</td>           <td>10.25</td><td>10.20</td><td>31.21</td><td>1.25</td></tr>
                               <tr><td>35SQ</td> <td>2~3</td>         <td>10.71</td><td>10.70</td><td>35.00</td><td>1.30</td></tr>
                               <tr><td>50SQ</td> <td>1</td>           <td>11.60</td><td>12.80</td><td>37.70</td><td>1.50</td></tr>
                               <tr><td>70SQ</td> <td>1/0</td>         <td>14.60</td><td>14.00</td><td>39.00</td><td>1.60</td></tr>
                               <tr><td>95SQ</td> <td>2/0</td>         <td>16.60</td><td>16.10</td><td>43.50</td><td>1.64</td></tr>
                               <tr><td>120SQ</td><td>3/0</td>         <td>21.60</td><td>19.70</td><td>48.50</td><td>1.75</td></tr>
                               <tr><td>150SQ</td><td>4/0</td>         <td>23.40</td><td>20.60</td><td>56.65</td><td>1.85</td></tr>
                               <tr><td>185SQ</td><td>250~300kcmil</td><td>25.93</td><td>24.40</td><td>64.00</td><td>1.90</td></tr>
                               <tr><td>240SQ</td><td>350~400kcmil</td><td>30.13</td><td>26.80</td><td>70.00</td><td>2.00</td></tr>
                               <tr><td>300SQ</td><td>450~500kcmil</td><td>35.19</td><td>30.70</td><td>76.00</td><td>2.16</td></tr>
                            </table>
                            
                            <div class="sitLeftBox">
	                        	<div class="left">
	                         		<a><strong>Example for Part Number</strong></a>
	                           		<div class="left_01">
	                           			<a>EYECAPⓇ-SIT (A) 1.5 BK</a><br />
	                           			<a class="right">③</a><a class="right">②</a><a class="right">①</a>
	                           		</div>
	                           	</div>
	                           	<div class="left"><br />
	                           		<a class="red">①</a><a class="size">&nbsp;TYPE :</a>
	                           		<a class="size1"> (A) (Solderless terminal lugs type)</a><br />
	                           		<a class="red">②</a><a class="size">&nbsp;SIZE :</a>
	                           		<a class="size1"> 1.5SQ ~ 300SQ</a><br />
	                           		<a class="red">③</a><a class="size">&nbsp;COLOR :</a>
	                           		<a class="size1"> BK(Black), R(Red),B(Blue),Y(Yellow), G(Green)</a>
	                           	</div>
                           	</div>
	                        </div>
                        </li>
                      </ul>
                   </div>
              	
                   <div class="sub_wrapper">
                    <h4 class="sub_des_tit">
                        EYECAPⓇ-SIT(B) - for Tubular Terminal lug 2-Hole
                    </h4>
                    <ul class="sub_des_box02">
                        <li class="widthFull2">
                            <div class="leftBox_3">
	                            <div style="width: 100%; text-align: center;">
	                            <img style="width: 75%;" alt="img" src="resources/sub/A/A_02/104.jpg">
	                            </div>
	                            <p class="sitText">
	                            	※T - Average thickness ±10%. All other dimensions are restricted to ±15% tolerance. Specification may change without prior notification for better performance.
	                            </p>
	                         </div>
	                         <div class="leftBox_3">
	                         <a class="mmLeft">(Unit: mm)</a>
	                         	<table class="table03" style="margin:0;">
                               <tr class="back_gray"><td colspan="2">Specification</td><td rowspan="2">D</td><td rowspan="2">B</td><td rowspan="2">L</td><td rowspan="2">T</td></tr>
                               <tr class="back_gray"><td>ICE</td><td>AWG</td></tr>
                               <tr><td>25SQ</td> <td>6</td>           <td>8.90</td> <td>8.50</td> <td>35.80</td> <td>1.00</td></tr>
                               <tr><td>35SQ</td> <td>4</td>           <td>10.40</td><td>10.00</td><td>38.90</td> <td>1.10</td></tr>
                               <tr><td>50SQ</td> <td>2~1</td>         <td>13.20</td><td>12.20</td><td>43.00</td> <td>1.20</td></tr>
                               <tr><td>70SQ</td> <td>1/0</td>         <td>15.60</td><td>14.60</td><td>49.00</td> <td>1.50</td></tr>
                               <tr><td>95SQ</td> <td>2/0</td>         <td>17.06</td><td>17.06</td><td>57.94</td> <td>1.60</td></tr>
                               <tr><td>120SQ</td><td>3/0</td>         <td>19.50</td><td>19.50</td><td>61.94</td> <td>1.60</td></tr>
                               <tr><td>150SQ</td><td>4/0~250kcmil</td><td>21.80</td><td>21.72</td><td>67.50</td> <td>1.70</td></tr>
                               <tr><td>185SQ</td><td>300kcmil</td>    <td>24.30</td><td>24.30</td><td>76.20</td> <td>1.70</td></tr>
                               <tr><td>240SQ</td><td>350~400kcmil</td><td>28.90</td><td>28.90</td><td>85.50</td> <td>1.80</td></tr>
                               <tr><td>300SQ</td><td>450~500kcmil</td><td>30.82</td><td>30.82</td><td>95.28</td> <td>1.90</td></tr>
                               <tr><td>400SQ</td><td>550~650kcmil</td><td>35.00</td><td>35.00</td><td>101.00</td><td>2.10</td></tr>
                               <tr><td>500SQ</td><td>700~800kcmil</td><td>39.50</td><td>38.12</td><td>107.00</td><td>2.40</td></tr>
                            </table>
                            
                            <div class="sitLeftBox">
	                        	<div class="left">
	                         		<a><strong>Example for Part Number</strong></a>
	                           		<div class="left_01">
	                           			<a>EYECAPⓇ-SIT (B) 25 BK</a><br />
	                           			<a class="right">&nbsp;③</a><a class="right">&nbsp;②</a><a class="right">&nbsp;①</a>
	                           		</div>
	                           	</div>
	                           	<div class="left"><br />
	                           		<a class="red">①</a><a class="size">&nbsp;TYPE :</a>
	                           		<a class="size1"> (B) (Tubular terminal lugs type)</a><br />
	                           		<a class="red">②</a><a class="size">&nbsp;SIZE :</a>
	                           		<a class="size1"> 25SQ ~ 500SQ</a><br />
	                           		<a class="red">③</a><a class="size">&nbsp;COLOR :</a>
	                           		<a class="size1"> BK(Black), R(Red),B(Blue),Y(Yellow), G(Green)</a>
	                           	</div>
                           	</div>
	                        </div>
                        </li>
                      </ul>
                   </div>
                   
                   <div class="sub_wrapper">
                    <h4 class="sub_des_tit">
                        EYECAPⓇ-SIT(C) - for Tubular Terminal lug 1-Hole
                    </h4>
                    <ul class="sub_des_box02">
                        <li class="widthFull2">
                            <div class="leftBox_3">
	                            <div style="width: 100%; text-align: center;">
	                            <img style="width: 90%;" alt="img" src="resources/sub/A/A_02/105.jpg">
	                            </div>
	                            <p class="sitText">
	                            	※T - Average thickness ±10%. All other dimensions are restricted to ±15% tolerance. Specification may change without prior notification for better performance.
	                            </p>
	                         </div>
	                         <div class="leftBox_3">
	                         <a class="mmLeft">(Unit: mm)</a>
	                         	<table class="table03" style="margin:0;">
                               <tr class="back_gray"><td colspan="2">Specification</td><td rowspan="2">D</td><td rowspan="2">B</td><td rowspan="2">L</td><td rowspan="2">T</td></tr>
                               <tr class="back_gray"><td>ICE</td><td>AWG</td></tr>
                               <tr><td>25SQ</td> <td>6</td>           <td>9.00</td> <td>9.00</td> <td>25.50</td> <td>1.20</td></tr>
                               <tr><td>35SQ</td> <td>4</td>           <td>10.70</td><td>11.40</td><td>28.00</td> <td>1.20</td></tr>
                               <tr><td>50SQ</td> <td>2~1</td>         <td>12.10</td><td>12.60</td><td>34.00</td> <td>1.50</td></tr>
                               <tr><td>70SQ</td> <td>1/0</td>         <td>15.06</td><td>15.36</td><td>39.00</td> <td>1.50</td></tr>
                               <tr><td>95SQ</td> <td>2/0</td>         <td>17.50</td><td>16.96</td><td>44.27</td> <td>1.60</td></tr>
                               <tr><td>120SQ</td><td>3/0</td>         <td>20.00</td><td>19.60</td><td>48.50</td> <td>1.60</td></tr>
                               <tr><td>150SQ</td><td>4/0~250kcmil</td><td>21.90</td><td>21.98</td><td>55.00</td> <td>1.70</td></tr>
                               <tr><td>185SQ</td><td>300kcmil</td>    <td>24.60</td><td>24.60</td><td>56.90</td> <td>1.70</td></tr>
                               <tr><td>240SQ</td><td>350~400kcmil</td><td>29.74</td><td>29.20</td><td>64.00</td> <td>1.80</td></tr>
                               <tr><td>300SQ</td><td>450~500kcmil</td><td>30.82</td><td>30.82</td><td>72.96</td> <td>1.90</td></tr>
                            </table>
                            
                            <div class="sitLeftBox">
	                        	<div class="left">
	                         		<a><strong>Example for Part Number</strong></a>
	                           		<div class="left_01">
	                           			<a>EYECAPⓇ-SIT (C) 25 BK</a><br />
	                           			<a class="right">&nbsp;③</a><a class="right">&nbsp;②</a><a class="right">&nbsp;①</a>
	                           		</div>
	                           	</div>
	                           	<div class="left"><br />
	                           		<a class="red">①</a><a class="size">&nbsp;TYPE :</a>
	                           		<a class="size1"> (c) (Tubular terminal lugs type)</a><br />
	                           		<a class="red">②</a><a class="size">&nbsp;SIZE :</a>
	                           		<a class="size1"> 25SQ ~ 300SQ</a><br />
	                           		<a class="red">③</a><a class="size">&nbsp;COLOR :</a>
	                           		<a class="size1"> BK(Black), R(Red),B(Blue),Y(Yellow), G(Green)</a>
	                           	</div>
                           	</div>
	                        </div>
                        </li>
                      </ul>
                   </div>
                   
                   <div id="sub_product_function" style="background:#f7f7f7;">
                        <div class="sub_wrapper">
                        	<div style="text-align: center; margin-bottom: 55px;">
                        	<img class="one_img" alt="img" src="resources/sub/A/A_02/106.jpg">
                        	</div>
                            <p class="sub_des_des02">
                                - Color changes at 70℃<br><br>
                                - Possible for anyone to inspect with naked eye and induce inspector's fast judgment<br><br>
                                &emsp;&raquo; Inspection with the naked eye is possible without any other equipment
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