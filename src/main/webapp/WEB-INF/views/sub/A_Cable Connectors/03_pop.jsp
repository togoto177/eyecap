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
	$("#A_li_03").attr("class","active border_bd");
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
                        <a href="A_03.do">Tubular Terminal lug responsive to overheat</a>
                        <a href="pop03.do" class="current">CertificateLug</a>
                      </div>
                </div>
            </div>
            </section>
            
            <jsp:include flush="true" page="../sub_menu.jsp"></jsp:include>
            <div class="sub_wrapper">
                <h3 class="sub_content_title" style="margin:55px 0;">
                  Tubular Terminal lug responsive to overheat
                </h3>
            </div>
           
           	<div class="sub_wrapper">
                <h4 class="sub_des_tit2">
                    CertificateLug
                </h4>
            </div>
           	
           	<div class="sub_wrapper">
           		<ul class="product_top_gallery">
                    <li class="borderLi">
                    	<img alt="img" src="resources/sub/A/A_03/img_16.jpg">
                    </li>
                    <li class="borderLi">
                    	<img alt="img" src="resources/sub/A/A_03/img_17.jpg">
                    </li>
                    <li class="borderLi">
                    	<img alt="img" src="resources/sub/A/A_03/img_18.jpg">
                    </li>
                    <li class="borderLi">
                    	<img alt="img" src="resources/sub/A/A_03/img_19.jpg">
                    </li>
                </ul>
           	</div>
        </div>
        
        <jsp:include flush="true" page="../footer.jsp"></jsp:include> 
        
    </div>

</body>
</html>