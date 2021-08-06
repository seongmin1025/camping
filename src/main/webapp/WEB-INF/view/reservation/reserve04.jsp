<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/예약하기</title>
<%@ include file='./../include/lib.jsp'%>

<style>

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

	<div class='row' id='content4' style='height:600px;'>
		<div class='col col-9'>
			<div class='row ml-1'>
				<h4 class='col col-4' style='border: 1px solid black'>최종 이용 요금</h4>
				<h4 class='col col-7' style='border: 1px solid black'>325,000원</h4>
			</div>
		</div>		
		<div class='col col-6' style='height: 200px'>
			<table class='table table-borderd' style='border: 1px solid lightgray'>
				<thead>
					<tr><th colspan='2'>예약자 정보</th></tr>
				</thead>
				<tbody>
					<tr><th style='border: 1px solid lightgray'>예약자명</th>
					<th><input type='text' id='reservationName' placeholder='강현후'/></th>
					</tr>
					<tr><th style='border: 1px solid lightgray'>전화번호</th>
					<th><input type='number' id='reservationPhoneNumber' placeholder='010-1234-1234'/></th>
					</tr>
					<tr><th style='border: 1px solid lightgray'>이메일</th>
					<th><input type='email' id='reservationEmail' placeholder='thejoeun@gmail.com'/></th>
					</tr>
				</tbody>
			</table>
		</div>
		<div class='col col-6' style='height: 200px'>
			<table class='table table-borderd' style='border: 1px solid lightgray'>
				<thead>
					<tr><th colspan='2' >환불 규정</th></tr>
				</thead>
				<tbody>
					<tr><th style='border: 1px solid lightgray'>입실 8일 전까지</th><th>결제 금액에 대한 취소 수수료 없음</th></tr>
					<tr><th style='border: 1px solid lightgray'>입실 5일 전~4일 전까지</th><th>결제 금액의 30% 차감</th></tr>
					<tr><th style='border: 1px solid lightgray'>입실 1일 전</th><th>결제 금액의 50% 차감</th></tr>
					<tr><th style='border: 1px solid lightgray'>입실 당일</th><th>결제 금액의 100% 차감</th></tr>
				</tbody>
			</table>
		</div>
		<div class='col-11 ml-3' style='border: 1px solid lightgray; margin-top:20px; margin-bottom:30px;'>			
			<p><h4>결제 유의사항</h4></p>	
			<p>무통장 입금, 계좌이체 시 1시간 내에 입금하지 않으면 예약이 취소됩니다.</p>
		</div>
		<div class='col-12 text-right mt-3'>
			<button type='button' class='btn btn-outline-secondary' data-toggle='modal'
						data-target='#cancelReservationModal'>취소</button>
			<a href='reserve03' type='button' class='btn btn-outline-secondary'>이전</a>
			<a href='reserve05' type='button' class='btn btn-outline-primary'>결제</a>
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