<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 관리자/예약</title>
<%@ include file='./../../include/lib.jsp'%>

<style>
#content {
	margin-top:30px;
	width:850px;
	height:500px;
}

#serchBar{
	margin-top:30px;
	width:850px;
	height:30px;
}

table{
	width: 820px;
	height:150px;
	margin:auto;
}	

th{
	border: 1px solid;
	text-align:center;
	height:40px;
}

td{
	border: 1px solid;
	text-align:center;
}

.serchBtn{
	border: 1px solid;
}

.delBtn {
	border: 1px solid;
}

#deleteReservationModal {
	text-align:center;
	margin-top:300px;
}

#deleteReservationConfirmModal{
	text-align:center;
	margin-top:300px;
}
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../../include/header.jsp'%>
	
	<br>
	<div class='row' id='serchBar'>
		<div class='col-6'>
			<input type='text' style="width:200px; height:40px;"/><button type='button' class='btn serchBtn'>검색</button>
		</div>
		<div class='col-4'>
		
		</div>
	</div>
	
	<div class='row' id='content'>
		<div class='col'>
			<table>
				<thead>
					<tr>
						<th>예약자</th>
						<th>전화번호</th>
						<th>이메일</th>
						<th>객실명</th>
						<th>예약일</th>
						<th>결제현황</th>
					</tr>
				</thead>
				<tbody>
					<tr>	
						<td>강현후</td>
						<td>010-1234-1234</td>
						<td>abc@naver.com</td>
						<td>글램핑 1호</td>
						<td>2021-03-11 ~ 2021-03-13</td>
						<td>결제완료</td>
					</tr>
					<tr>
						<td>이상준</td>
						<td>010-1234-1234</td>
						<td>abc@naver.com</td>
						<td>글램핑 2호</td>
						<td>2021-04-11 ~ 2021-04-13</td>
						<td>결제완료</td>
					</tr>
					<tr data-toggle="collapse" data-target="#subTable" class="accordion-toggle">
						<td>김주성</td>
						<td>010-1234-1234</td>
						<td>abc@naver.com</td>
						<td>글램핑 3호</td>
						<td>2021-05-11 ~ 2021-05-13</td>
						<td>결제완료</td>
					</tr>
				</tbody>
			</table>
			<table id='subTable' class="accordian-body collapse show">
				<tr>
					<th>대여 물품 예약 목록</th>
					<th>다목적 구장 사용 시간</th>
					<th rowspan='2' class='text-center'>
					<button type='button' class='btn btn-outline-secondary btn-lg btn-block' style='border: 0; height: 100px' data-toggle='modal'
						data-target='#deleteReservationModal'>삭제</button>
					</th>					
				</tr>
				<tr>
					<td>바비큐 그릴, 숯, 담요</td>
					<td>2시 ~ 4시</td>		
				</tr>
			</table><br>
			
			<div id='deleteReservationModal' class='modal fade' tabindex='-1'>
				<div class='modal-dialog madal-sm'>
					<div class='modal-content'>				
						<div class='modal-body'>
							<p style='margin-top:20px;'>예약을 삭제하시겠습니까?</p>
							<br>
							<button type='button' class='btn' data-dismiss='modal'
								style='background-color:white; color:black; border:1px solid black;'>취소</button>
							<button type='button' class='btn' data-toggle='modal' data-dismiss='modal'
								data-target='#deleteReservationConfirmModal'style='background-color:#323232; color:white;'>확인</button>
						</div>				
					</div>
				</div>
			</div>
			
			<div id='deleteReservationConfirmModal' class='modal fade' tabindex='-1'>
				<div class='modal-dialog modal-sm'>
					<div class='modal-content'>
						<div class='modal-body'>
							<p style='margin-top:20px;'>예약이 삭제되었습니다.</p>
							<br>
							<a type='button' class='btn' style='background-color:#323232; color:white;'
								data-dismiss='modal'>확인</a>
						</div>
					</div>
				</div>
			</div>
			
			<div id = "number" style="text-align: center;">
				<a href = "#"><span>이전</span></a>
				<a href = "#"><span><strong>1</strong></span></a>
				<a href = "#"><span>2</span></a>
				<a href = "#"><span>3</span></a>
				<a href = "#"><span>4</span></a>
				<a href = "#"><span>5</span></a>
				<a href = "#"><span>6</span></a>
				<a href = "#"><span>7</span></a>
				<a href = "#"><span>8</span></a>
				<a href = "#"><span>9</span></a>
				<a href = "#"><span>10</span></a>
				<a href = "#"><span>다음</span></a>
			</div>
		</div>
	</div>
</div>
</body>
</html>