<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/예약하기</title>
<%@ include file='./../include/lib.jsp'%>

<style>
#content {
	position:relative;
	width:100%;
}

#cancelReservationConfirmModal {
	text-align:center;
	margin-top:300px;
}

#cancelReservationModal {
	text-align:center;
	margin-top:300px;
}

</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content' style='height:300px; width:850px;'>
		<div class='col col-10'>
			<div class='row ml-1'>
				<h4 class='col col-4 text-center' style='border: 1px solid black;
					margin-top:30px;'>글램핑 1호</h4>
				<h4 class='col col-7 text-center' style='border: 1px solid black;
					margin-top:30px;'>2021-03-11 ~ 2021-03-13</h4>		
			</div>
		</div>		
		<div class='col col-12'>
			<table class='table table-bordered' style='width:100%;'>
				<thead>
					<tr><th>대여 물품 예약 목록</th><th>이용 요금</th><th>다목적 구장 예약 시간</th></tr>
				<tbody>
					<tr>
						<th>바비큐 그릴</th>
						<th>15000원</th>
						<th rowspan='3'>12시~2시</th>
					</tr>		
					<tr>
						<th></th>
						<th></th>									
					</tr>	
					<tr>
						<th></th>
						<th></th>									
					</tr>							
				</tbody>
			</table>
		</div>
		<div class='col-12'>
			<div class='row' style='margin-left:5px;'>
				<div class='col col-3' style='border: 1px solid black'>최종 이용 요금</div>
				<div class='col col-3' style='border: 1px solid black'>325,000원</div>
				<div class='col col-6 text-right'>						
					<button type='button' class='btn btn-outline-secondary' data-toggle='modal'
						data-target='#cancelReservationModal'>취소</button>
					<a href='reserve02' type='button' class='btn btn-outline-secondary'>이전</a>
					<a href='reserve04' type='button' class='btn btn-outline-primary'>다음</a>
				</div>
			</div>	
		</div>
	</div>							
	
	<div id='cancelReservationModal' class='modal fade' tabindex='-1'>
		<div class='modal-dialog madal-sm'>
			<div class='modal-content'>				
				<div class='modal-body'>
					<p style='margin-top:20px;'>예약을 중단하시겠습니까?</p>
					<br>
					<button type='button' class='btn' data-dismiss='modal'
						style='background-color:white; color:black; border:1px solid black;'>취소</button>
					<button type='button' class='btn' data-toggle='modal' data-dismiss='modal'
						data-target='#cancelReservationConfirmModal' style='background-color:#323232; color:white;'>확인</button>
				</div>				
			</div>
		</div>
	</div>
	
	<div id='cancelReservationConfirmModal' class='modal fade' tabindex='-1'>
		<div class='modal-dialog modal-sm'>
			<div class='modal-content'>
				<div class='modal-body'>
					<p style='margin-top:20px;'>진행중인 예약이 취소되었습니다.</p>
					<br>
					<a type='button' class='btn' style='background-color:#323232; color:white;'
						href='./../'>확인</a>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file='./../include/footer.jsp'%>
</div>
</body>
</html>