<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<script>
function inLogo() {
	var contextPath = '<%= request.getContextPath() %>';
	var logoImage = '';
	
	$.ajax({
		url: contextPath + '/admin/logo',
		async: false
	}).done(result => {
		logoImage = result;
	});
	
	var imageSrc = '<c:url value="' + contextPath + '/res/' + logoImage + '"/>';
	
	var logoTag = '<img class="img-fluid" style="width:180px; height:98px;"'
		+ ' id="previewImg" src="' + imageSrc + '"/>';
	
	if(logoImage != '') {
		$('#logo').html(logoTag);
	} else $('#logo').html('<p style="font-size:25px; margin-top:25px;">로고 이미지</p>');
}

$(inLogo);
</script>

<style>
.modal {
	text-align:center;
	margin-top:300px;
}
</style>

<c:choose>
	<c:when test='${not empty admin}'>
		<script>
		function showImg(input) {
			if(input.files[0]) {
				let reader = new FileReader();
				reader.readAsDataURL(input.files[0]);
				
				reader.addEventListener('load', () => {
					$('#logo').html('<img class="img-fluid" style="width:180px; height:98px;" id="previewImg"/>');
					$('#previewImg').attr('src', reader.result);
				}, false);
			}
		}
		
		function alert(msg) {
			$('#msg').text(msg);
			$('#alertModal').modal();
		}
		
		$(() => {
			$('#logoSelect').change(function() {
				showImg(this);
				
				$('#confirmModal').modal();
				
				$('#logoConfirmBtn').click(() => {
					let data = new FormData($('.filebox')[0]);
					
					$.ajax({
						url: '<%= request.getContextPath() %>/admin/logo',
						method: 'post',
						data,
						processData: false,
						contentType: false,
						success: result => {
							if(result) alert('로고를 변경했습니다.');
						},
						error: err => alert('로고 변경에 실패했습니다.')
					});
				});
				
				$('#logoCancelBtn').click(() => {
					inLogo();
				});
			});
		});
		</script>
		
		<style>
		.filebox {
			margin:0;
		}
		
		.filebox label {
			float:left;
			padding:.5em .75em;
			border:1px solid black;
			border-radius:.25em;
			margin-left:10px;
			margin-right:10px;
			height:38px;
			cursor:pointer;
		}
		
		.filebox input[type='file'] {
			position:absolute;
			width:1px;
			height:1px;
			padding:0;
			margin:-1px;
			overflow:hidden;
			clip:rect(0,0,0,0);
			border:0;
		}
		</style>
		
		<div class='row' id='head1' style='margin-bottom:25px;'>
			<div class='col-4'></div>
			<div class='col-3' id='logo' onclick='location.href="<%= request.getContextPath() %>/admin";'>
				<p style='font-size:25px; margin-top:25px;'>로고 이미지</p>
			</div>
			<div class='col'></div>
			<div class='col-4' style='margin-top:100px;'>
				<form class='filebox'>
					<label for='logoSelect'>로고변경</label>
					<input type='file' id='logoSelect' name='logoSelect'>
				</form>
				<a href='<%= request.getContextPath() %>/user/logout' class='btn btn-default btn-md' id='loginBtn'>로그아웃</a>
			</div>
		</div>
		
		<div class='row' id='gnb'>
			<div class='col'>
				<ul class='nav nav-tabs nav-justified'>
					<li class='nav-item'>
						<a class='nav-link btn btn-secondary' href='<%= request.getContextPath() %>/admin' id='gnbBtn'>회원관리</a>
					</li>
					<li class='nav-item'>
						<a class='nav-link btn btn-secondary' href='<%= request.getContextPath() %>/admin/reservation/reservation' id='gnbBtn'>예약관리</a>
					</li>
					<li class='nav-item'>
						<a class='nav-link btn btn-secondary' href='<%= request.getContextPath() %>/admin/notice/listPosts' id='gnbBtn'>게시판 관리</a>
					</li>
				</ul>
			</div>
		</div>
	</c:when>
	<c:otherwise>
		<script>
		$(function() {
			navigator.geolocation.getCurrentPosition(function(position) {
				const apikey = '86191a4b30f177b3bd4655f1b6fbec72';
				const latitude = position.coords.latitude;
				const longitude = position.coords.longitude;
				const weatherDesc = {
						w01d:'맑음',
						w02d:'구름 조금',
						w03d:'구름',
						w04d:'흐림',
						w09d:'소나기',
						w10d:'비',
						w11d:'천둥',
						w13d:'눈',
						w50d:'안개',
					};
				var url = 'https://api.openweathermap.org/data/2.5/weather?lat='
						+ latitude
						+ '&lon='+longitude
						+ '&appid='+apikey+'&units=metric';
				
				$.ajax({
				    url: url,
				    type: 'GET',
				    dataType: 'json'
				}).done(function(json) {
					json.main.temp;
					json.main.temp_min;
					json.main.temp_max;
					json.weather[0].Main;
					
					var iconUrl = 'http://openweathermap.org/img/w/' + json.weather[0].icon + '.png';
					var wText = weatherDesc['w' + json.weather[0].icon];
					
					$('#weather').css('background-image', 'url(' + iconUrl + ')');
					
					$('#weather1').text(Math.round(json.main.temp)+'℃ ' + wText);
					
					var wText2 = '<span class="min">' + json.main.temp_min + '˚</span><span>/</span><span class="max">' + json.main.temp_max
								+ '˚</span>&nbsp;<span>풍속 ' + json.wind.speed + 'm/s</span>';
					
					$('#explain').html(wText2);
					
					$('#location').text(json.name);
				})
			}, function() {
				console.log('error');
			});
		});
		</script>
		
		<div class='row' id='head1'>
			<div class='col-4'></div>
			<div class='col-3' id='logo' onclick='location.href="<%= request.getContextPath() %>/";'>
				<p style='font-size:25px; margin-top:25px;'>로고 이미지</p>
			</div>
			<div class='col-5'  id='logoRight'>
				<div class='row'>
					<div class='col-3'>
						<p id='weather' style='float:left; margin-left:50px;
							font-size:10px; text-align:center; background-size:contain;'></p><br>
					</div>
					
					<div class='col-9'>
						<div class='row'>
							<p id='location' style='font-size:20px; margin-left:65px; font-weight:bold'>로딩중..</p>
						</div>
						<div class='row'>
							<p id='weather1' style='font-size:20px; margin-left:65px; font-weight:bold'>로딩중..</p>
						</div>
						<div class='row'>
							<p id='explain' style='float:left; margin-left:65px; font-size:14px; text-align:center;'>로딩중..</p>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<div class='row' id='head2'>
			<div class='col-8'></div>
			<div class='col-4' id='logoRightBottom'>
				<c:choose>
					<c:when test='${not empty login}'>
						<a href='<%= request.getContextPath() %>/reservation/checkRes'
							class='btn btn-default btn-md' id='myPageBtn'>마이페이지</a>
						<a href='<%= request.getContextPath() %>/user/logout'
							class='btn btn-default btn-md' id='logoutBtn'>로그아웃</a>
					</c:when>
					<c:otherwise>
						<a href='<%= request.getContextPath() %>/user/join'
							class='btn btn-default btn-md' id='userJoinBtn'>회원가입</a>
						<a href='<%= request.getContextPath() %>/user/login'
							class='btn btn-default btn-md' id='loginBtn'>로그인</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</c:otherwise>
</c:choose>

<div id='confirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p style='margin-top:20px;'>로고 이미지를 변경하시겠습니까?</p><br>
				<button type='button' class='btn' data-dismiss='modal' id='logoCancelBtn'
					style='background-color:white; color:black; border:1px solid black;'>취소</button>
				<button type='button' class='btn' data-dismiss='modal' id='logoConfirmBtn'
					style='background-color:#186322; color:white;'>확인</button>
			</div>
		</div>
	</div>
</div>

<div id='alertModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p id='msg' style='margin-top:20px;'></p><br>
				<button type='button' class='btn' data-dismiss='modal'
					style='background-color:#186322; color:white;'>확인</button>
			</div>
		</div>
	</div>
</div>
