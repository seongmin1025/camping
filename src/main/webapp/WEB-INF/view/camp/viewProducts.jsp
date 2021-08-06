<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<head>
<title>더조은 캠핑/대여 물품, 판매 물품</title>
<%@ include file='./../include/lib.jsp'%>

<style>	
table {
    width: 250px;
    height: 250px;
}	
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content5' style='height:600px;'>
		<div class='col-3' id='campMenubar'>
			<p style='height:30px; margin-bottom:10px; text-align:center;' id='campMenuHead'>
				<span style='margin-top:3px;'>시설안내</span></p>               
			<ul>
				<li><a href='navigate' style='color:black;'>찾아오시는 길</a></li>
				<li><a href='viewRooms' style='color:black;'>캠핑장 전경</a></li>
				<li><a href='viewComforts' style='color:black;'>부대시설</a></li>
				<li><a href='viewProducts' style='color:black;'><b><u>대여 물품, 판매 물품</u></b></a></li>
				<li><a href='guide' style='color:black;'>이용안내</a></li>
				<li><a href='viewSights' style='color:black;'>주변 관광지</a></li>
				<li><a href='#' onclick='window.open("https://www.mangoplate.com/search/%EC%A0%95%EB%B0%9C%EC%82%B0%EC%97%AD")' style='color:black;' target='_blank'>주변 맛집</a></li>
			</ul>
		</div>
		<div class='col-9'>
			<strong>&nbsp;|&nbsp;대여 물품, 판매 물품</strong>
			<hr style='width:500px; margin-top:10px;'>
			<div class='row'>
				<div class='col' style='margin-left:20px;'>					
				<h5><u><strong>대여 물품</strong></u></h5>
				 <table border="1">
				 	<tr>
					<td align=center>바베큐 그릴</td>
	    			<td align=center>15,000원</td>
	    			</tr>
					<tr>
	    			<td align=center>가스 버너</td>
	    			<td align=center>5,000원</td>
					</tr>
					<tr>
	   				<td align=center>멀티탭</td>
	   				<td align=center>1,000원</td>	   			
					</tr>
					<tr>
	   				<td align=center>담요(2장)</td>
	   				<td align=center>1,000원</td>	   			
					</tr>
   				</table><br>  				
   				<h5><u><strong>판매 물품</strong></u></h5>	
   				<p style="font-size: 14;">추가 숯, 추가 불판, 부탄가스, 장작, 삼겹살, 주류(소주, 맥주), 나무젓가락, 세면용품</p>		
				</div>
			</div>
		</div>
	</div>							
	
	<%@ include file='./../include/footer.jsp'%>
</div>
</body>
</html>