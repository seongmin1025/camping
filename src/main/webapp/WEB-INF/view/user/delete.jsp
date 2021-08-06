<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/회원탈퇴</title>
<%@ include file='./../include/lib.jsp'%>

<script>
$.validator.addMethod('pwCheck', (v, e) => {
	var userNumber = 0;
	var myId = '<%= session.getAttribute("userId")%>';
	var myPw = v;
	
	$.ajax({
		url:'pwChk',
		async: false,
		data: {
			userId: myId,
			userPw: myPw
		}
	}).done(result => {
		userNumber = result.userNumber;
	});
	return (userNumber && userNumber != 0);
}, '에러.');

$(() => {
	$('#userDelBtn').click(() => {
		$('form').validate({
			rules: {
				password: {
					required: true,
					pwCheck: true
				}
			},
			messages: {
				password: {
					required: '비밀번호를 입력해 주세요.',
					pwCheck: '잘못된 비밀번호입니다.'
				}
			},
			submitHandler: function(form) {
				$('#userDelConfirmModal').modal();
				
				$('#userDelConfirmBtn').click(() => {
					$.ajax({
						url:'deleteUser' + '<%= session.getAttribute("userNumber")%>',
						method: 'delete',
						async: false
					}).done(result => {
						if(result == '1') {
							$('#userDelCompleteModal').modal({backdrop:'static', keyboard:false});
							
							$('#userDelCompleteBtn').click(() => {
								location.href='logout';
							});
						}
					}).fail(err => {
						$('#userDelFailModal').modal();
					});
				});
			}
		});
	});
});
</script>
<style>
#content {
	margin-top:30px;
	width:850px;
	height:500px;
}

table {
	width:550px;
	height:60px;
}

th {
	border:1px solid;
	width:100px;
	height:40px;
	text-align:center;
	background-color:grey;
}

td {
	border:1px solid;
	height:40px;
}	

#cancelBtn {
	top:20px;
	left:170px;
	position:relative;
	border:1px solid;
}

#userDelBtn {
	background-color:#186322;
	color:white;
	top:20px;
	left:170px;
	position:relative;
	border:1px solid;
}

label.error{
	margin-left:1rem;
	color:red;
	font-size: 0.7rem;
}

.modal {
	text-align:center;
	margin-top:300px;
}
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content' style='height:500px;'>
		<div class='col-3' id='menubar'>
			<p style='height:30px; margin-bottom:10px; text-align:center;' id='menuHead'>
				<span style='margin-top:3px;'>마이페이지</span>
			</p>               
			<ul>
				<li><a href='modify1' style='color:black;'>회원정보 수정</a></li>
				<li><a href='../reservation/checkRes' style='color:black;'>예약현황</a></li>
				<li><a href='../review/listPosts' style='color:black;'>나의 게시글</a></li>
				<li><a href='delete' style='color:black;'><b><u>회원탈퇴</u></b></a></li>
			</ul>                     
		</div>
		<div class='col-8'>
			<strong>&nbsp;|&nbsp;마이페이지</strong>
			<hr style='width:500px; margin-top:10px;'><br>
			<u><h4 class='text-center'>회원탈퇴</h4></u><br><br>		
			<div class='row'>
				<div class='col'>	
					<form>				
						<table>
							<tbody>
								<tr>
									<th>비밀번호</th>
									<td>&nbsp;<input type='password' name='password' maxlength="12" required/></td>
								</tr>
							</tbody>
						</table>
							<button type='button' class='btn' id='cancelBtn'
								onclick='location.href="../reservation/checkRes"'>취소</button>
							<button type='submit' id='userDelBtn' class='btn'>확인</button>		
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file='./../include/footer.jsp'%>
</div>

<div id='userDelConfirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>				
			<div class='modal-body'>
				<p style='margin-top:20px;'>정말 탈퇴하시겠습니까?</p><br>
				<button type='button' class='btn' data-dismiss='modal'
					style='background-color:white; color:black; border:1px solid black;'>취소</button>
				<button type='button' class='btn' data-dismiss='modal'
					id='userDelConfirmBtn' style='background-color:#186322; color:white;'>확인</button>
			</div>
		</div>
	</div>
</div>

<div id='userDelCompleteModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p style='margin-top:20px;'>회원탈퇴가 완료되었습니다.</p><br>
				<button type='button' class='btn' data-dismiss='modal'
					id='userDelCompleteBtn' style='background-color:#186322; color:white;'>확인</button>
			</div>
		</div>
	</div>
</div>

<div id='userDelFailModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p style='margin-top:20px;'>회원탈퇴에 실패했습니다.</p><br>
				<button type='button' class='btn' data-dismiss='modal'
					style='background-color:#186322; color:white;'>확인</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>