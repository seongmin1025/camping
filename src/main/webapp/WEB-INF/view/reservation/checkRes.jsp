<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/예약현황</title>
<%@ include file='./../include/lib.jsp'%>

<script>

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
				<li><a href='../user/modify1' style='color:black;'>회원정보 수정</a></li>
				<li><a href='checkRes' style='color:black;'><b><u>예약현황</u></b></a></li>
				<li><a href='../review/listPosts' style='color:black;'>나의 게시글</a></li>
				<li><a href='../user/delete' style='color:black;'>회원탈퇴</a></li>
			</ul>                     
		</div>
		<div class='col-8'>
			<strong>&nbsp;|&nbsp;마이페이지</strong>
			<hr style='width:500px; margin-top:10px;'>
			<br>
			<u><h4 class='text-center mb-0'>예약현황</h4></u>
			<br>
			
			<div class='row m-0'>
				<div class='col'>
					<table>
						<tbody>
							<tr>
								<td>&nbsp;예약자명</td>
								<td>&nbsp;강현후</td>
							</tr>
							<tr>
								<td>&nbsp;전화번호</td>
								<td>&nbsp;010-1234-1234</td>
							</tr>
							<tr>
								<td>&nbsp;이메일</td>
								<td>&nbsp;123@naver.com</td>
							</tr>
							<tr>
								<td>&nbsp;객실명</td>
								<td>&nbsp;글램핑 1호</td>
							</tr>
							<tr>
								<td>&nbsp;예약일</td>
								<td>&nbsp;2020-03-11 ~ 2020-03-13</td>
							</tr>
							<tr>
								<td>&nbsp;대여 물품 목록</td>
								<td>&nbsp;바비큐 그릴</td>
							</tr>
							<tr>
								<td>&nbsp;다목적 구장 사용 시간</td>
								<td>&nbsp;2시 ~ 4시</td>
							</tr>
							<tr>
								<td>&nbsp;이용 요금</td>
								<td>&nbsp;325000원</td>
							</tr>
						</tbody>
				   	  </table>
					</div>
				</div>
			</div>
		</div>							
	
	<%@ include file='./../include/footer.jsp'%>	
</div>
</body>
</html>