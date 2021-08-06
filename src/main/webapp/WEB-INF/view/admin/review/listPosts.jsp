<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 관리자/캠핑장 리뷰</title>
<%@ include file='./../../include/lib.jsp'%>

<style>

#modalBox {
	width:300px;
	height:120px;
}

#content {
	margin-top:30px;
	width:850px;
	height:500px;
}
	
th, td {
	text-align: center;
}

#title {
	text-align: left;
}

.btn {
	border: 1px solid black;
}

table {
	font-size: 12px;
}

#deleteModal {
	text-align:center;
	margin-top:300px;
}

#deleteConfirmModal {
	text-align:center;
	margin-top:300px;
}
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../../include/header.jsp'%>
	
	<br>
	<div class='row' id='content' style='height:700px;'>
		<div class='col-3' id='menubar'>
			<p style='height:30px; margin-bottom:10px; text-align:center;' id='menuHead'>
				<span style='margin-top:3px;'>커뮤니티</span></p>               
			<ul>
				<li><a href='./../notice/listPosts' style='color:black;'>공지사항</a></li>
				<li><a href='listPosts' style='color:black;'><b><u>캠핑장 리뷰</u></b></a></li>
				<li><a href='./../inquiry/listPosts' style='color:black;'>문의하기</a></li>
			</ul>                     
		</div>
		<div class='col-9'>
			<h4><strong>&nbsp;|&nbsp;캠핑장 리뷰</strong></h4>
			<div class='row'>
				<div class='col'>
					<table class='table table-striped' style='margin-top:10px;'>
						<thead>
							<tr>
								<th>번호</th>
								<th style='width:170px;'>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
								<th>추천</th>
								<th>비추천</th>
								<th>선택</th>
							</tr>
						</thead>
						<tbody>
							<tr><td class='body'>10</td><td id='title' class='text-center'><a href='readPost' style='color:black;'>리뷰</a>
								</td><td>abc10</td><td>2021-10-01</td><td>35</td><td>4</td><td>1</td>
								<td><input type='checkbox' id='deleteSelect'></td>
							</tr>
							<tr><td class='body'>9</td><td id='title' class='text-center'>리뷰</td><td>abc9</td>
								<td>2021-09-01</td><td>42</td><td>4</td><td>1</td>
								<td><input type='checkbox' id='deleteSelect'></td>
							</tr>	
							<tr><td class='body'>8</td><td id='title' class='text-center'>리뷰</td><td>abc8</td>
								<td>2021-08-01</td><td>55</td><td>5</td><td>1</td>
								<td><input type='checkbox' id='deleteSelect'></td>
							</tr>
							<tr><td class='body'>7</td><td id='title' class='text-center'>리뷰</td><td>abc7</td>
								<td>2021-07-01</td><td>1</td><td>7</td><td>1</td>
								<td><input type='checkbox' id='deleteSelect'></td>
							</tr>
							<tr><td class='body'>6</td><td id='title' class='text-center'>리뷰</td><td>abc6</td>
								<td>2021-06-01</td><td>5</td><td>4</td><td>1</td>
								<td><input type='checkbox' id='deleteSelect'></td>
							</tr>
							<tr><td class='body'>5</td><td id='title' class='text-center'>리뷰</td><td>abc5</td>
								<td>2021-05-01</td><td>6</td><td>2</td><td>0</td>
								<td><input type='checkbox' id='deleteSelect'></td>	
							</tr>
							<tr><td class='body'>4</td><td id='title' class='text-center'>리뷰</td><td>abc4</td>
								<td>2021-04-01</td><td>4</td><td>0</td><td>1</td>
								<td><input type='checkbox' id='deleteSelect'></td>
							</tr>
							<tr><td class='body'>3</td><td id='title' class='text-center'>리뷰</td><td>abc3</td>							
								<td>2021-03-01</td><td>11</td><td>4</td><td>1</td>
								<td><input type='checkbox' id='deleteSelect'></td>
							</tr>
							<tr><td class='body'>2</td><td id='title' class='text-center'>리뷰</td><td>abc2</td>
								<td>2021-02-01</td><td>2</td><td>1</td><td>1</td>
								<td><input type='checkbox' id='deleteSelect'></td>
							</tr>
							<tr><td class='body'>1</td><td id='title' class='text-center'>리뷰</td><td>abc1</td>
								<td>2021-01-01</td><td>5</td><td>4</td><td>1</td>
								<td><input type='checkbox' id='deleteSelect'></td>
							</tr>								
						</tbody>
					</table>
					<div class='row' align='right'>
						<div class='col'>
							<button class='btn btn-default btn-md' data-toggle='modal' data-target='#deleteConfirmModal'>삭제</button>								
						</div>
					</div>	
					
					<div id='deleteConfirmModal' class='modal fade' tabindex='-1'>
							<div class='modal-dialog modal-sm'>
								<div class='modal-content'>
									<div class='modal-body'>
										<p style='margin-top:20px;'>글을 삭제하시겠습니까?</p>
										<br>
										<button type='button' class='btn' data-dismiss='modal' style='background-color:light; 
											border:0.1em solid gray; color:black;'>취소</button>
										<button type='button' class='btn' data-dismiss='modal'
											data-toggle='modal' data-target='#deleteModal'
											style='background-color:#323232; color:white;'>확인</button>
									</div>
								</div>
							</div>
						</div>
						
						<div id='deleteModal' class='modal fade' tabindex='-1'>
							<div class='modal-dialog modal-sm'>
								<div class='modal-content'>
									<div class='modal-body'>
										<p style='margin-top:20px;'>글이 삭제되었습니다.</p>
										<br>										
										<button type='button' class='btn' data-dismiss='modal'
											style='background-color:#323232; color:white;'>확인</button>
									</div>
								</div>
							</div>
						</div>
						
					<div class='row'>
						<div class='col' id='searchBar'>
							<div id='number' align='center' style='margin-top:10px;'>
								<a href='#'><span>이전&nbsp;</span></a>
								<a href='#'><span>1</span></a>
								<a href='#'><span>2</span></a>
								<a href='#'><span>3</span></a>
								<a href='#'><span>4</span></a>
								<a href='#'><span>5</span></a>
								<a href='#'><span>6</span></a>
								<a href='#'><span>7</span></a>
								<a href='#'><span>8</span></a>
								<a href='#'><span>9</span></a>
								<a href='#'><span>10</span></a>
								<a href='#'><span>&nbsp;다음</span></a>
							</div>
						</div>
					</div>
					<div class='row'>
						<div class='col' align='center'>
							<div id='serchBox' style='padding-top:30px;'>
								<form action='#' method='get'>
									<select name='category'>
										<option value='title'>제목</option>
										<option value='name'>작성자</option>
										<option value='content'>내용</option>
									</select>
									<input type='text' name='search' size='40' required='required' placeholder='검색어 입력'>
									<button class='btn btn-default btn-md'>검색</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>