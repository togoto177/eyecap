<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../../include.jsp"%>
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
        <jsp:include flush="true" page="../../headerSub.jsp"></jsp:include>

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
                        <a href="" class="current">Washer responsive to overheat</a>
                      </div>
                  </div>
              </div>
              
              <jsp:include flush="true" page="../../sub_menu.jsp"></jsp:include> 
              
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
                        <img src="resources/sub/A/04/img_01.jpg" alt="insulation cap resposive to overheat img1" />
                    </li>
                    <li>
                        <img src="resources/sub/A/04/img_02.jpg" alt="insulation cap resposive to overheat img2" />
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
                                Product features
                            </a>
                        </li>
                        <li>
                            <a href="#sub_product_function">
                                Washer Specifications
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                --
                            </a>
                        </li>
                    </ol>
                </div>
                    <div id="sub_product_des">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                                Product features
                            </h4>
                            
                            <p class="sub_des_des03">
                            01. Overheatis detected by adding temperature detecting function on the outside of washer<br />
							02. Overheat of all joints that are connected with a bolt (booth duct, booth bar, distribution panel) can also be detected.<br />
							03. It resolves desorption caused by poor adhesion of existing temperature tape (Integrated bold and nut) <br />
							04. It can substituteexisting temperature tapes, which was imported (Technology that used to be owned by Japan is now developed on our own)<br />
							05. Incidents can be prevented in advance by visual checkup from labor, supervisor, and manager.
                        </p>
                        </div>
                    </div>
                    
                    
                    <div id="sub_product_function">
                        <div class="sub_wrapper">
                            <h4 class="sub_des_tit">
                               Washer Specifications
                            </h4>
			                  
			                  
                            <ul class="sub_des_box02">
                            	<li class="widthFull">
                            		<div style="text-align: right; width: 99.8%;">
                            			<a style="font-size: 12px;">Unit : (mm)</a>
                            		</div>
                            		<table class="table03">
                                      <tr class="back_gray">
                                        <td rowspan="7" style="vertical-align: middle; background: none;"><img alt="" src="resources/sub/A/04/img_03.jpg"></td>
                                          <td>Size(PI)</td><td>D</td>  <td>b</td> <td>t1</td>    <td>t2</td></tr>
                                      <tr><td>8ø</td>      <td>17</td> <td>8.2</td> <td>3</td> <td>1.5</td></tr>
                                      <tr><td>10ø</td>     <td>23</td> <td>10.2</td> <td>3</td> <td>1.5</td></tr>
                                      <tr><td>12ø</td>     <td>26</td> <td>12.2</td> <td>3</td> <td>1.5</td></tr>
                                      <tr><td>14ø</td>     <td>32</td> <td>14.2</td> <td>3</td> <td>1.5</td></tr>
                                      <tr><td>16ø</td>     <td>32</td> <td>16.2</td> <td>3</td> <td>1.5</td></tr>
                                      <tr><td colspan="5">Color : BK(Black), R(Red), B(Blue), Y(Yellow), G(Green)</td></tr>
                                    </table>
                            	</li>
                            </ul>
                        </div>
                    </div>
                    
            </section>
            <!-- #section-3 END-->
        </div>
        <!-- TODO : Main Content -->    
        
        <jsp:include flush="true" page="../../footer.jsp"></jsp:include> 
        
    </div>

</body>
</html>