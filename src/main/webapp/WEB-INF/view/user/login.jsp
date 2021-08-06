<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/로그인</title>
<%@ include file='./../include/lib.jsp'%>

<script>
function init() {
	$('#loginGoBtn').click(() => {
		var userId = $('#userId').val();
		var userPw = $('#userPw').val();
		
		if(!userId) {
			$('#inputPwErr').text('');
			$('#userId').focus();
			$('#inputIdErr').text(' 아이디를 입력하세요. ');
		} else if(!userPw) {
			$('#inputIdErr').text('');
			$('#userPw').focus();
			$('#inputPwErr').text(' 비밀번호를 입력하세요. ');
		} else {
			$('#inputIdErr').text('');
			$('#inputPwErr').text('');
			
			
		}
		
		$.ajax({
			url: 'login',
			method: 'post',
			data: {
				userId: userId,
				userPw: userPw,
				userIdStorageCheck: $('#userIdStorageCheck:checked').val()
			},
			success: function(data) {
				if(userId == 'admin') location.href='../admin';
				else location.href='./../';
			}
		}).fail(err => {
			$('#inputPwErr').text(' 아이디 또는 비밀번호를 확인해 주세요. ');
		});
	});
}

$(init);
</script>

<style>
label {
	color:dark;
	font-weight:normal;
}
	
#content {
	margin-top:50px;
	text-align:center;
	width:850px;
	height:400px;
}
	
#content #join {
	display:inline-block;
	width:250px;
	text-align:left;
	margin-left:270px;
}

#content #joinBtn {
	display:inline-block;
	width:250px;
	height:100px;
	text-align:center;
	margin-left:285px;	
}

#content #join hr {
	margin:5px;
	width:240px;
}

#content #joinList {
	display:inline-block;
	width:250px;
	height:50px;
	text-align:center;
	margin-left:300px;
}
	
#content #join > div:nth-child(3) {
	width:300px;
	height:70px;
}
	
#content #join > div > form:first-child {
	display:inline-block;
	width:250px;
	float:left;
}
	
#content #join > dic > form:last-child {
	display:inline-block;
	width:50px;
	float:left;
}
	
#content #join > div > form:first-child input {
	width:250px;
	height:40px;
	margin:2px;
}
	
#content #join > div > form:first-child button {
	width:250px;
	height:40px;
	margin-top:12px;
	font-size:20px;
}
	
#content #join > div:last-child a span {
	color:black;
	margin:0 5px 0 5px;
}

#content #joinBtn.col button {
	width:250px;
	height:40px;
	margin-top:12px;
	font-size:20px;
}

#content #center {
	display:inline-block;
	width:250px;
	line-height:25px;
	border:1px solid grey;
	padding:10px;
	position:relative;
}

::-webkit-input-placeholder {
	font-size:15px;
}
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>
	
	<c:if test='${not empty cookie.loginCookie}'>
		<c:set value='checked' var='checked'/>
	</c:if>
	
	<div class='row' id='content'>
		<div class='col' id='join'>
			<strong>&nbsp;&nbsp;|&nbsp;로그인</strong>
			<hr>
			<div>
				<form onsubmit='return false'>
					<input class='form-control' type='text' name='userId' placeholder='아이디' id='userId' value='${cookie.loginCookie.value}'><span id='inputIdErr'></span>
					<input class='form-control' type='password' name='userPw' placeholder='비밀번호' id='userPw'><span id='inputPwErr'></span>
					<button class='btn btn-primary' id='loginGoBtn'>로그인</button>
				</form>
			</div>
		</div>
		<br><br><br>
		<form>
			<div class='row'>
				<div class='col' id='joinList'>										
					<input type='checkbox' class='form-check-input' id='userIdStorageCheck' name='userIdStorageCheck' ${checked}/>			
					<label for='userIdStorageCheck'>아이디 저장&nbsp;</label>
					<input type='checkbox' style='margin-left:4px;' class='form-check-input' id='autoLoginCheck'/>
					<label for='autoLoginCheck'>&nbsp;&nbsp;&nbsp;자동 로그인</label>
					<br>
					<a href='findId'><span>아이디 찾기</span></a>
					<span>/</span>
					<a href='findPw1'><span>비밀번호 찾기</span></a>
				</div>
			</div>
			<div class='row'>
				<div class='col' id='joinBtn'>
					<button type='button' class='btn btn-secondary' onclick='location.href="join"'>회원가입</button>
				</div>
			</div>
		</form>
	</div>
	
	<%@ include file='./../include/footer.jsp'%>
</div>
</body>
</html>