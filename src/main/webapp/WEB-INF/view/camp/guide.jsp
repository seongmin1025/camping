<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<head>
<title>더조은 캠핑/이용안내</title>
<%@ include file='./../include/lib.jsp'%>

<style>
table {
    width: 600px;
    height: 300px;
}		
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content5' style='height:2000px;'>
		<div class='col-3' id='campMenubar'>
			<p style='height:30px; margin-bottom:10px; text-align:center;' id='campMenuHead'>
				<span style='margin-top:3px;'>시설안내</span></p>               
			<ul>
				<li><a href='navigate' style='color:black;'>찾아오시는 길</a></li>
				<li><a href='viewRooms' style='color:black;'>캠핑장 전경</a></li>
				<li><a href='viewComforts' style='color:black;'>부대시설</a></li>
				<li><a href='viewProducts' style='color:black;'>대여 물품, 판매 물품</a></li>
				<li><a href='guide' style='color:black;'><b><u>이용안내</u></b></a></li>
				<li><a href='viewSights' style='color:black;'>주변 관광지</a></li>
				<li><a href='#' onclick='window.open("https://www.mangoplate.com/search/%EC%A0%95%EB%B0%9C%EC%82%B0%EC%97%AD")' style='color:black;' target='_blank'>주변 맛집</a></li>
			</ul>
		</div>
		<div class='col-9'>
			<strong>&nbsp;|&nbsp;이용안내</strong>
			<hr style='width:500px; margin-top:10px;'>
			<div class='row'>
				<div class='col'>
				<p align=center style='font-size:15;'><strong>1.이용요금</strong></p>
				 <table border="1" style="margin-left: auto; margin-right: auto;">
				 	<tr>
					<td align=center rowspan='2' width='70'><strong>구분</strong></td>
	    			<td align=center rowspan='2' width='90'><strong>기준<br>숙박인원</strong></td>
	    			<td align=center rowspan='2'><strong>성수기<br>(7월 15일 ~ 8월 20일)</strong></td>
	    			<td align=center colspan='2'><strong>비수기</strong></td>			
	    			</tr>
					<tr>
	    			<td align=center><strong>금, 토,<br>공휴일 전날</strong></td>
	    			<td align=center><strong>일 ~ 목</strong></td>
					</tr>
					<tr>
	   				<td align=center width='70'>글램핑</td>
	   				<td align=center width='90'>기준2명/<br>최대4명</td>
	   				<td align=center>200,000원</td>	
	   				<td align=center>170,000원</td>
	   				<td align=center>140,000원</td>  	  			
					</tr>
					<tr>
	   				<td align=center width='70'>캐러밴</td>
	   				<td align=center width='90'>기준4명/<br>최대4명</td>
	   				<td align=center>230,000원</td>	
	   				<td align=center>190,000원</td>
	   				<td align=center>160,000원</td>  	  			
					</tr>
   				</table><br><br>
   					<div style='font-size:15;'>
   					<p align=center ><strong>2.이용안내</strong></p>
   					<p>입실 시간 : 15시 ~ 22시</p>
   					<p>(22 시 이후의 입실은 사전에 반드시 연락을 주시기 바랍니다.)</p>
   					<p>퇴실 시간 : 11시</p>
   					<p>입실 시간은 오후 3시부터이며 객실 상황에 따라 다소 지연될 수 있습니다.</p>
   					<p>퇴실 시간은 익일 오전 11시 입니다. 다음 고객님을 위해 시간을 지켜주시기 바랍니다.</p><br><br>  	
   					
   					<p align=center><strong>3.주의사항</strong></p>	
   					<p>1. 보호자를 동반하지 않은 미성년자는 어떠한 경우에도 입실하실 수 없습니다.</p>	
   					<p>2. 당일 예약 시에는 전화를 먼저 주신 후 예약하시기 바랍니다.</p>
   					<p>3. 예약 인원 외에 일행은 당일 숙박을 하지 않는다 하더라도 출입이 불가능합니다.</p>
   					<p>(다른 객실 손님들에게 피해를 주지 않기 위함 이니 양해 바랍니다.)</p>
   					<p>4. 예약인원 초과 또는 무단 입실은 환불 없이 퇴실 조치합니다.</p>
   					<p>(기준인원 초과 시 추가요금이 부과되며 현장에서 결제하셔야 합니다.)</p>
   					<p>5. 모든 고객님의 조용하고 편안한 휴식을 위하여 고성방가, 가무, 무분별한 음주는 삼가 주시기 바랍니다.</p>	
   					<p>특히 오후 10시 이후에 고성방가 등의 소음으로 다른 손님/마을 주민에게 피해가 가는 경우 주의를 드릴 수
						있으며, 주의 후에도 시정되지 않을 경우 퇴실 조치합니다. 이 경우 이용요금은 환불되지 않습니다.</p>	
					<p>6. 객실 내에서는 금연이며, 튀김 및 생선/육류 등의 구이를 금하오니 야외 바비큐시설을 이용해주시기 바랍니다.</p>	
					<p>7. 바비큐는 화재 및 냄새로 인한 다른 손님의 배려 차원에서 지정된 장소에서만 이용 가능합니다.</p>
					<p>(바비큐 그릴 사용 시 쿠킹 포일은 화재의 위험성이 있으므로 절대 사용을 금지하여 주시기 바랍니다.)</p>
					<p>8. 캠핑장에서 제공하는 그릴, 숯 이외에 다른 캠핑 장비(화로, 그릴, 버너 등)는 캠핑장 내 어디에서도 사용하실수 없습니다.</p>
					<p>9. 바비큐는 우천 시 사용이 불가할 수 있습니다.</p>
					<p>10. 애완동물은 부득이하게 다른 객실 및 손님을 위해 입실을 금하오니 양해 바랍니다.</p>
					<p>11. 이용객의 부주의로 발생한 리조트 시설 및 객실 내/외부에서의 사고는 책임지지 않습니다.</p>
					<p>12. 집기 파손 시 반드시 매니저에게 연락 주셔야 합니다.</p>
					<p>13. 개인적인 용도의 사진촬영 외에 상업적인 촬영(쇼핑몰, 잡지, 모델 등)은 사전에 리조트 측 마케팅 담당자와협의 하에 가능하며, 사전동의 없이 촬영을 목적으로 객실을 예약한 경우 입실 거부 및 환불 없이 퇴실 조치합니다.</p>
					<p>14. 퇴실 시 음식물을 비롯한 모든 쓰레기는 분리수거해 주시고, 사용하신 주방기구는 다음 손님을 위해 세척해주시기 바랍니다.</p>
					<p>15. 퇴실 시 객실 정리가 끝나시면 매니저에게 연락하시어 퇴실 점검을 받으시기 바랍니다.</p>
   					</div>  					
				</div>
			</div>
		</div>
	</div>							
	
	<%@ include file='./../include/footer.jsp'%>
</div>
</body>
</html>