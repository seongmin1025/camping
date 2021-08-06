<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/예약하기</title>
<%@ include file='./../include/lib.jsp'%>

<script>
function changeCheckboxColor() {
	$('#rentalGoods1').click(() => {
		$('#rentalGoodsTh1').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="rentalGoods1_1" style="color:white; border:0;">선택</button>')
	});
	
	$('#rentalGoods2').click(() => {
		$('#rentalGoodsTh2').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="rentalGoods2_2" style="color:white; border:0;">선택</button>')
	});
	
	$('#rentalGoods3').click(() => {
		$('#rentalGoodsTh3').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="rentalGoods3_3" style="color:white; border:0;">선택</button>')
	});
	
	$('#rentalGoods4').click(() => {
		$('#rentalGoodsTh4').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="rentalGoods4_4" style="color:white; border:0;">선택</button>')
	});
}

$(() => {
	var chk1 = 0;
	var chk2 = 0;
	var chk3 = 0;
	var chk4 = 0;
	var rChk1 = 0;
	var rChk2 = 0;
	var rChk3 = 0;
	var rChk4 = 0;
	var rChk5 = 0;
	changeCheckboxColor();
	
	$(document).on("click", "#rentalGoods1_1", function() {
		if(chk1 == 0) {
			$('#rentalGoodsTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="rentalGoods1_1" style="border:0;">선택</button>')
			chk1 = 1;
		} else {
			$('#rentalGoodsTh1').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="rentalGoods1_1" style="color:white; border:0;">선택</button>')
			chk1 = 0;
		}
	});
	
	$(document).on("click", "#rentalGoods2_2", function() {
		if(chk2 == 0) {
			$('#rentalGoodsTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="rentalGoods2_2" style="border:0;">선택</button>')
			chk2 = 1;
		} else {
			$('#rentalGoodsTh2').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="rentalGoods2_2" style="color:white; border:0;">선택</button>')
			chk2 = 0;
		}
	});
	
	$(document).on("click", "#rentalGoods3_3", function() {
		if(chk3 == 0) {
			$('#rentalGoodsTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="rentalGoods3_3" style="border:0;">선택</button>')
			chk3 = 1;
		} else {
			$('#rentalGoodsTh3').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="rentalGoods3_3" style="color:white; border:0;">선택</button>')
			chk3 = 0;
		}
	});
	
	$(document).on("click", "#rentalGoods4_4", function() {
		if(chk1 == 0) {
			$('#rentalGoodsTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="rentalGoods4_4" style="border:0;">선택</button>')
			chk1 = 1;
		} else {
			$('#rentalGoodsTh4').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="rentalGoods4_4" style="color:white; border:0;">선택</button>')
			chk1 = 0;
		}
	});

	$('#selectTime1').click(() => {
		$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="selectTime1_1"style="color:white; border:0;">선택</button>')
		$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2"style="border:0;">선택</button>')
		$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3"style="border:0;">선택</button>')
		$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4"style="border:0;">선택</button>')
		$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5"style="border:0;">선택</button>')
		rchk1 = 1;
	});
	
	$('#selectTime2').click(() => {
		$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1"style="border:0;">선택</button>')
		$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="selectTime2_2"style="color:white; border:0;">선택</button>')
		$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3"style="border:0;">선택</button>')
		$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4"style="border:0;">선택</button>')
		$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5"style="border:0;">선택</button>')
		rchk2 = 1;
	});
	
	$('#selectTime3').click(() => {
		$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1"style="border:0;">선택</button>')
		$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2"style="border:0;">선택</button>')
		$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="selectTime3_3"style="color:white; border:0;">선택</button>')
		$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4"style="border:0;">선택</button>')
		$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5"style="border:0;">선택</button>')
		rchk3 = 1;
	});
	
	$('#selectTime4').click(() => {
		$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1"style="border:0;">선택</button>')
		$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2"style="border:0;">선택</button>')
		$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3"style="border:0;">선택</button>')
		$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="selectTime4_4"style="color:white; border:0;">선택</button>')
		$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5"style="border:0;">선택</button>')
		rchk4 = 1;
	});
	
	$('#selectTime5').click(() => {
		$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1"style="border:0;">선택</button>')
		$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2"style="border:0;">선택</button>')
		$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3"style="border:0;">선택</button>')
		$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4"style="border:0;">선택</button>')
		$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="selectTime5_5"style="color:white; border:0;">선택</button>')
		rchk5 = 1;
	});
	
	$(document).on("click", "#selectTime1_1", function() {
		if(rChk1 == 1) {
			$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1" style="border:0;">선택</button>')
			$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2" style="border:0;">선택</button>')
			$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3" style="border:0;">선택</button>')
			$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4" style="border:0;">선택</button>')
			$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5" style="border:0;">선택</button>')
			rChk1 = 0;
			rChk2 = 0;
			rChk3 = 0;
			rChk4 = 0;
			rChk5 = 0;
		} else {
			$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="selectTime1_1" style="color:white; border:0;">선택</button>')
			$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2" style="border:0;">선택</button>')
			$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3" style="border:0;">선택</button>')
			$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4" style="border:0;">선택</button>')
			$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5" style="border:0;">선택</button>')
			rChk1 = 1;
			rChk2 = 0;
			rChk3 = 0;
			rChk4 = 0;
			rChk5 = 0;
		}
	});
	
	$(document).on("click", "#selectTime2_2", function() {
		if(rChk2 == 1) {
			$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1" style="border:0;">선택</button>')
			$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2" style="border:0;">선택</button>')
			$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3" style="border:0;">선택</button>')
			$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4" style="border:0;">선택</button>')
			$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5" style="border:0;">선택</button>')
			rChk1 = 0;
			rChk2 = 0;
			rChk3 = 0;
			rChk4 = 0;
			rChk5 = 0;
		} else {
			$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1" style="border:0;">선택</button>')
			$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="selectTime2_2" style="color:white; border:0;">선택</button>')
			$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3" style="border:0;">선택</button>')
			$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4" style="border:0;">선택</button>')
			$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5" style="border:0;">선택</button>')
			rChk1 = 0;
			rChk2 = 1;
			rChk3 = 0;
			rChk4 = 0;
			rChk5 = 0;
		}
	});
	
	$(document).on("click", "#selectTime3_3", function() {
		if(rChk3 == 1) {
			$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1" style="border:0;">선택</button>')
			$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2" style="border:0;">선택</button>')
			$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3" style="border:0;">선택</button>')
			$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4" style="border:0;">선택</button>')
			$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5" style="border:0;">선택</button>')
			rChk1 = 0;
			rChk2 = 0;
			rChk3 = 0;
			rChk4 = 0;
			rChk5 = 0;
		} else {
			$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1" style="border:0;">선택</button>')
			$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2" style="border:0;">선택</button>')
			$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="selectTime3_3" style="color:white; border:0;">선택</button>')
			$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4" style="border:0;">선택</button>')
			$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5" style="border:0;">선택</button>')
			rChk1 = 0;
			rChk2 = 0;
			rChk3 = 1;
			rChk4 = 0;
			rChk5 = 0;
		}
	});
	$(document).on("click", "#selectTime4_4", function() {
		if(rChk4 == 1) {
			$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1" style="border:0;">선택</button>')
			$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2" style="border:0;">선택</button>')
			$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3" style="border:0;">선택</button>')
			$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4" style="border:0;">선택</button>')
			$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5" style="border:0;">선택</button>')
			rChk1 = 0;
			rChk2 = 0;
			rChk3 = 0;
			rChk4 = 0;
			rChk5 = 0;
		} else {
			$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1" style="border:0;">선택</button>')
			$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2" style="border:0;">선택</button>')
			$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3" style="border:0;">선택</button>')
			$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="selectTime4_4" style="color:white; border:0;">선택</button>')
			$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5" style="border:0;">선택</button>')
			rChk1 = 0;
			rChk2 = 0;
			rChk3 = 0;
			rChk4 = 1;
			rChk5 = 0;
		}
	});
	$(document).on("click", "#selectTime5_5", function() {
		if(rChk5 == 1) {
			$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1" style="border:0;">선택</button>')
			$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2" style="border:0;">선택</button>')
			$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3" style="border:0;">선택</button>')
			$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4" style="border:0;">선택</button>')
			$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime5_5" style="border:0;">선택</button>')
			rChk1 = 0;
			rChk2 = 0;
			rChk3 = 0;
			rChk4 = 0;
			rChk5 = 0;
		} else {
			$('#selectTimeTh1').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime1_1" style="border:0;">선택</button>')
			$('#selectTimeTh2').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime2_2" style="border:0;">선택</button>')
			$('#selectTimeTh3').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime3_3" style="border:0;">선택</button>')
			$('#selectTimeTh4').html('<button type="button" class="btn btn-outline-secondary btn-block" id="selectTime4_4" style="border:0;">선택</button>')
			$('#selectTimeTh5').html('<button type="button" class="btn btn-outline-secondary bg-info btn-block" id="selectTime5_5" style="color:white; border:0;">선택</button>')
			rChk1 = 0;
			rChk2 = 0;
			rChk3 = 0;
			rChk4 = 0;
			rChk5 = 1;
		}
	});
});
</script>

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

	<div class='row' id='content4' style='height:700px; width:800px; margin-left:10px;'>
		<div class='col-12' id='map'><br><br>약도이미지</div>	
		<div class='col col-9'>
			<div class='row ml-1'>
				<h4 class='col col-4 text-center' style='border: 1px solid black; margin-top:30px;'>글램핑 1호</h4>
				<h4 class='col col-7 text-center' style='border: 1px solid black; margin-top:30px;'>2021-03-11 ~ 2021-03-13</h4>		
			</div>
		</div>	
		<div class='row' style='margin-left:5px; margin-top:20px;'>
			<div class='col col-12' >
				<table class='table table-bordered'>
					<thead>
						<tr><th>대여 물품 목록</th><th>이용 요금</th><th></th><th colspan='2'>다목적 구장 사용 시간</th></tr>
					<tbody>
						<tr>
							<th>바비큐 그릴</th>
							<th>15000원</th>
							<th class='text-center' id='rentalGoodsTh1'><button type='button' class='btn btn-outline-secondary btn-block' id='rentalGoods1' style='border:0;'>선택</button></th>
							<th>12시~2시 </th>
							<th id='selectTimeTh1'><button type='button' class='btn btn-outline-secondary btn-block' id='selectTime1'style='border:0;'>선택</button></th>
						</tr>
						<tr>
							<th>가스 버너</th>
							<th>5000원</th>
							<th class='text-center' id='rentalGoodsTh2'><button type='button' class='btn btn-outline-secondary btn-block' id='rentalGoods2' style='border:0;'>선택</button></th>
							<th>2시~4시 </th>
							<th id='selectTimeTh2'><button type='button' class='btn btn-outline-secondary btn-block' id='selectTime2'style='border:0;'>선택</button></th>
						</tr>
						<tr>
							<th>멀티탭</th>
							<th>1000원</th>
							<th class='text-center' id='rentalGoodsTh3'><button type='button' class='btn btn-outline-secondary btn-block' id='rentalGoods3' style='border:0;'>선택</button></th>
							<th>4시~6시</th>
							<th id='selectTimeTh3'><button type='button' class='btn btn-outline-secondary btn-block' id='selectTime3'style='border:0;'>선택</button></th>
						</tr>
						<tr>
							<th>담요(2장)</th>
							<th>1000원</th>
							<th class='text-center' id='rentalGoodsTh4'><button type='button' class='btn btn-outline-secondary btn-block' id='rentalGoods4' style='border:0;'>선택</button></th>
							<th>6시~8시</th>
							<th id='selectTimeTh4'><button type='button' class='btn btn-outline-secondary btn-block' id='selectTime4'style='border:0;'>선택</button></th>
						</tr>
						<tr>
							<th></th>
							<th></th>
							<th class='text-center' ></th>
							<th>8시~10시</th>
							<th id='selectTimeTh5'><button type='button' class='btn btn-outline-secondary btn-block' id='selectTime5'style='border:0;'>선택</button></th>
						</tr>
					</tbody>
				</table>
			</div> 
			<div class='col-12'>
				<div class='row' style='margin-left:1px;'>			
					<div class='col col-3' style='border: 1px solid black; height:40px;'>최종 이용 요금</div>
					<div class='col col-3' style='border: 1px solid black; height:40px;'>325,000원</div>
					<div class='col col-6 text-right'>						
						<button type='button' class='btn btn-outline-secondary' data-toggle='modal'
									data-target='#cancelReservationModal'>취소</button>
						<a href='reserve01' type='button' class='btn btn-outline-secondary'>이전</a>
						<a href='reserve03' type='button' class='btn btn-outline-primary'>다음</a>
					</div>
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