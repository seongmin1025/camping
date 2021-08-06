<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/아이디 찾기</title>
<%@ include file='./../include/lib.jsp'%>

<script>	      
$(() => {
	$('form').validate({
		rules: {
			name: {
		        required: true
		    },
		    phone: {
		    	required: true
		    }
		},
		messages: {
			name: {
				required: '이름을 입력해 주세요.'
			},
			phone: {
	            required: '전화번호를 입력해주세요.'
	       	}
		},
		submitHandler: () => $('form').submit()
	});
});

</script>
<style>
label {
	color:dark;
	font-weight:normal;
}
	
#content {
	margin-top:30px;
	text-align:center;
	width:850px;
	height:180px;
}
	
#content #join {
	display:inline-block;
	width:600px;
	height:100px;
	text-align:left;
	margin-left:50px;	
}

#content #join hr {
	margin:5px;
	width:650px;
}
	
#classTop {
	margin-top:20px;
}

#content #joinBtn.col button {
	width:50px;
	height:40px;
	margin-top:50px;
	font-size:15px;
}

::-webkit-input-placeholder {
	font-size:15px;
}

#searchModal {
	text-align:center;
	margin-top:250px;
}

#searchModal button {
	text-align:center;
}

table {
	width:100%;
}

input[type="text"] {
	display:inline;
	width:200px;
	height:25px;
}	

label.error{
	margin-left: 1rem;
	color: red;
}	
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>
	
	<div class='row' id='content'>
		<div class='col' id='join'>
			<strong>&nbsp;&nbsp;|&nbsp;아이디 찾기</strong>
			<hr>
			
			<div>
			<form>			
				<table class='table table-bordered' id='classTop'>
					<tbody>
						<tr><th style='background-color:#d2d2d2; text-align:center;'>이름</th><td>
						<input name='name' type='text' style='margin-left:10px;'/></td></tr>
						<tr><th style='background-color:#d2d2d2; text-align:center;'>전화번호</th><td>
						<input name='phone' type='text' style='margin-left:10px;'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
					</tbody>
				</table>
				</form>					
			</div>
			
		</div>	
	</div>
				
	<div class='row'>
		<div class='col' id='joinBtn' style='margin-left:320px; margin-bottom:50px;'>
			<form>		
			<button type='button' class='btn btn-secondary btn-sm' style='margin-left:40px;'
				onclick='location.href="login"'>취소</button>
			<button type='submit' class='btn btn-secondary btn-sm' id='searchBtn'
				data-toggle='modal' data-target='#searchModal'
				style='background-color:#323232; color:white;'>조회</button>
			</form>
		</div>
	</div>			
	
	<div id='searchModal' class='modal fade' tabindex='-1'>
		<div class='modal-dialog'>
			<div class='modal-content'>
				<div class='modal-body'>
					<p style='margin-top:20px;'><strong>고객님의 정보와 일치하는 아이디 입니다.</strong></p>
					<br>
					<span style='border:1px solid grey; padding:10px;'>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디:th***eun@gmail.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<br><br>
					<button type='button' class='btn' data-dismiss='modal'
						style='background-color:#323232; color:white;'>확인</button>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file='./../include/footer.jsp'%>	
</div>
</body>
</html>