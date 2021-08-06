<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<head>
<title>더조은 캠핑/부대시설</title>
<%@ include file='./../include/lib.jsp'%>

<script>
function fnMove(seq){
    var offset = $("#detailBtn" + seq).offset();
    $('html, body').animate({scrollTop : offset.top}, 400);
}
</script>

</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content5' style='height:3500px;'>
		<div class='col-3' id='campMenubar'>
			<p style='height:30px; margin-bottom:10px; text-align:center;' id='campMenuHead'>
				<span style='margin-top:3px;'>시설안내</span></p>               
			<ul>
				<li><a href='navigate' style='color:black;'>찾아오시는 길</a></li>
				<li><a href='viewRooms' style='color:black;'>캠핑장 전경</a></li>
				<li><a href='viewComforts' style='color:black;'><b><u>부대시설</u></b></a></li>
				<li><a href='viewProducts' style='color:black;'>대여 물품, 판매 물품</a></li>
				<li><a href='guide' style='color:black;'>이용안내</a></li>
				<li><a href='viewSights' style='color:black;'>주변 관광지</a></li>
				<li><a href='#' onclick='window.open("https://www.mangoplate.com/search/%EC%A0%95%EB%B0%9C%EC%82%B0%EC%97%AD")' style='color:black;' target='_blank'>주변 맛집</a></li>
			</ul>
		</div>
		<div class='col-9'>
			<strong>&nbsp;|&nbsp;부대시설</strong>
			<hr style='width:500px; margin-top:10px;'>
			<div class='row'>
				<div class='col'>
					<div class="item">
						<img style="height: 400px; width: 600px;">
						<div class="carousel-caption" style="color:black;margin-bottom:0px;font-size:20px; ">
						
							<button style="margin:25px;margin-left:200px; font-size:10px;" onclick="fnMove('1')">화장실 이미지</button>
							<button style="margin:25px;margin-right:10px; font-size:10px;" onclick="fnMove('2')">샤워실 이미지</button>
							<button style="margin:25px;margin-left:250px; font-size:10px;" onclick="fnMove('3')">개수대 이미지</button>
							<p>약도이미지</p>
							<button style="margin:25px;margin-right:200px; font-size:10px;" onclick="fnMove('4')">매점 이미지</button>
							<button style="margin:25px;margin-left:10px; font-size:10px;" onclick="fnMove('5')">흡연구역 이미지</button>
							<button style="margin:25px;margin-right:250px; font-size:10px;" onclick="fnMove('6')">분리수거장 이미지</button>
						</div>		
					</div> <br>																
				</div>
			</div>
		</div>		
		<div class='col-9' style="margin-left:205px;">
			<div class='row'>
				<div class='col'>
				<p id='detailBtn1'><strong>&nbsp;|&nbsp;화장실</strong></p>
				<hr style='width:500px; margin-top:10px;'>
				<div class='row'>
					<div class='col'>
					<div id='carouselMain1' class='carousel slide' data-ride='carousel'>     					
      					<div class='carousel-inner'>
         				<div class='carousel-item active'>
		           			<img style='height: 400px; width: 600px; background: lightgray;'/>
				            <div class='carousel-caption text-dark'>
				               <h5 style='margin-bottom: 150px;'>화장실 이미지 1</h5>
				            </div>
         				</div>
			         	<div class='carousel-item'>
				            <img style='height: 400px; width: 600px; background: lightgray;'/>
					            <div class='carousel-caption text-dark'>
					               <h5 style='margin-bottom: 150px;'>화장실 이미지 2</h5>
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
				<p id='detailBtn2'><strong>&nbsp;|&nbsp;샤워실</strong></p>
				<hr style='width:500px; margin-top:10px;'>
				<div class='row'>
					<div class='col'>
					<div id='carouselMain2' class='carousel slide' data-ride='carousel'>     					
      					<div class='carousel-inner'>
         				<div class='carousel-item active'>
		           			<img style='height: 400px; width: 600px; background: lightgray;'/>
				            <div class='carousel-caption text-dark'>
				               <h5 style='margin-bottom: 150px;'>샤워실 이미지 1</h5>
				            </div>
         				</div>
			         	<div class='carousel-item'>
				            <img style='height: 400px; width: 600px; background: lightgray;'/>
					            <div class='carousel-caption text-dark'>
					               <h5 style='margin-bottom: 150px;'>샤워실 이미지 2</h5>
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
				<p id='detailBtn3'><strong>&nbsp;|&nbsp;개수대</strong></p>
				<hr style='width:500px; margin-top:10px;'>
				<div class='row'>
					<div class='col'>
					<div id='carouselMain3' class='carousel slide' data-ride='carousel'>     					
      					<div class='carousel-inner'>
         				<div class='carousel-item active'>
		           			<img style='height: 400px; width: 600px; background: lightgray;'/>
				            <div class='carousel-caption text-dark'>
				               <h5 style='margin-bottom: 150px;'>개수대 이미지 1</h5>
				            </div>
         				</div>
			         	<div class='carousel-item'>
				            <img style='height: 400px; width: 600px; background: lightgray;'/>
					            <div class='carousel-caption text-dark'>
					               <h5 style='margin-bottom: 150px;'>개수대 이미지 2</h5>
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
				<p id='detailBtn4'><strong>&nbsp;|&nbsp;매점</strong></p>
				<hr style='width:500px; margin-top:10px;'>
				<div class='row'>
					<div class='col'>
					<div id='carouselMain4' class='carousel slide' data-ride='carousel'>     					
      					<div class='carousel-inner'>
         				<div class='carousel-item active'>
		           			<img style='height: 400px; width: 600px; background: lightgray;'/>
				            <div class='carousel-caption text-dark'>
				               <h5 style='margin-bottom: 150px;'>매점 이미지 1</h5>
				            </div>
         				</div>
			         	<div class='carousel-item'>
				            <img style='height: 400px; width: 600px; background: lightgray;'/>
					            <div class='carousel-caption text-dark'>
					               <h5 style='margin-bottom: 150px;'>매점 이미지 2</h5>
					        	</div>
			         	</div>
      					</div>   
					      <a href='#carouselMain4' class='carousel-control-prev' data-slide='prev'>
					         <span class='carousel-control-prev-icon'></span>
					      </a>
					      <a href='#carouselMain4' class='carousel-control-next' data-slide='next'>
					         <span class='carousel-control-next-icon'></span>
					      </a>   
   					</div>	 								
				</div>			
				</div><br>				
				<p id='detailBtn5'><strong>&nbsp;|&nbsp;흡연구역</strong></p>
				<hr style='width:500px; margin-top:10px;'>
				<div class='row'>
					<div class='col'>
					<div id='carouselMain5' class='carousel slide' data-ride='carousel'>     					
      					<div class='carousel-inner'>
         				<div class='carousel-item active'>
		           			<img style='height: 400px; width: 600px; background: lightgray;'/>
				            <div class='carousel-caption text-dark'>
				               <h5 style='margin-bottom: 150px;'>흡연구역 이미지 1</h5>
				            </div>
         				</div>
			         	<div class='carousel-item'>
				            <img style='height: 400px; width: 600px; background: lightgray;'/>
					            <div class='carousel-caption text-dark'>
					               <h5 style='margin-bottom: 150px;'>흡연구역 이미지 2</h5>
					        	</div>
			         	</div>
      					</div>   
					      <a href='#carouselMain5' class='carousel-control-prev' data-slide='prev'>
					         <span class='carousel-control-prev-icon'></span>
					      </a>
					      <a href='#carouselMain5' class='carousel-control-next' data-slide='next'>
					         <span class='carousel-control-next-icon'></span>
					      </a>   
   					</div>	 								
				</div>			
				</div><br>				
				<p id='detailBtn6'><strong>&nbsp;|&nbsp;분리수거장</strong></p>
				<hr style='width:500px; margin-top:10px;'>
				<div class='row'>
					<div class='col'>
					<div id='carouselMain6' class='carousel slide' data-ride='carousel'>     					
      					<div class='carousel-inner'>
         				<div class='carousel-item active'>
		           			<img style='height: 400px; width: 600px; background: lightgray;'/>
				            <div class='carousel-caption text-dark'>
				               <h5 style='margin-bottom: 150px;'>분리수거장 이미지 1</h5>
				            </div>
         				</div>
			         	<div class='carousel-item'>
				            <img style='height: 400px; width: 600px; background: lightgray;'/>
					            <div class='carousel-caption text-dark'>
					               <h5 style='margin-bottom: 150px;'>분리수거장 이미지 2</h5>
					        	</div>
			         	</div>
      					</div>   
					      <a href='#carouselMain6' class='carousel-control-prev' data-slide='prev'>
					         <span class='carousel-control-prev-icon'></span>
					      </a>
					      <a href='#carouselMain6' class='carousel-control-next' data-slide='next'>
					         <span class='carousel-control-next-icon'></span>
					      </a>   
   					</div>	 								
				</div>			
				</div>
				</div>
			</div>
		</div>
	</div>							
	
	<%@ include file='./../include/footer.jsp'%>
</div>
</body>
</html>