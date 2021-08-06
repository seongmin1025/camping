<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<head>
<title>더조은 캠핑/찾아오시는 길</title>
<%@ include file='./../include/lib.jsp'%>

</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content5' style='height:700px;'>
		<div class='col-3' id='campMenubar'>
			<p style='height:30px; margin-bottom:10px; text-align:center;' id='campMenuHead'>
				<span style='margin-top:3px;'>시설안내</span></p>               
			<ul>
				<li><a href='navigate' style='color:black;'><b><u>찾아오시는 길</u></b></a></li>
				<li><a href='viewRooms' style='color:black;'>캠핑장 전경</a></li>
				<li><a href='viewComforts' style='color:black;'>부대시설</a></li>
				<li><a href='viewProducts' style='color:black;'>대여 물품, 판매 물품</a></li>
				<li><a href='guide' style='color:black;'>이용안내</a></li>
				<li><a href='viewSights' style='color:black;'>주변 관광지</a></li>
				<li><a href='#' onclick='window.open("https://www.mangoplate.com/search/%EC%A0%95%EB%B0%9C%EC%82%B0%EC%97%AD")' style='color:black;' target='_blank'>주변 맛집</a></li>
			</ul>
		</div>
		<div class='col-9'>
			<strong>&nbsp;|&nbsp;찾아오시는 길</strong>
			<hr style='width:500px; margin-top:10px;'>
			<div class='row'>
				<div class='col'>										
					<div class="item">
						<img style="height: 400px; width: 600px;">
						<div class="carousel-caption" style="color:black;margin-bottom:320px;font-size:20px; ">
						지도 이미지
						</div><br><br>		
					</div>
					<div style='margin-left: 10px;'>
						<h3>위치</h3><br>
						<p style='font-size: 15px;'>경기 고양시 일산동구 중앙로 1275번길 38-10 &nbsp;
							<button type='button' class='btn-default' onclick='window.open("https://map.naver.com/v5/search/%EB%8D%94%EC%A1%B0%EC%9D%80%EC%BB%B4%ED%93%A8%ED%84%B0%EC%95%84%ED%8A%B8%ED%95%99%EC%9B%90%20%EC%9D%BC%EC%82%B0/place/36860063?c=14111608.2921242,4531533.3920297,15,0,0,0,dh")'>길찾기⇒</button></p> 
						<p style='font-size: 15px;'>Tel 031-123-1234 | Fax 031-123-4567  </p>
					</div>
				</div>
			</div>
		</div>
	</div>							
	
	<%@ include file='./../include/footer.jsp'%>	
</div>
</body>
</html>