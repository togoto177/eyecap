<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../include.jsp"%>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
                  <ul class="product_top_gallery">
                    <li>
                        <img src="resources/sub/A/01/product_01.jpg" alt="insulation cap resposive to overheat" />
                    </li>
                    <li>
                        <img src="resources/sub/A/01/product_02.jpg" alt="insulation cap resposive to overheat" />
                    </li>
                    <li>
                        <img src="resources/sub/A/01/product_03.jpg" alt="insulation cap resposive to overheat" />
                    </li>
                    <li>
                        <img src="resources/sub/A/01/product_04.jpg" alt="insulation cap resposive to overheat" />
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
                                Prdouct functions and features
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_test">
                                Heat-resistance test
                            </a>
                        </li>
                    </ol>
                </div>
                    <div id="sub_product_des">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                                Importance of overheat detection
                            </h4>
                            <ul class="sub_des_box">
                                <li>
                                    <p class="sub_des_tit02">
                                        Heat deterioration and associated risks
                                    </p>
                                    <p class="sub_des_des">
                                        Once polymeric materials,such as electric wires,are heated up, pyrolysis of the material will 
                                        be started, and when the temperature reaches to 90℃, the material will be decomposed 
                                        with gas generated. As the heat is accumulated in splicing material and its temperature goes
                                        up, it causes smoke. If the temperature keeps increased and goes beyond ignition points, it 
                                        sparks up a flare and may end up with fire. Existing fire-retardant materials meltdown at a 
                                        temperature of 120℃ and combusted at a temperature of 150℃. However, products made 
                                        of silicon are not deformed at a temperature of over 320℃.
                                    </p>
                                </li>
                                <li>
                                    <p class="sub_des_tit02">
                                        ARC discharge and associated risks
                                    </p>
                                    <p class="sub_des_des">
                                        ARC is normally generated from materials with properties of insulation and is also a type of 
                                        discharge of light that comes along with damages on electrodes caused by flame. The gene-
                                        ration time of ARC varies from very short instance to over a period, and the size of through-
                                        current and ARC duration time are two main factors for fire. In addition, 
                                        any defects of ARC may generate a high temperature of over 1,000℃ even if it is just small 
                                        current. Therefore, ARC may be a direct cause of a fire or may cause fire by deteriorating the 
                                        heat of insulation materials. Internal ARC test result: Fire-retardant PVC12.3Sec,Silicon 191.8 
                                        sec.
                                    </p>
                                </li>
                            </ul>
                            <p class="txt_test_guide">
                                Internal voltage ARC test - Insulation cap with silicon
                            </p>
                            <ul class="sub_des_box02">
                                <li>
                                    <p class="sub_des_tit02">
                                        1 ARC resistance test
                                    </p>
                                    <table class="table01">
                                        <tr>
                                            <td>
                                                Test method
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_bg_logo">
                                            For determination of the arc resistance, the test specimen cut from test objects is placed in 
                                            the tungsten rodelectrode assembly and the spacing of the electrodes is adjusted to the 
                                            specified distance. While the arc severity in sequence as whown in the following table is 
                                            being increased until failure occurs. the time to failure in seconds is recorded for each of 
                                            the five tests.
                                                <table class="table02">
                                                    <tr><td>Step</td><td>Current</td><td>Time cycles</td><td>Total times</td></tr>
                                                    <tr><td>1/8</td><td>10</td><td>1/4on,1,3,4off</td><td>60</td></tr>
                                                    <tr><td>1/4</td><td>10</td><td>1/4on,1,3,4off</td><td>120</td></tr>
                                                    <tr><td>1/2</td><td>10</td><td>1/4on,1/4off</td><td>180</td></tr>
                                                    <tr><td>10</td><td>10</td><td>Continuous</td><td>240</td></tr>
                                                    <tr><td>20</td><td>20</td><td>Continuous</td><td>300</td></tr>
                                                    <tr><td>30</td><td>30</td><td>Continuous</td><td>360</td></tr>
                                                    <tr><td>40</td><td>40</td><td>Continuous</td><td>420</td></tr>
                                                 </table>
                                            <strong>○ Test conditions</strong><br>
                                            &nbsp;&nbsp;- Specimen conditioining : (23 ± 2) ℃, (50 ± 5) % R,H, for a minimum of 24 h<br>
                                            &nbsp;&nbsp;- Test temperature and numidity : 22 ℃, 40 % R.H.<br>
                                            &nbsp;&nbsp;- Spacing of the electnodes : (6.35 ± 0.1) mm<br>
                                            &nbsp;&nbsp;- Test boltage : 12.5 kV<br><br>
                                            <strong class="margin-none">Reference : Test method KS C 2130 : 1996</strong>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="table03">
                                       <tr>
                                        <td colspan="7">Test results</td>
                                      </tr>
                                      <tr>
                                        <td rowspan="2">Item</td>
                                        <td colspan="6">Specimen No.</td>
                                      </tr>
                                      <tr>
                                        <td>#1</td><td>#2</td><td>#3</td><td>#4</td><td>#5</td><td>Median</td>
                                      </tr>
                                      <tr>
                                        <td>Thickness (mm)</td><td>2.019</td><td>1.986</td><td>1.945</td><td>1.977</td><td>1.968</td><td>-</td>
                                      </tr>
                                      <tr>
                                        <td>Arc resistance time (s)</td><td>158.6</td><td>160.1</td><td>191.8</td><td>198.3</td><td>195.3</td><td>191.8</td>
                                      </tr> 
                                    </table>
                                </li>
                                <li>
                                    <p class="sub_des_tit02">
                                        2 Dielectric breakdown voltage test
                                    </p>
                                    <table class="table01">
                                        <tr>
                                            <td>
                                                Test method
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_bg_logo">
                                            For determination of the arc resistance, the test specimen cut from test objects is placed in 
                                            the tungsten rodelectrode assembly and the spacing of the electrodes is adjusted to the 
                                            specified distance. While the arc severity in sequence as whown in the following table is 
                                            being increased until failure occurs. the time to failure in seconds is recorded for each of 
                                            the five tests.
                                                <table class="table02">
                                                    <tr><td>Step</td><td>Current</td><td>Time cycles</td><td>Total times</td></tr>
                                                    <tr><td>1/8</td><td>10</td><td>1/4on,1,3,4off</td><td>60</td></tr>
                                                    <tr><td>1/4</td><td>10</td><td>1/4on,1,3,4off</td><td>120</td></tr>
                                                    <tr><td>1/2</td><td>10</td><td>1/4on,1/4off</td><td>180</td></tr>
                                                    <tr><td>10</td><td>10</td><td>Continuous</td><td>240</td></tr>
                                                    <tr><td>20</td><td>20</td><td>Continuous</td><td>300</td></tr>
                                                    <tr><td>30</td><td>30</td><td>Continuous</td><td>360</td></tr>
                                                    <tr><td>40</td><td>40</td><td>Continuous</td><td>420</td></tr>
                                                </table>
                                            <strong>○ Test conditions</strong><br>
                                            &nbsp;&nbsp;- Specimen conditioining : (23 ± 2) ℃, (50 ± 5) % R,H, for a minimum of 24 h<br>
                                            &nbsp;&nbsp;- Test temperature and numidity : 22 ℃, 40 % R.H.<br>
                                            &nbsp;&nbsp;- Spacing of the electnodes : (6.35 ± 0.1) mm<br>
                                            &nbsp;&nbsp;- Test boltage : 12.5 kV<br><br>
                                            <strong>Reference : Test method KS C 2130 : 1996</strong>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="table03">
                                       <tr><td colspan="7">Test results</td></tr>
                                      <tr><td rowspan="2">Item</td><td colspan="6">Specimen No.</td></tr>
                                      <tr><td>#1</td><td>#2</td><td>#3</td><td>#4</td><td>#5</td><td>Median</td></tr>
                                      <tr><td>Thickness (mm)</td><td>2.019</td><td>1.986</td><td>1.945</td><td>1.977</td><td>1.968</td><td>-</td></tr>
                                      <tr><td>Arc resistance time (s)</td><td>158.6</td><td>160.1</td><td>191.8</td><td>198.3</td><td>195.3</td><td>191.8</td></tr> 
                                    </table>
                                </li>
                            </ul>
                             <p class="txt_test_guide">
                                Internal voltage ARC test - Insulation cap with silicon
                            </p>
                            <ul class="sub_des_box02">
                                <li>
                                    <p class="sub_des_tit02">
                                        1 ARC resistance test
                                    </p>
                                    <table class="table01">
                                        <tr>
                                            <td>
                                                Test method
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_bg_logo">
                                            For determination of the arc resistance, the test specimen cut from test objects is placed in 
                                            the tungsten rodelectrode assembly and the spacing of the electrodes is adjusted to the 
                                            specified distance. While the arc severity in sequence as whown in the following table is 
                                            being increased until failure occurs. the time to failure in seconds is recorded for each of 
                                            the five tests.
                                                <table class="table02">
                                                    <tr><td>Step</td><td>Current</td><td>Time cycles</td><td>Total times</td></tr>
                                                    <tr><td>1/8</td><td>10</td><td>1/4on,1,3,4off</td><td>60</td></tr>
                                                    <tr><td>1/4</td><td>10</td><td>1/4on,1,3,4off</td><td>120</td></tr>
                                                    <tr><td>1/2</td><td>10</td><td>1/4on,1/4off</td><td>180</td></tr>
                                                    <tr><td>10</td><td>10</td><td>Continuous</td><td>240</td></tr>
                                                    <tr><td>20</td><td>20</td><td>Continuous</td><td>300</td></tr>
                                                    <tr><td>30</td><td>30</td><td>Continuous</td><td>360</td></tr>
                                                    <tr><td>40</td><td>40</td><td>Continuous</td><td>420</td></tr>
                                                </table>
                                            <strong>○ Test conditions</strong><br>
                                            &nbsp;&nbsp;- Specimen conditioining : (23 ± 2) ℃, (50 ± 5) % R,H, for a minimum of 24 h<br>
                                            &nbsp;&nbsp;- Test temperature and numidity : 22 ℃, 40 % R.H.<br>
                                            &nbsp;&nbsp;- Spacing of the electnodes : (6.35 ± 0.1) mm<br>
                                            &nbsp;&nbsp;- Test boltage : 12.5 kV<br><br>
                                            <strong class="margin-none">Reference : Test method KS C 2130 : 1996</strong>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="table03">
                                      <tr><td colspan="7">Test results</td></tr>
                                      <tr><td rowspan="2">Item</td><td colspan="6">Specimen No.</td></tr>
                                      <tr><td>#1</td><td>#2</td><td>#3</td><td>#4</td><td>#5</td><td>Median</td></tr>
                                      <tr><td>Thickness (mm)</td><td>2.019</td><td>1.986</td><td>1.945</td><td>1.977</td><td>1.968</td><td>-</td></tr>
                                      <tr><td>Arc resistance time (s)</td><td>158.6</td><td>160.1</td><td>191.8</td><td>198.3</td><td>195.3</td><td>191.8</td></tr> 
                                    </table>
                                </li>
                                <li>
                                    <p class="sub_des_tit02">
                                        2 Dielectric breakdown voltage test
                                    </p>
                                    <table class="table01">
                                        <tr>
                                            <td>
                                                Test method
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_bg_logo">
                                            For determination of the arc resistance, the test specimen cut from test objects is placed in 
                                            the tungsten rodelectrode assembly and the spacing of the electrodes is adjusted to the 
                                            specified distance. While the arc severity in sequence as whown in the following table is 
                                            being increased until failure occurs. the time to failure in seconds is recorded for each of 
                                            the five tests.
                                                <table class="table02">
                                                    <tr><td>Step</td><td>Current</td><td>Time cycles</td><td>Total times</td></tr>
                                                    <tr><td>1/8</td><td>10</td><td>1/4on,1,3,4off</td><td>60</td></tr>
                                                    <tr><td>1/4</td><td>10</td><td>1/4on,1,3,4off</td><td>120</td></tr>
                                                    <tr><td>1/2</td><td>10</td><td>1/4on,1/4off</td><td>180</td></tr>
                                                    <tr><td>10</td><td>10</td><td>Continuous</td><td>240</td></tr>
                                                    <tr><td>20</td><td>20</td><td>Continuous</td><td>300</td></tr>
                                                    <tr><td>30</td><td>30</td><td>Continuous</td><td>360</td></tr>
                                                    <tr><td>40</td><td>40</td><td>Continuous</td><td>420</td></tr>
                                                 </table>
                                            <strong>○ Test conditions</strong><br>
                                            &nbsp;&nbsp;- Specimen conditioining : (23 ± 2) ℃, (50 ± 5) % R,H, for a minimum of 24 h<br>
                                            &nbsp;&nbsp;- Test temperature and numidity : 22 ℃, 40 % R.H.<br>
                                            &nbsp;&nbsp;- Spacing of the electnodes : (6.35 ± 0.1) mm<br>
                                            &nbsp;&nbsp;- Test boltage : 12.5 kV<br><br>
                                            <strong>Reference : Test method KS C 2130 : 1996</strong>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="table03">
                                       <tr><td colspan="7">Test results</td></tr>
                                      <tr><td rowspan="2">Item</td><td colspan="6">Specimen No.</td></tr>
                                      <tr><td>#1</td><td>#2</td><td>#3</td><td>#4</td><td>#5</td><td>Median</td></tr>
                                      <tr><td>Thickness (mm)</td><td>2.019</td><td>1.986</td><td>1.945</td><td>1.977</td><td>1.968</td><td>-</td></tr>
                                      <tr><td>Arc resistance time (s)</td><td>158.6</td><td>160.1</td><td>191.8</td><td>198.3</td><td>195.3</td><td>191.8</td></tr> 
                                    </table>
                                </li>
                            </ul>
                            <p class="sub_des">
                                You would need products that allow you to detect temperature change in order to prevent such risks described as above. 
                            </p>
                        </div>
                    </div>
                    <div id="sub_product_function">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                               Product functions and features     
                            </h4>
                            <p class="sub_des_des02">
                                - It allows you to visually inspect the compression ofterminal connection by checking an insulation cap of a copper terminal.<br><br>
                                - An indicator placed in a copper terminal allows you to see if a cable is properly connected.<br><br>
                                - It allows you to see overheat with the color change of an indicatortab and an insulation cap.
                            </p>
                        </div>
                    </div>
                    <div id="sub_product_test">
                        <div class="sub_wrapper">
                        <h4 class="sub_des_tit">
                           Heat-resistance test 
                        </h4>
                        <p class="sub_des_tit03">
                            <em class="txt_red">1.</em>Heat-resistance test for the insulation cap of fire-retardant cable (4SQ) 
                        </p>
                        <ul class="sub_des_box03">
                            <li>
                                <img src="resources/sub/A/01/product_test_01.jpg" alt="" />
                                <p class="sub_des_des">
                                    Heat up the middle area of a fire-retardant cable (4SQ) that has a 
                                    silicon-insulated cap on one end and a PVC-insulated cap on the other end.
                                </p>
                            </li>
                            <li>
                                <img src="resources/sub/A/01/product_test_02.jpg" alt="" />
                                <p class="sub_des_des">
                                    The PVC-insulated cap of a fire-retardant cable starts meltdown at the temperature of 118℃.
                                </p>
                            </li>  
                        </ul>
                        <ul class="sub_des_box03">
                            <li>
                                <img src="resources/sub/A/01/product_test_03.jpg" alt="" />
                            </li>
                            <li>
                                <img src="resources/sub/A/01/product_test_04.jpg" alt="" />
                            </li>
                            <li class="last_merge">
                                <p class="sub_des_des">
                                    The PVC-insulated cap is carbonizedat the temperature of 128℃, and it generates
                                    <em class="txt_red">hydrogen chloride gas.</em>
                                </p>
                            </li>
                        </ul>
                        <br>
                        <br>
                        <br>
                        <p class="sub_des_tit03">
                            <em class="txt_red">2.</em>Heat-resistance test for a non-fire-retardant cable
                        </p>
                        <ul class="sub_des_box03">
                            <li>
                                <img src="resources/sub/A/01/product_test_05.jpg" alt="" />
                                <p class="sub_des_des">
                                    Heat up the middle area of a fire-retardant cable (35SQ) that has a 
                                    silicon-insulated cap on one end and a PVC-insulated cap on the other end. 
                                </p>
                            </li>
                            <li>
                                <img src="resources/sub/A/01/product_test_06.jpg" alt="" />
                                <p class="sub_des_des">
                                    The PVC cap starts meltdown with carbonization at the temperature of 120℃.
                                </p>
                            </li>  
                        </ul>
                        <ul class="sub_des_box03">
                            <li>
                                <img src="resources/sub/A/01/product_test_07.jpg" alt="" />
                            </li>
                            <li>
                                <img src="resources/sub/A/01/product_test_08.jpg" alt="" />
                            </li>
                            <li class="last_merge">
                                <p class="sub_des_des">
                                    The cable sheath is combusted at132℃, and the secondary ignition of the PVC cap causeshydrogen chloride gas and its total destruction.
                                    The siliconcap prevents the flame from moving to the rest of the silicon cap and eventually remains its shape. 
                                </p>
                            </li>
                        </ul>
                        <br>
                        <br>
                        <br>
                        <p class="sub_des_tit03">
                            <em class="txt_red">3.</em>Test result
                        </p>
                        <p class="sub_des_des03">
                            The PVC-insulated cap melts down at the temperature of 118℃even before its sheath is melt down, and it generates toxic gas at 128℃, and the meltdown causes drippings, which may 
                            lead to the secondary fire. Whereas silicon-insulated cap stops the flame on the cable sheath from moving to the silicon cap, helps it to be extinguished by itself, and eventually prevents 
                            the fire from being spread. Thus, it is verified that silicon-insulated cap has better performance in preventing fire caused by overheat than a PVC cap.
                        </p>
                    </div>
                </div>
            </section>
            <!-- #section-3 END-->
        </div>
        <!-- TODO : Main Content -->    
        
        <jsp:include flush="true" page="../footer.jsp"></jsp:include> 
        
        
        <!--SUBMENU TAB FIXED START-->
    <script>
        var sub_tab_Offset = $('.product_des_tab').offset().top;

        $(window).scroll(function(){
          var sub_tab = $('.product_des_tab'),
              scroll = $(window).scrollTop();

          if (scroll >= sub_tab_Offset) sub_tab.addClass('fixed');
          else sub_tab.removeClass('fixed');
        });
        
        
    </script>
    <!--SUBMENU TAB FIXED END-->
    
    <!--SUBMENU TAB ADDCLASS START-->
    <script>
       $('ol.product_des_tab li').on('click', function(){
            $('ol.product_des_tab li.active').removeClass('active');
            $(this).addClass('active');
        });
       
       
        </script>
    <!--SUBMENU TAB ADDCLASS END-->
    
    <!--SUBMENU TAB SCROLL START-->
    <script>
    $(window).on("scroll", function() {
    
            var topHeight = $("#sub-section-1").outerHeight() + $("#sub-section-2").outerHeight();
            var scrollTop = $(this).scrollTop();

            var st1 = topHeight + $("#sub_product_des").outerHeight();
            var st2 = st1 + $("#sub_product_function").outerHeight();
            var st3 = st2 + $("#sub_product_test").outerHeight();
                
            if (scrollTop < st1) {
                $(".product_des_tab li").removeClass("active");
                $(".product_des_tab li").eq(0).addClass("active");
            }

            if (scrollTop > st1 && scrollTop < st2) {
                $(".product_des_tab li").removeClass("active");
                $(".product_des_tab li.tab_center").addClass("active");
            }

            if (scrollTop > st2 && scrollTop < st3) {
                $(".product_des_tab li").removeClass("active");
                $(".product_des_tab li").eq(2).addClass("active");
            }


        });
    </script>
    <!--SUBMENU TAB SCROLL END-->
        
    </div>

</body>
</html>