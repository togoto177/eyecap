jQuery(document).ready(function($){
	
	$('#popupLogin').click(function(event){  //버튼을 클릭 했을시 popupOpen 함수 출력 
        console.log('click');
        popupOpen();	//Popup Open 함수
    });
  
	function popupOpen(){
		var url= "popupLogin.do";    //팝업창 페이지 URL
		var winWidth = 700;
	    var winHeight = 600;
	    var popupOption= "width="+winWidth+", height="+winHeight;    //팝업창 옵션(optoin)
		window.open(url,"",popupOption);
	}
	
});

//파일 버튼 교체 스크립트
/*$(function(){          
	$('#fileSearch').click(function(e){
		e.preventDefault();             
		$('input[type=file]').last().click();               
	});                         
});
*/

$(document).ready(function(){ 
	$(document).on("click", ".fileSearch", function(e) {
		e.preventDefault();
		var i = "";
        i =$(this).attr('idx');
        alert(i);
	$('#uploadfile').click();
	var fileTarget = $('#uploadfile'); 
	fileTarget.on('change', function(){ // 값이 변경되면 
		if(window.FileReader){ // modern browser 
			var filename = $(this)[0].files[0].name; 
			} else { // old IE 
				var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
				} // 추출한 파일명 삽입 
		$(this).siblings('#upload-name'+i).val(filename); 
		}); 
	});    
	
	$('#addbt').click(function(e){
	var fileIndex = $("#fileDiv").children().length+1-1;
	alert(fileIndex);
	$("#fileDiv").append(
			'<div class="filebox preview-image" id="fileIndex">' +
			'<input class="upload-name" id="upload-name'+fileIndex+'" value="Filename">' + 
			'<label for="input-file" class="fileSearch" id="fileSearch'+fileIndex+'" idx="'+fileIndex+'">SEARCH</label>' +
			'<input type="file" id="input-file'+fileIndex+'" name="uploadfile'+fileIndex+'" class="upload-hidden">' +
			'</div>');
	});
	
	$(document).on("click", "#aDelete", function(e) {
		e.preventDefault();
		var i = "";
        i =$(this).attr('idx');
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
			$.ajax({
				type : "GET",
				url : "/board_delete.do?board_seq="+i,
				data : i,
				dataType : "json",
				success : function(data) {
					if(data.code == '1') {
			            alert("게시글이 삭제되었습니다.");
			            location.reload();
			        } else {
			            alert("code:" + data.code + "\n" + "msg:" + data.msg);
			        }    
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "error:" + error);
					location.reload();
				}
			})
		}
		
	});
	});

function writeFnQSubmit() {
	var params = $("#FnQ_form").serialize();
//	var params = new FormData($('#archave_form')[0]);
//	var form = $('#archave_form')[0];
//    var params = new FormData(form);
	
	$.ajax({
		type : "POST",
		url : "/mainBoardAction.do",
		data : params,
		dataType : "json",
		success : function(data) {
			if(data.code == '1') {
	            alert("게시글이 등록되었습니다.");
	            location.reload();
	        } else {
	            alert("code:" + data.code + "\n" + "msg:" + data.msg);
	        }    
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "error:" + error);
		}
	})
}

function modifyFnQSubmit() {
	var params = $("#FnQ_form").serialize();
//	var params = new FormData($('#archave_form')[0]);
//	var form = $('#archave_form')[0];
//    var params = new FormData(form);
	$.ajax({
		type : "POST",
		url : "/ModifyAction.do",
		data : params,
		dataType : "json",
		success : function(data) {
			if(data.code == '1') {
				alert("게시글이 수정되었습니다.");
	            location.reload();
	        } else {
	            alert("code:" + data.code + "\n" + "msg:" + data.msg);
	        } 
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "error:" + error);
		}
	})
	}

function writeAcSubmit() {
	var params = $("#archave_form").serialize();
//	var params = new FormData($('#archave_form')[0]);
//	var form = $('#archave_form')[0];
//    var params = new FormData(form);
	
	$.ajax({
		type : "POST",
		url : "/mainBoardAction.do",
		data : params,
		dataType : "json",
		success : function(data) {
			if(data.code == '1') {
	            alert("게시글이 등록되었습니다.");
	            location.reload();
	        } else {
	            alert("code:" + data.code + "\n" + "msg:" + data.msg);
	        }    
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "error:" + error);
		}
	})
}

function modifyAcSubmit() {
	var params = $("#archave_form").serialize();
//	var params = new FormData($('#archave_form')[0]);
//	var form = $('#archave_form')[0];
//    var params = new FormData(form);
	$.ajax({
		type : "POST",
		url : "/ModifyAction.do",
		data : params,
		dataType : "json",
		success : function(data) {
			if(data.code == '1') {
				alert("게시글이 수정되었습니다.");
	            location.reload();
	        } else {
	            alert("code:" + data.code + "\n" + "msg:" + data.msg);
	        } 
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "error:" + error);
		}
	})
	}

$(document).ready(function() {
	

	
	var startPage = $('#startPageList').val(); //현재 페이지
	var totalPage = $('#totalPage').val(); //전체 페이지
	//--페이지 셋팅
	var pagination = "";
	//--페이지네이션에 항상 10개가 보이도록 조절
	var forStart = 0;
	var forEnd = 0;
	if ((startPage - 5) < 1) {
		forStart = 1;
	} else {
		forStart = startPage - 5;
	}
	if (forStart == 1) {
		if (totalPage > 9) {
			forEnd = 10;
		} else {
			forEnd = totalPage;
		}
	} else {
		if ((startPage + 4) > totalPage) {
			forEnd = totalPage;
			if (forEnd > 9) {
				forStart = forEnd - 9
			}
		} else {
			forEnd = startPage + 4;
		}
	}
	//--페이지네이션에 항상 10개가 보이도록 조절

	//전체 페이지 수를 받아 돌린다.
	for (var i = forStart; i <= forEnd; i++) {
		if (startPage == i) {
			pagination  +=  '<a class="focus" name="page_move" id="page_num" start_page="'+i+'" disabled>'
					'<span>'+ i + '</span></a>';
		} else {
			pagination += ' <a name="page_move" id="page_num" start_page="'+i+'" style="cursor:pointer;" >'
			        '<span>'+ i + '</span></a>';
		}
	}
	//하단 페이지 부분에 붙인다.
	$("#pagination").append(pagination);

	//--페이지 셋팅
	$("#searchBtn").click(function() {
		$.ajax({ 
			type: 'get' , 
			url: '/mainDownList?startPage='+ startPage +'&visiblePages='+visiblePages ,
			dataType : 'text' ,
			success: function(data) { 
				$('#Context').remove();
				$('#pagination').empty();
				$('#a').html(data).trigger("create");
				history.go(-1);
				$("#pagination").append(pagination);
				document.board_search.submit();
			} 
		});
	});

	//하단 네비바 클릭 시 이동
	$(document).on("click","a[name='page_move']",function() {

				var id_check = $(this).attr("id"); //해당 seq값을 가져오기위해 새로 추가
				var totalPage = $('#totalPage').val(); //다운로드 목록 전체 페이지 수
				var visiblePages = 10;//리스트 보여줄 페이지
				var sp = $('#servletPath').val();
				
				if(id_check == "page_num"){
				$('#startPage').val($(this).attr("start_page"));//보고 싶은 페이지
				var startPageList = $('#startPage').val();
				$('#startPageList').val(startPageList);
				var startPage = $('#startPageList').val(); 
				$('#visiblePages').val(visiblePages);
				if (sp == "/mainDownList.do" || sp == "/main.do") {
					
					$.ajax({ 
						type: 'get' , 
						url: '/mainDownList?startPage='+ startPage +'&visiblePages='+visiblePages ,
						dataType : 'text' ,
						success: function(data) { 
							$('#Context').remove();
							$('#pagination').empty();
							$('#a').html(data).trigger("create");
							history.go(-1);
							$("#pagination").append(pagination);
						} 
					});
				}else{
					document.board_form.submit(); 
				}
			}
				if(id_check == "page_first"){
					$.ajax({ 
						type: 'get' , 
						url: '/archaveList.do?startPage=1&visiblePages=10',
						dataType : 'text' , 
						success: function(data) { 
							$('#Context').remove();
							$('#pagination').empty();
							$('#a').html(data).trigger("create");
							history.go(-1);
							$("#pagination").append(pagination);
						} 
					});

				}else if(id_check == "page_last"){
					$.ajax({ 
						type: 'get' , 
						url: '/archaveList.do?startPage='+totalPage+'&visiblePages=10',
						dataType : 'text' , 
						success: function(data) {
							$('#Context').remove();
							$('#pagination').empty();
							$('#a').html(data).trigger("create");
							history.go(-1);
							$("#pagination").append(pagination);
						} 
					});

				}
		});
	

	
});

