<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 관리자</title>
<%@ include file='./../include/lib.jsp'%>

<style>
#searchBtn {
	color: black;
	border:0.1em solid gray;
	background:lightgray;
	font-weight:bold;
}

th {
	background-color:gray;
}

#radioTable {
	width:820px;
	height:460px;
	margin-left:2px;
	margin-top:10px;
}

#deleteModal {
	text-align:center;
	margin-top:300px;
}
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	
	<div class='row' id='search' style='width:950px;'>
		<div class='col-8' id='searchBar'>
			<input type='text' style='font-size:18px; width:200px; height:40px; margin-top:40px;' class='form-control' name='title' placeholder='검색어 입력'/>
			<button type='button' style='font-size:15px;'
				id='searchBtn' class='btn btn-default btn-lg' onclick='#'>검색</button>
		</div>
		<div class='col-4' id='update' style='margin-top:40px;'>
			<a href='admin/user/user' style='text-align:center; border:0.1em solid gray' class='btn btn-default btn-md'>수정</a>
			<a href='#' style='text-align: center; border:0.1em solid gray' 
				data-toggle='modal' data-target='#deleteModal' class='btn btn-default btn-md' id='deleteBtn'>삭제</a>
		</div>	
	</div>
	
	<div id='deleteModal' class='modal fade' tabindex='-1'>
		<div class='modal-dialog modal-sm'>
			<div class='modal-content'>
				<div class='modal-body'>
					<p style='margin-top:20px;'>삭제하시겠습니까?</p>
					<br>
					<button type='button' class='btn' data-dismiss='modal' style='background-color:light; 
						border:0.1em solid gray; color:black;'>취소</button>
					<button type='button' class='btn' data-dismiss='modal'
						style='background-color:#323232; color:white;'>확인</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class='row' id='radioTable'>
		<form id='radioTable' name='myRadio'>
			<table class='table table-bordered' style='text-align:center;'>
				<thead>
					<tr>
						<th><center>회원번호</center></th>
						<th><center>ID</center></th>
						<th><center>이름</center></th>
						<th><center>전화번호</center></th>
						<th><center>닉네임</center></th>
						<th><center>선택</center></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class='body'>1</td>
						<td>thejouen@gmail.com</td>
						<td>강현후</td>
						<td>010-1231-1234</td>
						<td>asd</td>
						<td>&nbsp;<input type='radio' name='myRadio'/></td>
					</tr>
					<tr>
						<td class='body'>2</td>
						<td>b121@gmail.com</td>
						<td>문송이</td>
						<td>010-1232-1234</td>
						<td>sdc</td>
						<td>&nbsp;<input type='radio' name='myRadio'/></td>
					</tr>
					<tr>
						<td class='body'>3</td>
						<td>c122@naver.com</td>
						<td>이상준</td>
						<td>010-1233-1234</td>
						<td>hes</td>
						<td>&nbsp;<input type='radio' name='myRadio'/></td>
					</tr>
					<tr>
						<td class='body'>4</td>
						<td>d123@gmail.com</td>
						<td>임정훈</td>
						<td>010-1234-1234</td>
						<td>bxj</td>
						<td>&nbsp;<input type='radio' name='myRadio'/></td>
					</tr>
					<tr>
						<td class='body'>5</td>
						<td>e124@naver.com</td>
						<td>조재현</td>
						<td>010-1235-1234</td>
						<td>jsf</td>
						<td>&nbsp;<input type='radio' name='myRadio'/></td>
					</tr>
					<tr>
						<td class='body'>6</td>
						<td>f125@naver.com</td>
						<td>김명회</td>
						<td>010-1236-1234</td>
						<td>aac</td>
						<td>&nbsp;<input type='radio' name='myRadio'/></td>
					</tr>
					<tr>
						<td class='body'>7</td>
						<td>g126@gmail.com</td>
						<td>강민호</td>
						<td>010-1237-1234</td>
						<td>hyy</td>
						<td>&nbsp;<input type='radio' name='myRadio'/></td>
					</tr>
					<tr>
						<td class='body'>8</td>
						<td>h127@naver.com</td>
						<td>김유니나</td>
						<td>010-1238-1234</td>
						<td>ksg</td>
						<td>&nbsp;<input type='radio' name='myRadio'/></td>
					</tr>
					<tr>
						<td class='body'>9</td>
						<td>i128@naver.com</td>
						<td>김주성</td>
						<td>010-1239-1234</td>
						<td>jmh</td>
						<td>&nbsp;<input type='radio' name='myRadio'/></td>
					</tr>
					<tr>
						<td class='body'>10</td>
						<td>j129@gmail.com</td>
						<td>이주형</td>
						<td>010-1240-1234</td>
						<td>okh</td>
						<td>&nbsp;<input type='radio' name='myRadio'/></td>
					</tr>
				</tbody>
			</table>
		</form>	
		<div id='number' style='float:left; margin-left:300px;'>
			<a href='#'><span>이전</span></a>
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
			<a href='#'><span>다음</span></a>
		</div>
	</div>
</div>
</body>
</html>