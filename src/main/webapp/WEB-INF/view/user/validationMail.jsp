<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/인증번호</title>
<%@ include file='./../include/lib.jsp'%>

<style>
#content {
	margin-top:30px;
	width:850px;
	height:500px;
}
	
#number {
	width: 600px;
	height: 150px;
	border-top: 1px solid black;
	border-bottom: 1px solid black;
	background: lightgray;
}
</style>
</head>
<body>
<div class='container'>
	<div class='row' id='content' style='height:1000px;'>
		<div class='col'>
			<strong>&nbsp;|&nbsp;더조은 캠핑 회원가입 인증번호를 알려드립니다.</strong>
			<hr style='width:500px; margin-top:10px;'>
			<div class='row'>
				<div class='col'>									
				<p style='font-size: 20;margin-left: 20px;'>안녕하세요. 더조은 캠핑을 찾아주셔서 감사합니다.</p>
				<p style='font-size: 15;margin-left: 20px;'>인증번호를 다음과 같이 알려드립니다.</p>
				<p style='font-size: 15;margin-left: 20px;'>인증번호 6자리를 진행 중인 화면에 입력해 주세요.</p>
				<div id='number' style='margin-left: 25px;margin-top: 50px;'>
					<li align=center style='font-size: 25px; font-weight:bold; margin-top:50px;]'>인증번호: 337886</li>
				</div>
				</div>
			</div>
		</div>
	</div>							
</div>
</body>
</html>