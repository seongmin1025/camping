<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/비밀번호 찾기</title>
<%@ include file='./../include/lib.jsp'%>

<script>	      
$(() => {
	$('form').validate({
		rules: {
			Id: {
				required: true
			},
			name: {
		        required: true
		    },
		    birth: {
		    	required: true
		    },
		    num: {
		    	required: true
		    }
		},
		messages: {
			Id: {
				required: '아이디를 입력해 주세요.'
			},
			name: {
	            required: '이름을 입력해 주세요.'
	       	},
	       	birth: {
	            required: '생년월일을 입력해 주세요..'
	       	},
	       	num: {
		    	required: '인증번호를 입력하세요'
		    },
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
	height:270px;
}
	
#content #join {
	display:inline-block;
	width:600px;
	height:100px;
	text-align:left;
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
	margin-top:10px;
	font-size:15px;
}

::-webkit-input-placeholder {
	font-size:5px;
}

#confirmModal {
	text-align:center;
	margin-top:300px;
}

table {
	width:100%;
}

input[type="text"] {
	display:inline;
	width:250px;
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
			<strong>&nbsp;&nbsp;|&nbsp;비밀번호 찾기</strong>
			<hr>
			<div>
				<form>
				<table class='table table-bordered' id='classTop'>
					<tbody>
						<tr><th style='background-color:#d2d2d2; text-align:center;'>아이디</th><td>
							<input name='Id' id='Id' type='email' style='margin-left:10px; width: 250px;'/></td></tr>
						<tr><th style='background-color:#d2d2d2; text-align:center;'>이름</th><td>
							<input name='name' id='name' type='text' style='margin-left:10px;'/></td></tr>
						<tr><th style='background-color:#d2d2d2; text-align:center;'>생년월일</th><td>
							<input name='birth' type='date' style='margin-left:10px;'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
						<tr><th style='background-color:#d2d2d2; text-align:center;'>인증번호</th><td>
							<input type='text' style='margin-left:10px;' 
								name='num' placeholder='가입하신 이메일로 발송된 인증번호를 입력하세요.'/>
							<button class='btn btn-sm' id='confirmBtn' data-toggle='modal' data-target='#confirmModal'
								style='height:25px; text-align:center;
								font-size:10px; background-color:#323232; color:white;'>인증번호 발송</button>
					</tbody>
				</table>
				</form>					
			</div>
		</div>
	</div>						
	<div class='row'>
		<div class='col' id='joinBtn' style='margin-left:320px; margin-bottom:50px;'>
			<form>
				<button type='button' class='btn btn-default btn-sm' style='margin-left:40px;
					border:0.1em solid gray' onclick='location.href="login"'>취소</button>
				<button type='submit' id='checkBtn' class='btn-sm'
					style='background-color:#323232; color:white;' onclick='location.href="findPw2"'>확인</button>
			</form>
		</div>
	</div>		
	
	<div id='confirmModal' class='modal fade' tabindex='-1'>
		<div class='modal-dialog modal-sm'>
			<div class='modal-content'>
				<div class='modal-body'>
					<p style='margin-top:20px;'>인증번호가 발송되었습니다.</p>
					<br>
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