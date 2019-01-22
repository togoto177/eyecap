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
                      <a href="">Insulation cap responsive to overheat</a>
                      <a href="" class="current">CertificateCAP</a>
                    </div>
                </div>
            </div>
            </section>
            
            <jsp:include flush="true" page="../sub_menu.jsp"></jsp:include>
            <div class="sub_wrapper">
                <h3 class="sub_content_title" style="margin:55px 0;">
                  Insulation cap responsive to overheat
                </h3>
            </div>
           	<div class="btnDiv">
           		<a class="btnCap" href="pop02.do" style="color: #f4de36;">CertificateCAP</a><a class="btnCap" id="priceBtn">PriceListCap</a><a class="btnCap" href="/resources/sub/A/test/CAPspecification.xlsx" target="_blank">Specification&darr;</a>
           	</div>
           	
           	<div class="sub_wrapper">
                <h4 class="sub_des_tit2">
                    <a href="/resources/sub/A/test/CAP_heatTest.pdf" target="_blank"><u style="color: #3f51b5;">TESTING REPORT <img style="width: 20px;" alt="excel_Img" src="/resources/excel.jpg"></u></a>
                </h4>
            </div>
           	
           	<div class="sub_wrapper">
           		<ul class="product_top_gallery">
                    <li>
                    	<img alt="img" src="resources/sub/A/test/107.jpg">
                    </li>
                    <li>
                    	<img alt="img" src="resources/sub/A/test/108.jpg">
                    </li>
                    <li>
                    	<img alt="img" src="resources/sub/A/test/109.jpg">
                    </li>
                    <li>
                    	<img alt="img" src="resources/sub/A/test/110.jpg">
                    </li>
                </ul>
           	</div>
        </div>
        
        <jsp:include flush="true" page="../footer.jsp"></jsp:include> 
        
    </div>

</body>
</html>