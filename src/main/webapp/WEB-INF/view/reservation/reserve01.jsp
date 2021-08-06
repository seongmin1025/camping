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

<script>
function changeCheckboxColor() {
	$('#roomSelectBtn').click(() => {
		$('#selectBtn').html('<button type="button" class="btn btn-outline-secondary btn-lg bg-info btn-block" id="roomSelectBtn1" style="color:white; border:0; height:120px;">선택</button>')
	});
}

$(function() {	
	$('#datePicker').datepicker({
		format: "yyyy/mm/dd",
        startDate: "today",
        maxViewMode: 0,
        todayBtn: "linked",
        language: "ko",
        toggleActive: true,
	    templates : {
	        leftArrow: '&laquo;',
	        rightArrow: '&raquo;'
	    },
	    language : "ko"	
	});

	$('#datePicker2').datepicker({
		format: "yyyy/mm/dd",
        startDate: "today",
        maxViewMode: 0,
        todayBtn: "linked",
        language: "ko",
        toggleActive: true,
	    templates : {
	        leftArrow: '&laquo;',
	        rightArrow: '&raquo;'
	    },
	    language : "ko"	
	});
	
	var chk1 = 0;
	changeCheckboxColor();
	$(document).on("click", "#roomSelectBtn1", function() {
		if(chk1 == 0) {
			$('#selectBtn').html('<button type="button" class="btn btn-outline-secondary btn-lg btn-block" id="roomSelectBtn1" style="border:0; height:120px;">선택</button>')
			chk1 = 1;
		} else {
			$('#selectBtn').html('<button type="button" class="btn btn-outline-secondary btn-lg bg-info btn-block" id="roomSelectBtn1" style="color:white; border:0; height:120px;">선택</button>')
			chk1 = 0;
		}
	});
	
});	
</script>

</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content4' style='height:600px; width:800px; margin-left:10px;'>
		<div class='col-12' id='map'><br><br>약도이미지</div>	
		<div class="input-group input-daterange mt-3" id='calander'>
			<div class='col col-6'>
				<label for='datePicker'>입실일: </label>
			    <input type="text" class="form-control" value="2021/03/11" id='datePicker'>
		    </div>
		    <div class='col col-6'>
			    <label for='datePicker2'>퇴실일: </label>
			    <input type="text" class="form-control" value="2021/03/13" id='datePicker2'>
		    </div>
		</div>
		<div class='row' style='margin-left:5px;'>
			<div class='col-12'>
				<table class='table table-borderd' style='border: 1px solid lightgray'>							
					<tr>
						<th rowspan='3' style='border: 1px solid lightgray'>객실 이미지</th>
						<th colspan='3' style='border: 1px solid lightgray'>글램핑 1호</th>
						<th rowspan='3' class='text-center'><div id='selectBtn'><button type='button'
							class='btn btn-outline-secondary btn-lg btn-block'
							style='border: 0; height:120px;' id='roomSelectBtn'>선택</button></div></th>
					</tr>			
					<tr>								
						<th style='border: 1px solid lightgray'>평일</th>
						<th style='border: 1px solid lightgray'>금, 토, 공휴일 전날</th>
						<th style='border: 1px solid lightgray'>성수기<br>(7월 15일 ~ 8월 20일)</th>	
					</tr>
					<tr>							
						<th style='border: 1px solid lightgray'>140,000원</th>
						<th style='border: 1px solid lightgray'>170,000원</th>
						<th style='border: 1px solid lightgray'>200,000원</th>								
					</tr>
				</table>
			</div>
			<div class='col-12'>
				<div class='row' style='margin-left: 1px;'>
					<div class='col-3' style='border: 1px solid black;'>객실 이용 요금</div>
					<div class='col-3' style='border: 1px solid black'>310,000원</div>
					<div class='col-6 text-right'>						
						<button type='button' class='btn btn-outline-secondary' data-toggle='modal'
								data-target='#cancelReservationModal'>취소</button>
						<a href='reserve02' type='button' class='btn btn-outline-primary'>다음</a>
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