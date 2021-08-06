<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/예약하기</title>
<%@ include file='./../include/lib.jsp'%>

<style>

#cancelReservationConfirmModal {
	text-align:center;
	margin-top:300px;
}

#cancelReservationModal {
	text-align:center;
	margin-top:300px;
}

</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content4' style='height:500px;'>
		<div class='col'>
			<div class='jumbotron'>
				<h1>예약이 완료되었습니다.</h1> <br>
				<h1>이용해 주셔서 감사합니다.</h1>
			</div>		
			<div class='row'>
				<div class='col text-right'>
				<a href='checkRes' type='button' class='btn btn-outline-secondary'>확인</a>
				</div>					
			</div>					
		</div>
	</div>							
	
	<%@ include file='./../include/footer.jsp'%>
</div>
</body>
</html>