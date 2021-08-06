<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<head>
<title>더조은 캠핑/캠핑장 전경</title>
<%@ include file='./../include/lib.jsp'%>

</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>
	
	<div class='row' id='content5' style='height:1600px;'>
		<div class='col-3' id='campMenubar'>
			<p style='height:30px; margin-bottom:10px; text-align:center;' id='campMenuHead'>
				<span style='margin-top:3px;'>시설안내</span></p>               
			<ul>
				<li><a href='navigate' style='color:black;'>찾아오시는 길</a></li>
				<li><a href='viewRooms' style='color:black;'><b><u>캠핑장 전경</u></b></a></li>
				<li><a href='viewComforts' style='color:black;'>부대시설</a></li>
				<li><a href='viewProducts' style='color:black;'>대여 물품, 판매 물품</a></li>
				<li><a href='guide' style='color:black;'>이용안내</a></li>
				<li><a href='viewSights' style='color:black;'>주변 관광지</a></li>
				<li><a href='#' onclick='window.open("https://www.mangoplate.com/search/%EC%A0%95%EB%B0%9C%EC%82%B0%EC%97%AD")' style='color:black;' target='_blank'>주변 맛집</a></li>
			</ul>
		</div>
		<div class='col-9'>
			<strong>&nbsp;|&nbsp;캠핑장 전경</strong>
			<hr style='width:500px; margin-top:10px;'>
			<div class='row'>
				<div class='col'>
					<div id='carouselMain1' class='carousel slide' data-ride='carousel'>     					
      					<div class='carousel-inner'>
         				<div class='carousel-item active'>
		           			<img style='height: 400px; width: 600px; background: lightgray;'/>
				            <div class='carousel-caption text-dark'>
				               <h5 style='margin-bottom: 150px;'>캠핑장 전경 이미지 1</h5>
				            </div>
         				</div>
			         	<div class='carousel-item'>
				            <img style='height: 400px; width: 600px; background: lightgray;'/>
					            <div class='carousel-caption text-dark'>
					               <h5 style='margin-bottom: 150px;'>캠핑장 전경 이미지 2</h5>
					        	</div>
			         	</div>
      					</div>   
					      <a href='#carouselMain1' class='carousel-control-prev' data-slide='prev'>
					         <span class='carousel-control-prev-icon'></span>
					      </a>
					      <a href='#carouselMain1' class='carousel-control-next' data-slide='next'>
					         <span class='carousel-control-next-icon'></span>
					      </a>   
   					</div>	 								
				</div>			
			</div><br>					
			<strong>&nbsp;|&nbsp;글램핑</strong>
			<hr style='width:500px; margin-top:10px;'>
			<div class='row'>
				<div class='col'>
					<div id='carouselMain2' class='carousel slide' data-ride='carousel'>     					
      					<div class='carousel-inner'>
         				<div class='carousel-item active'>
		           			<img style='height: 400px; width: 600px; background: lightgray;'/>
				            <div class='carousel-caption text-dark'>
				               <h5 style='margin-bottom: 150px;'>글램핑 객실 이미지 1</h5>
				            </div>
         				</div>
			         	<div class='carousel-item'>
				            <img style='height: 400px; width: 600px; background: lightgray;'/>
					            <div class='carousel-caption text-dark'>
					               <h5 style='margin-bottom: 150px;'>글램핑 객실 이미지 2</h5>
					        	</div>
			         	</div>
      					</div>   
					      <a href='#carouselMain2' class='carousel-control-prev' data-slide='prev'>
					         <span class='carousel-control-prev-icon'></span>
					      </a>
					      <a href='#carouselMain2' class='carousel-control-next' data-slide='next'>
					         <span class='carousel-control-next-icon'></span>
					      </a>   
   					</div>	 								
				</div>			
			</div><br>			
			<strong>&nbsp;|&nbsp;캐러밴</strong>
			<hr style='width:500px; margin-top:10px;'>
			<div class='row'>
				<div class='col'>
					<div id='carouselMain3' class='carousel slide' data-ride='carousel'>     					
      					<div class='carousel-inner'>
         				<div class='carousel-item active'>
		           			<img style='height: 400px; width: 600px; background: lightgray;'/>
				            <div class='carousel-caption text-dark'>
				               <h5 style='margin-bottom: 150px;'>캐러밴 객실 이미지 1</h5>
				            </div>
         				</div>
			         	<div class='carousel-item'>
				            <img style='height: 400px; width: 600px; background: lightgray;'/>
				            <div class='carousel-caption text-dark'>
				               <h5 style='margin-bottom: 150px;'>캐러밴 객실 이미지 2</h5>
				        	</div>
			         	</div>
      					</div>   
					      <a href='#carouselMain3' class='carousel-control-prev' data-slide='prev'>
					         <span class='carousel-control-prev-icon'></span>
					      </a>
					      <a href='#carouselMain3' class='carousel-control-next' data-slide='next'>
					         <span class='carousel-control-next-icon'></span>
					      </a>   
   					</div>	 								
				</div>			
			</div><br>		
			<div>
				<p><strong><u>객실 구비 물품</u></strong></p>
				<p>냉장고, 에어컨, 라디에이터, 헤어드라이기, 커피포트, 타올류, 식기류</p>
			</div>	
		</div>
	</div>							
	
	<%@ include file='./../include/footer.jsp'%>
</div>
</body>
</html>