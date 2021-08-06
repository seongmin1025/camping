<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/회원정보 수정</title>
<%@ include file='./../include/lib.jsp'%>

<script>
$.validator.addMethod(
	      'myPassword',
	      (v, e) => { 
	    	  return /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,12}$/.test(v);
	      }, '에러.');
	      
$.validator.addMethod(
	      'myTel',
	      (v, e) => {
	         return /^010\d{3,4}\d{4}$/.test(v);
	      }, '에러.');
	      
$.validator.addMethod(
	      'myNickname',
	      (v, e) => {
	    	  return /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{2,8}$/.test(v);
	      }, '에러.');
	      
$(() => {
	$('form').validate({
		rules: {
			password: {
				required: true,
				myPassword: true
			},
			password1: {
		        required: true,
		        equalTo: '#password'
		    },
		    name: {
		    	required: true,
		    },
		    birthday: {
		    	required: true,
		    },
		    tel: {
		    	required: true,
		    	myTel: true
		    },
		    nickname: {
		    	required: true,
		    	myNickname: true
		    }
		},		
		messages: {
			password: {
				required: '비밀번호를 입력해 주세요.',
				myPassword: '숫자와 문자를 조합하여 8~12자리를 입력하세요.'
			},
			password1: {
	            required: '암호를 입력하세요.',
	            equalTo: '입력하신 암호와 일치하지 않습니다.'
	       	},
	       	name: {
	            required: '이름을 입력하세요.',
	       	},
	       	birthday: {
	            required: '생년월일을 입력해주세요.',
	       	},
	       	tel: {
		    	required: '전화번호를 입력해주세요.',
		    	myTel: '‘-’를 제외한 전화번호를 입력하세요.'
		    },
		    nickname: {
		    	required: '중복 여부를 확인해야 합니다.',
		    	myNickname: '특수문자를 포함할 수 없습니다.'
		    }
		},
		submitHandler: () => $('form').submit()
	});
});

$('#fixBtn').click(() => {
	$('#fixModal').modal();
});
</script>
<style>
#profilImg{
	width: 100px;
	height: 100px;
}

#content {
	margin-top:30px;
	width:850px;
	height:500px;
}

#modal{
	display: none;
        width: 300px;
        padding: 20px 60px;
        background-color: #fefefe;
        border: 1px solid #888;
        border-radius: 3px;
}

#modal .modal_close_btn{
	position: absolute;
        top: 10px;
        right: 10px;
}
table {
	width: 580px;
	height: 80px;
}

th {
	border: 1px solid;
	height: 50px;
	text-align: center;
	background-color: grey;
}

td {
	border: 1px solid;
	height: 40px;
}

.rect2{
  top: 30px;
  left: 200px;
  position: relative;
  width: 80px;
  border: 1px solid;
}

input::placeholder{
	font-size: 0.5rem;
}

label.error{
	margin-left: 1rem;
	color: red;
	font-size: 0.7rem;
}	

#fixModal {
	text-align:center;
	margin-top:300px;
}

</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content' style='height:1000px;'>
		<div class='col-3' id='menubar'>
			<p style=	'height:30px; margin-bottom:10px; text-align:center;' id='menuHead'>
				<span style='margin-top:3px;'>마이페이지</span></p>               
			<ul>
				<li><a href='modify1' style='color:black;'><b><u>회원정보 수정</u></b></a></li>
				<li><a href='../reservation/checkRes' style='color:black;'>예약현황</a></li>
				<li><a href='../review/listPosts' style='color:black;'>나의 게시글</a></li>
				<li><a href='delete' style='color:black;'>회원탈퇴</a></li>
			</ul>                     
		</div>
		<div class='col-9'>
			<strong>&nbsp;|&nbsp;마이페이지</strong>
			<hr style='width:500px; margin-top:10px;'><br>
			<u><h4 class='text-center'>회원정보 수정</h4></u><br>
			
			<div class='row'>
				<div class='col'>
					<form>
						<table>
							<tbody>
								<tr>
								<th>아이디</th>
								<td>&nbsp;&nbsp;thejoeun@gmail.com</td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td>&nbsp;<input type='password' name='password' id='password' class='password1' placeholder='숫자와 문자를 조합하여 8~12자리를 입력하세요.'maxlength='12' style="width: 250px;"/></td>
								</tr>
								<tr>
								<th>비밀번호 확인</th>
								<td>&nbsp;<input type='password' name='password1' class='password1' placeholder='비밀번호를 한 번 더 입력하세요.' maxlength='12' style="width: 250px;"/></td>
							</tr>
							<tr>
								<th>이름</th>
								<td>&nbsp;<input type='text' name='name' placeholder='이름을 입력하세요.' style="width: 150px;"/></td>
							</tr>
							<tr>
								<th><small>*필수 입력</small> <br>생년월일</th>
								<td>&nbsp;<input type='date' name='birthday' id='birthday'/> </td>
							</tr>
							<tr>
								<th><small>*필수 입력</small><br>전화번호</th>
								<td>&nbsp;<input type='tel' name='tel' id='tel' placeholder="'-'를 제외하고 입력하세요." style="width: 180px;"/></td>
							</tr>
							<tr>
								<th><small>*필수 입력</small><br>닉네임</th>
								<td>
									&nbsp;<input type='text' name='nickname' id='nickname' placeholder='특수문자를 포함할 수 없습니다.'style="width:180px;"/>
									<button type='button' class='btn btn-sm' style='height:25px; text-align:center;
											font-size:10px; background-color:#323232; color:white;'>중복확인</button>
								</td>
							</tr>
							<tr>
								<th><span style='margin-left:10px; margin-top:10px;'>프로필 사진</span></th>
								<td>
									<p style='float:left;'><textarea style='margin-left:10px; text-align:center;
										width:120px; height:130px; margin-top:10px; resize: none;' readonly
										name='photo' placeholder='&#13;&#10;&#13;&#10;&#13;&#10;파일을  &#13;&#10;첨부하세요.'></textarea></p>
									<span style='font-size:12px; margin-left:20px; float:left; margin-top:20px;'>
										프로필 사진을 추가하지 않아도 가입이 가능합니다.</span><br><br><br>
									<button class='btn btn-sm' style='height:25px; text-align:center; float:left; margin-left:25px;
										margin-top:20px; font-size:10px; background-color:#323232; color:white;'>파일첨부</button>
									<span style='font-size:12px; float:left; margin-top:20px; margin-left:10px;'>
									&nbsp;.jpg / .png / .bmp 형식의 파일을 업로드 하세요.</span>
								</td>
							</tr>
						</tbody>
					</table>
						<a type='button' class='btn rect2' href='../reservation/checkRes'>취소</a>
						<button type='submit' id='fixBtn' class='btn btn rect2' data-toggle='modal'
								data-target='#fixModal'>확인</button>
					</form>
				</div>
			</div>
		</div>
	</div>							
	
	<%@ include file='./../include/footer.jsp'%>
</div>

<div id='fixModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p style='margin-top:20px;'>회원정보 수정이 완료되었습니다.</p>
				<br>
				<a type='button' class='btn' style='background-color:#323232; color:white;'
					href='../reservation/checkRes'>확인</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>