<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 관리자/공지사항</title>
<%@ include file='./../../include/lib.jsp'%>

<style>
#content {
	margin-top:30px;
	width:850px;
	height:500px;
}
	
th, td {
	text-align: center;
}

#title {
	text-align: left;
}

#contentview {
	text-align: left;
	width:850px;
	height:300px;
}

.btn {
	border: 1px solid black;

}

table {
    border: 1px solid;
}

#coment {
	width:300px;
}

#form-commentInfo {
	width: 100%;
}

#commnet-count {
	margin-bottom: 10px;
}

#comment-input {
	width: 80%;
	height: 3.3em;
}

#submit {
	width: 5em;
	height: 3.3em;
	font-size: 15px;
	font-weight: bold;
	color: black;
}

table {
	font-size: 12px;
}

#confirmModal {
	text-align:center;
	margin-top:300px;
}

#confirmModal2 {
	text-align:center;
	margin-top:300px;
}
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../../include/header.jsp'%>
	
	<br>
	<div class='row' id='content' style='height:800px;'>
		<div class='col-3' id='menubar'>
			<p style='height:30px; margin-bottom:10px; text-align:center;' id='menuHead'>
				<span style='margin-top:3px;'>커뮤니티</span></p>               
			<ul>
				<li><a href='listPosts' style='color:black;'><b><u>공지사항</u></b></a></li>
				<li><a href='./../review/listPosts' style='color:black;'>캠핑장 리뷰</a></li>
				<li><a href='./../inquiry/listPosts' style='color:black;'>문의하기</a></li>
			</ul>             
		</div>
		<div class='col-9'>
			<h4><strong>&nbsp;|&nbsp;공지사항</strong></h4>
			<div class='row'>
				<div class='col'>					
					<input type='text' class='form-control' style='width:600px; height:50px; margin-top:10px;
						background-color:#d2d2d2;' placeholder='제목을 입력해 주세요.' id='writingTitle' maxlength='30'/>
					<textarea name='content' placeholder='&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;내용을 입력해 주세요.' id='writingContent'
						 style='width: 600px; height: 500px;'></textarea>
					
					<form action='' method='post' enctype='multipart/form-data' name='FileUpload'>
					    <input type='file' name='FileName' style='width: 600px; margin-top:10px;' multiple>
					</form>
		
					<div class='row' align ='right'>
						<div class='col'>
							<button type='button' class='btn btn-default btn-md' style='margin-top:10px;'  
								id='cancelOkBtn' data-toggle='modal' data-target='#confirmModal' >취소</button>
							<button type='button' class='btn btn-default btn-md' style='margin-top:10px; background-color:#828282;'  
								id='writingOkBtn' data-toggle='modal' data-target='#confirmModal2'>완료</button>									
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id='confirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p style='margin-top:20px;'>작성을 취소하시겠습니까?</p>
				<br>
				<button type='button' class='btn btn-default' data-dismiss='modal'
					style='color:black; border:0.1em solid gray'>취소</button>
				<button type='button' class='btn' data-dismiss='modal' id='completeBtn'
					data-toggle='modal' onclick='location.href="listPosts"'
					style='background-color:#323232; color:white;'>확인</button>
			</div>
		</div>
	</div>
</div>
   
<div id='confirmModal2' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p style='margin-top:20px;'>글이 등록되었습니다.</p>
				<br>
				<button type='button' class='btn' data-dismiss='modal' id='completeBtn'
					data-toggle='modal' onclick="location.href='listPosts'"
					style='background-color:#323232; color:white;'>확인</button>	
			</div>
		</div>
	</div>
</div>
</body>
</html>