<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/캠핑장 리뷰</title>
<%@ include file='./../include/lib.jsp'%>

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

#contentview {
	text-align: left;
	width:850px;
	height:300px;
}

.btn {
	border: 1px solid black;

}

table {
    border: 1px solid;
}

#coment {
	width:300px;
}

#form-commentInfo {
	width: 100%;
}

#commnet-count {
	margin-bottom: 10px;
}

#comment-input {
	width: 85%;
	height: 3.3em;
}

#submit {
	width: 5em;
	height: 3.3em;
	font-size: 15px;
	font-weight: bold;
	color: black;
}

table {
	font-size: 12px;
}

#writingModal {
   text-align:center;
   margin-top:300px;
}

#deleteModal {
   text-align:center;
   margin-top:300px;
}

#commentConfirmModal {
   text-align:center;
   margin-top:300px;
}	

#commentModal {
   text-align:center;
   margin-top:300px;
}

#CommentDeleteModal {
   text-align:center;
   margin-top:300px;
}

#commentDeleteConfirmModal {
   text-align:center;
   margin-top:300px;
}

</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content' style='height:900px;'>
		<div class='col-3' id='menubar'>
			<p style='height:30px; margin-bottom:10px; text-align:center;' id='menuHead'>
				<span style='margin-top:3px;'>커뮤니티</span></p>               
			<ul>
				<li><a href='../notice/listPosts' style='color:black;'>공지사항</a></li>
				<li><a href='listPosts' style='color:black;'><b><u>캠핑장 리뷰</u></b></a></li>
				<li><a href='../inquiry/listPosts' style='color:black;'>문의하기</a></li>
			</ul>                     
		</div>
		<div class='col-9'>
			<h4><strong>&nbsp;|&nbsp;캠핑장 리뷰</strong></h4>
			<div class='row'>
				<div class='col'>
					<table class='table' style='margin-top:10px;'>
						<thead>
							<tr>
								<th>번호</th>
								<th style='width:170px;'>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
								<th>추천</th>
								<th>비추천</th>
							</tr>
						</thead>
						<tbody>
							<tr><td>10</td><td id='title' class='text-center'>리뷰</td><td>abc10</td>
								<td>2021-10-01</td><td>35</td><td>4</td><td>1</td></tr>
						</tbody>
					</table>
					<table>
						<tr>
							<td id='contentview'><br>캠핑장 좋아요~<br>또 오고싶어요!</td>
						</tr>
						<tr>
							<td>
	   							<button type='button' id='likeBtn' class='btn btn-default btn-md likeBtn' onclick='updateLike(this);' style='margin-bottom: 10px;'>추천</button>
							    <button type='button' id='hateBtn' class='btn btn-default btn-md hateBtn' onclick='updateHate(this);' style='margin-bottom: 10px;'>비추천</button>
							</td>
						</tr>
					</table>
					
					<div class='row'>
						<div class='col'>	
							<table class='table'>
								<thead>
									<tr>
										<th>전체댓글 1개</th>
										<th>&nbsp;</th>
										<th>&nbsp;</th>
										<th>&nbsp;</th>
									</tr>
								</thead>
								<tbody style='width:100;'>
									<tr>
										<td>abc</td><td>정보 감사합니다.</td><td>2021-08-01</td><td><button type='button' 
											id='commentDelBtn' data-toggle='modal' data-target='#CommentDeleteModal'>삭제</button>
									</tr>	
								</tbody>
							</table>
						</div>
					</div>	
					
					<div class='row' id='form-commentInfo' style='margin-left:2px;'>
						<textarea name='commentcontent' placeholder='내용을 입력해 주세요.' id='commentcontent'
						 	style='width:530px; height:60px;'></textarea>
						<button type='button' class='btn btn-default btn-md' data-toggle='modal' 
							data-target='#commentModal' id='commentContentBtn'>등록</button>
					</div>
					
					<div class='row' align='right'>
						<div class='col'>
							<a href='listPosts' class='btn btn-default btn-md' style='margin-top:10px;'  
								id='listBtn'>목록</a>
							<a href='#' class='btn btn-default btn-md' style='margin-top:10px;'  
								id='deleteBtn' data-toggle='modal' data-target='#deleteModal'>삭제</a>
							<a href='writePost' class='btn btn-default btn-md' style='margin-top:10px;'  
								id='fixBtn'>수정</a>
							<a href='writePost' class='btn btn-default btn-md' style='margin-top:10px;'id='writingBtn'>글쓰기</a>
						</div>
					</div>
					
					<div id='commentDeleteModal' class='modal fade' tabindex='-1'>
					   <div class='modal-dialog'>
					      <div class='modal-content' id='modalBox'>
					         <div class='modal-body' align ='center'>
					         	<p>댓글을 삭제하시겠습니까?</p>
					         	<button type='button' data-dismiss='modal' class='btn btn-default'
					         		style='color:black; border:0.1em solid gray'>취소</button>
					            <button type='button' data-dismiss='modal' class='btn' style='background-color:#323232; color:white;'
					            	data-toggle='modal' data-target='#commentdeleteConfirmModal'>확인</button>					            
					         </div>
					      </div>
					   </div>
					</div>
					
					<div id='commentDeleteConfirmModal' class='modal fade' tabindex='-1'>
					   <div class='modal-dialog'>
					      <div class='modal-content' id='modalBox'>
					         <div class='modal-body' align='center'>
					         	<p>댓글이 삭제되었습니다.</p>
					            <button data-dismiss='modal' class='btn' onclick='location.href="readPost"'
					            	style='background-color:#323232; color:white;'>확인</button>
					         </div>
					      </div>
					   </div>
					</div>
					
					<div id='deleteModal' class='modal fade' tabindex='-1'>
					   <div class='modal-dialog'>
					      <div class='modal-content' id='modalBox'>
					         <div class='modal-body' align ='center'>
					         	<p>글을 삭제하시겠습니까?</p>
					         	<button type='button' data-dismiss='modal' class='btn btn-default'
					         		style='color:black; border:0.1em solid gray'>취소</button>
					            <button data-dismiss='modal' class='btn btn-primary' style='background-color:#323232; color:white;'
					            	data-toggle='modal' data-target='#commentConfirmModal'>확인</button>					            
					         </div>
					      </div>
					   </div>
					</div>
					
					<div id='commentConfirmModal' class='modal fade' tabindex='-1'>
					   <div class='modal-dialog'>
					      <div class='modal-content' id='modalBox'>
					         <div class='modal-body' align='center'>
					         	<p>글이 삭제되었습니다.</p>
					            <button data-dismiss='modal' class='btn' onclick='location.href="listPosts"'
					            	style='background-color:#323232; color:white;'>확인</button>
					         </div>
					      </div>
					   </div>
					</div>
					
					<div id='commentModal' class='modal fade' tabindex='-1'>
					   <div class='modal-dialog'>
					      <div class='modal-content' id='modalBox'>
					         <div class='modal-body' align='center'>
					         	<p>내용을 입력해주세요.</p>
					            <button data-dismiss='modal' class='btn'style='background-color:#323232; color:white;'>확인</button>
					         </div>
					      </div>
					   </div>
					</div>
					
					<div id='writingModal' class='modal fade' tabindex='-1'>
					   <div class='modal-dialog'>
					      <div class='modal-content' id='modalBox'>
					         <div class='modal-body' align ='center'>
					         	<p>로그인 하세요.</p>
					             <button type='button' class='btn' data-dismiss='modal'
				                  style='background-color:#323232; color:white;'onclick='location.href="writePost"'>확인</button>				            
					         </div>
					      </div>
					   </div>
					</div>
					
					<div class='row'>
						<div class='col' id='searchBar'>
							<div id='number' align ='center' style='margin-top:30px;'>
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
						<div class='col' align ='center'>
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
	
	<%@ include file='./../include/footer.jsp'%>
</div>
</body>
</html>