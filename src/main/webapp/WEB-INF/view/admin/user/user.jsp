<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 관리자/회원정보 수정</title>
<%@ include file='./../../include/lib.jsp'%>

<style>
#content {
	margin-top:30px;
	width:850px;
	height:500px;
}

#profileImg{
	width: 100px;
	height: 100px;
	text-align: center;
	border: 0.1em solid gray;
}

table{
	width: 500px;
	height: 250px;
	margin:auto;
}

td{
	border: 1px solid;
}
th{
	border: 1px solid;
	text-align:center;
	height: 50px;
}

.btn {
	border: 1px solid black;

}
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../../include/header.jsp'%>

	<div class='row' id='content'>
		<div class='col'>
			<form>
				<table>
					<tbody>
						<tr>
							<th>회원번호</th>
							<td> &nbsp;2</td>
						</tr>
						<tr>
							<th>ID</th>
							<td> &nbsp;b121@gmail.com</td>
						</tr>
						<tr>
							<th>이름</th>
							<td>&nbsp;<input type='text'  value='문송이'/></td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td>&nbsp;010-1234-1234</td>
						</tr>
						<tr>
							<th>닉네임</th>
							<td>&nbsp;<input type='text' value='sdc'/></td>
						</tr>
						<tr>
							<th>프로필 사진</th>
							<td>
								&nbsp;<div class='ml-2' id='profileImg'><p><br><br>프로필<br>이미지</p></div>
								<br>&nbsp;<button type='button' class='btn btn-sm mb-2' id='delImgBtn'>삭제</button>
							</td>
						</tr>
					</tbody>
				</table>
				<div class='row' align ='right'>
					<div class='col-10'>						
						<button type='button' class='btn btn-default btn-md' style='margin-top:10px;'
							id='fixCancelBtn' onclick='location.href="../../admin"'>취소</button>
						<button type='button' class='btn btn-default btn-md' style='margin-top:10px; background-color:#828282;'
							id='fixOkBtn' onclick='location.href="../../admin"'>확인</button>
					</div>
					<div class='col-2'></div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>