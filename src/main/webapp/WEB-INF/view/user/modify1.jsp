<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/회원정보 수정</title>
<%@ include file='./../include/lib.jsp'%>

<script>
$(() => {
	$('form').validate({
		rules: {
			password: {
				required: true
			}
		},		
		messages: {
			password: {
				required: '비밀번호를 입력해 주세요.'
			}
		},
		submitHandler: () => $('form').submit()
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
	width: 550px;
	height: 60px;
}

th {
	border: 1px solid;
	width: 100px;
	height: 40px;
	text-align: center;
	background-color: grey;
}

td {
	border: 1px solid;
	height: 40px;
}	

.rect2{
  top: 30px;
  left: 170px;
  position: relative;
  width: 80px;
  border: 1px solid;
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
	
	<div class='row' id='content' style='height:500px;'>
		<div class='col-3' id='menubar'>
			<p style=	'height:30px; margin-bottom:10px; text-align:center;' id='menuHead'>
				<span style='margin-top:3px;'>마이페이지</span></p>               
			<ul>
				<li><a href='modify1' style='color:black;'><b><u>회원정보 수정</u></b></a></li>
				<li><a href='../reservation/checkRes' style='color:black;'>예약현황</a></li>
				<li><a href='../review/listPosts' style='color:black;'>나의 게시글</a></li>
				<li><a href='delete' style='color:black;'>회원탈퇴</a></li>
			</ul>                     
		</div>
		<div class='col-8'>
			<strong>&nbsp;|&nbsp;마이페이지</strong>
			<hr style='width:500px; margin-top:10px;'><br>
			<u><h4 class='text-center'>회원정보 수정</h4></u><br><br>
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
						<button type='button' class='btn  rect2' onclick='location.href="../reservation/checkRes"'>취소</button>
						<button type='submit' id='fixBtn' class='btn btn rect2' onclick='location.href="modify2"'>확인</button>
					</form>	
				</div>
			</div>
		</div>
	</div>					
	
	<%@ include file='./../include/footer.jsp'%>
</div>
</body>
</html>