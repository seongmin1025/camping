<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑</title>
<%@ include file='include/lib.jsp'%>

<script>

</script>

</head>
<body>
<div class='container'>
	<%@ include file='include/header.jsp'%>
	<%@ include file='include/gnb.jsp'%>
	
	<div id='carouselMain' class='carousel slide' data-ride='carousel'>		
		<div class='carousel-inner'>
			<div class='carousel-item active'>
				<img style='height: 500px; width: 800px; background:lightgray;'/>
				<div class='carousel-caption text-dark'>
					<h5 style='margin-bottom: 200px;'>캠핑장 전경 이미지 1</h5>
				</div>
			</div>
			<div class='carousel-item'>
				<img style='height: 500px; width: 800px; background:lightgray;'/>
				<div class='carousel-caption text-dark'>
					<h5 style='margin-bottom: 200px;'>캠핑장 전경 이미지 2</h5>
				</div>
			</div>
			<div class='carousel-item'>
				<img style='height: 500px; width: 800px; background:lightgray;'/>
				<div class='carousel-caption text-dark'>
					<h5 style='margin-bottom: 200px;'>객실 사진 이미지 1</h5>
				</div>
			</div>
			<div class='carousel-item'>
				<img style='height: 500px; width: 800px; background:lightgray;'/>
				<div class='carousel-caption text-dark'>
					<h5 style='margin-bottom: 200px;'>객실 사진 이미지 2</h5>
				</div>
			</div>
		</div>	
		<a href='#carouselMain' class='carousel-control-prev' data-slide='prev'>
			<span class='carousel-control-prev-icon'></span>
		</a>
		<a href='#carouselMain' class='carousel-control-next' data-slide='next'>
			<span class='carousel-control-next-icon'></span>
		</a>	
	</div>
	
	<%@ include file='include/footer.jsp'%>
</div>
</body>
</html>