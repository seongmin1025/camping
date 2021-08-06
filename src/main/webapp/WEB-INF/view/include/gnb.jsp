<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<div class='row' id='gnb'>
	<div class='col'>
		<nav class='navbar navbar-expand-md bg-light navbar-light'>
			<ul class='navbar-nav navbar-dark'>
				<li><a class='nav-link' style='margin-left:120px;' href='<%= request.getContextPath() %>/reservation/reserve01'>예약</a></li>
				<li class='nav-item dropdown'> 
					<a class='nav-link dropdown-toggle' style='margin-left:140px;' href='#' 
						data-toggle='dropdown'>시설안내</a>
					<div class='dropdown-menu' style='margin-left:120px;'> 
						<a class='dropdown-item' href='<%= request.getContextPath() %>/camp/navigate'>찾아오시는 길</a> 
						<a class='dropdown-item' href='<%= request.getContextPath() %>/camp/viewRooms'>캠핑장 전경</a> 
						<a class='dropdown-item' href='<%= request.getContextPath() %>/camp/viewComforts'>부대시설</a>
						<a class='dropdown-item' href='<%= request.getContextPath() %>/camp/viewProducts'>대여 물품, 판매 물품</a>
						<a class='dropdown-item' href='<%= request.getContextPath() %>/camp/guide'>이용안내</a>
						<a class='dropdown-item' href='<%= request.getContextPath() %>/camp/viewSights'>주변 관광지</a>
						<a class='dropdown-item' onclick='window.open("https://www.mangoplate.com/search/%EC%A0%95%EB%B0%9C%EC%82%B0%EC%97%AD")'>주변 맛집</a> 
					</div>
				</li>
				<li class='nav-item dropdown'>
					<a class='nav-link dropdown-toggle' style='margin-left:140px;' href='#'
						data-toggle='dropdown'>커뮤니티</a>
					<div class='dropdown-menu' style='margin-left:120px;'>
						<a class='dropdown-item' href='<%= request.getContextPath() %>/notice/listPosts'>공지사항</a>
						<a class='dropdown-item' href='<%= request.getContextPath() %>/review/listPosts'>캠핑장 리뷰</a>
						<a class='dropdown-item' href='<%= request.getContextPath() %>/inquiry/listPosts'>문의하기</a>
					</div>
				</li>
			</ul>
		</nav>
	</div>
</div>