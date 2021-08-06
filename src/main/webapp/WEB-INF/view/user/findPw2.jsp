<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/비밀번호 찾기</title>
<%@ include file='./../include/lib.jsp'%>

<script>
$.validator.addMethod(
	      'myPassword',
	      (v, e) => { 
	    	  return /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,12}$/.test(v);
	      }, '에러.');
	      
$(() => {
	$('form').validate({
		rules: {
			newPassword: {
				required: true,
				myPassword: true
			},
			newPasswordConfirm: {
		        required: true,
		        equalTo: '#newPassword'
		    }
		},
		messages: {
			newPassword: {
				required: '숫자와 문자를 조합하여 8~12자리를 입력하세요.',
				myPassword: '숫자와 문자를 조합하여 8~12자리를 입력하세요.'
			},
			newPasswordConfirm: {
	            required: '입력하신 암호와 일치하지 않습니다.',
	            equalTo: '입력하신 암호와 일치하지 않습니다.'
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
	height:220px;
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
	margin-top:100px;
	font-size:15px;
}

::-webkit-input-placeholder {
	font-size:5px;
}

#updateModal {
	text-align:center;
	margin-top:300px;
}

#updateModal button {
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
			<strong>&nbsp;&nbsp;|&nbsp;비밀번호 찾기</strong>
			<hr>
			<br>
			<p style='font-size:12px;'>&nbsp;<b>새로운 비밀번호를 설정해 주세요.</b></p>
			<div>
				<form>	
					<table class='table table-bordered' id='classTop'>
						<tbody>
							<tr><th style='background-color:#d2d2d2; text-align:center;'>새 비밀번호</th><td>
							<input id='newPassword' name='newPassword' type='text' style='margin-left:10px;'/></td></tr>
							<tr><th style='background-color:#d2d2d2; text-align:center;'>새 비밀번호 확인</th><td>
							<input id='newPasswordConfirm' name='newPasswordConfirm' type='text' style='margin-left:10px;'/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
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
				<button type='submit' class='btn-sm' data-toggle='modal' data-target='#updateModal'
					id='updateBtn' style='background-color:#323232; color:white;'>확인</button>
			</form>	
		</div>
	</div>
		
	<div id='updateModal' class='modal fade' tabindex='-1'>
		<div class='modal-dialog modal-sm'>
			<div class='modal-content'>
				<div class='modal-body'>
					<p style='margin-top:20px;'>비밀번호가 변경되었습니다.</p>
					<br>
					<button type='button' class='btn' data-dismiss='modal'
						style='background-color:#323232; color:white;' onclick='location.href="login"'>확인</button>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file='./../include/footer.jsp'%>
</div>
</body>
</html>