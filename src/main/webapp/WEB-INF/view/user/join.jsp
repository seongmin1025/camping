<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/회원가입</title>
<%@ include file='./../include/lib.jsp'%>

<script>
var verificationCode = '1000000';

function alert(msg) {
	$('#msg').text(msg);
	$('#alertModal').modal();
}

function agreeCheck() {
	if($('#agree1').is(':checked') && $('#agree2').is(':checked')) {
		$('#joinBtn').html('<button class="btn btn-secondary btn-sm" id="cancelBtn" '
						+ 'onclick="location.href=`./../`;">취소</button> '
						+ '<button class="btn-sm" id="joinConfirmBtn">완료</button>');
	} else {
		$('#joinBtn').html('<button class="btn btn-secondary btn-sm" id="cancelBtn" '
						+ 'onclick="location.href=`./../`;">취소</button> '
						+ '<button class="btn-sm" id="joinConfirmBtn" '
						+ 'onclick="alert(`이용약관 및 개인정보 처리방침에 동의하셔야 가입이 가능합니다.`)">완료</button>');
	}
}

function codeConfirm() {
	if($('#verificationCode').val() == verificationCode) return true;
	else return false;
}

function nickCheck(v) {
	var myNick = v;
	usedNick = '';
	
	$.ajax({
		url:'nickChk',
		async: false,
		data: {
			nickname: myNick
		}
	}).done(result => {
		usedNick = result;
	});
	
	return !(myNick == usedNick);
}

$.validator.addMethod('idRepetition', (v, e) => {
	var myId = v;
	var usedId = '';
	
	$.ajax({
		url:'idChk',
		async: false,
		data: {
			userId: myId
		}
	}).done(result => {
		usedId = result;
	});
	
	return !(myId == usedId);
}, '에러.');

$.validator.addMethod('codeChk', (v, e) => {
	if(v == verificationCode) return true;
	else return false;
}, '에러.');

$.validator.addMethod('myPw', (v, e) => {
	return /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,12}$/.test(v);
}, '에러.');

$.validator.addMethod('myName', (v, e) => {
	return /^[가-힣]{2,}$/.test(v);
}, '에러.');

$.validator.addMethod('myPhone', (v, e) => {
	return /^010\d{4}\d{4}$/.test(v);
}, '에러.');

$.validator.addMethod('myNickMinVal', (v, e) => {
	return /^[가-힣A-Za-z\d\W]{2,8}$/.test(v);
}, '에러.');

$.validator.addMethod('myNickWord', (v, e) => {
	return /^[가-힣A-Za-z\d]{2,8}$/.test(v);
}, '에러.');

$.validator.addMethod('nickRepetition', (v, e) => {
	return nickCheck(v);
}, '에러.');

$(() => {
	agreeCheck();
	
	$('#sendCodeBtn').click(() => {
		if($('#sendCodeBtn').attr('class') == 'btn btn-sm') {
			$('#sendCodeBtn').addClass('disabled');
			userId = $('#userId').val();
			
			if(userId) {
				$.ajax({
					url:'sendCode',
					data: {
						userId: userId
					}
				}).done(result => {
					if(result.length == 6) {
						verificationCode = result;
						alert('인증번호가 발송되었습니다.');
						$('#sendCodeBtn').removeClass('disabled');
					} else {
						alert('인증번호 발송에 실패했습니다.');
						$('#sendCodeBtn').removeClass('disabled');
					}
				});
			} else {
				alert('아이디를 입력해 주세요.');
				$('#sendCodeBtn').removeClass('disabled');
			}
		}
	});
	
	$('#codeConfirmBtn').click(() => {
		if(codeConfirm()) alert('인증번호 인증이 완료되었습니다.');
		else alert('인증번호를 확인해 주세요.');
	});
	
	$('#nickCheckBtn').click(() => {
		var nick = $('#nickname').val();
		var lengthChk = /^[가-힣A-Za-z\d\W]{2,8}$/.test(nick);
		var wordsChk = /^[가-힣A-Za-z\d]{2,8}$/.test(nick);
		var reptitionChk = nickCheck(nick);
		
		if(lengthChk && wordsChk && reptitionChk) alert('사용 가능한 닉네임입니다.');
		else if(lengthChk && wordsChk) alert('이미 사용 중인 닉네임입니다.');
		else if(lengthChk) alert('특수문자를 포함할 수 없습니다.');
		else if(nick.length == 1 || nick.length > 8) alert('2~8글자를 입력하세요.');
		else if(nick == '') alert('닉네임을 입력하세요.');
	});
	
	$('form').validate({
		rules: {
			userId: {
		        required: true,
		        email: true,
		        idRepetition: true
		    },
		    verificationCode: {
		    	required: true,
		    	codeChk: true
		    },
		    userPw: {
				required: true,
				myPw: true
			},
			userPwConfirm: {
		        required: true,
		        equalTo: '#userPw'
		    },
		    userName: {
		    	required: true,
		    	myName: true
		    },
		    birthday: {
		    	required: true
		    },
		    phoneNumber: {
				required: true,
				myPhone: true
			},
			nickname: {
		    	required: true,
		    	myNickMinVal: true,
		    	myNickWord: true,
		    	nickRepetition: true
		    }
		},
		messages: {
			userId: {
				required: '아이디를 입력해 주세요.',
				email: '이메일을 입력해야 합니다.',
				idRepetition: '이미 사용 중인 아이디입니다.'
			},
			verificationCode: {
				required: '인증번호를 입력해야 합니다.',
				codeChk: '인증번호가 일치하지 않습니다.'
			},
			userPw: {
				required: '비밀번호를 입력해 주세요.',
				myPw: '숫자와 문자를 조합하여 8~12자리를 입력하세요.'
			},
			userPwConfirm: {
				required: '입력하신 암호와 일치하지 않습니다.',
				equalTo: '입력하신 암호와 일치하지 않습니다.'
			},
			userName: {
				required: '이름을 입력하세요.',
				myName: '2글자 이상의 한글로 입력하세요.'
			},
			birthday: {
				required: '생년월일을 입력하세요.'
			},
			phoneNumber: {
				required: '‘-’를 제외한 전화번호를 입력하세요.',
				myPhone: '‘-’를 제외한 전화번호를 입력하세요.'
			},
		    nickname: {
				required: '닉네임을 입력하세요.',
				myNickMinVal: '2~8글자를 입력하세요.',
				myNickWord: '특수문자를 포함할 수 없습니다.',
				nickRepetition: '이미 사용 중인 닉네임입니다.'
			},
		},
		submitHandler: function(form) {
			if($('#agree1').is(':checked') && $('#agree2').is(':checked')) {
				if(codeConfirm()) {
					$.ajax({
						url: 'join',
						method: 'post',
						data: JSON.stringify({
							userNumber: 0,
							userId: $('#userId').val(),
							userPw: $('#userPw').val(),
							userName: $('#userName').val(),
						    birthday: $('#birthday').val(),
						    phoneNumber: $('#phoneNumber').val(),
							nickname: $('#nickname').val(),
							profilePhoto: ''
						}),
						contentType: 'application/json',
						success: function(data) {
							if(data == '1') {
								$('#joinConfirmModal').modal({backdrop:'static', keyboard:false});
								
								$('#joinCompleteBtn').click(() => {
									location.href='login';
								});
							} else {
								alert('생년월일과 그 외 정보들이 제대로 입력됐는지 확인해 주세요.');
							}
						}
					}).fail(err => {
						alert('회원가입에 실패했습니다.');
					});
				} else alert('인증번호를 확인해 주세요.');
			} else alert('이용약관 및 개인정보 처리방침에 동의하셔야 가입이 가능합니다.');
		}
	});
	
	$('#agree1').change(() => agreeCheck());
	
	$('#agree2').change(() => agreeCheck());	
});
</script>
<style>	
#content {
	margin-top:30px;
	text-align:center;
	width:850px;
	margin-bottom:0
}

#content2 {
	text-align:left;
	width:850px;
	height:10px;
}

#content3 {
	text-align:left;
	width:850px;
	height:600px;
}
	
#content #join {
	display:inline-block;
	width:700px;
	height:30px;
	text-align:left;
	margin-left:50px;	
}

#content #join hr {
	margin:5px;
	width:650px;
	margin-bottom:10px;
}

#cancelBtn {
	margin-left:40px;
}

#joinConfirmBtn {
	background-color:#186322;
	color:white;
	margin-left:10px;
}

::-webkit-input-placeholder {
	font-size:5px;
}

.modal {
	text-align:center;
	margin-top:300px;
}

table {
	width:100%;
}

input[type="text"] {
	display:inline;
	width:250px;
	height:25px;
}	

label.error {
	margin-left: 1rem;
	color: red;
	font-size: 0.7rem;
}	
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>
		
	<div class='row' id='content'>
		<div class='col' id='join'>
			<strong>&nbsp;&nbsp;|&nbsp;회원가입</strong>
			<hr>
			<textarea style='width:340px; height:110px; float:left; border:1px solid grey; 
				font-size:13px; padding:10px; resize: none;' readonly>
제1조 목적

본 이용약관은 “더조은 캠핑”(이하 "사이트")의 서비스의 이용조건과 운영에 관한 제반사항 규정을 목적으로 합니다.

제2조 용어의 정의

본 약관에서 사용되는 주요한 용어의 정의는 다음과 같습니다.

① 회원 : 사이트의 약관에 동의하고 개인정보를 제공하여 회원등록을 한 자로서, 사이트와의 이용계약을 체결하고 사이트를 이용하는 이용자를 말합니다.
② 이용계약 : 사이트 이용과 관련하여 사이트와 회원간에 체결 하는 계약을 말합니다.
③ 회원 아이디(이하 "ID") : 회원의 식별과 회원의 서비스 이용을 위하여 회원별로 부여하는 고유한 문자와 숫자의 조합을 말합니다.
④ 비밀번호 : 회원이 부여받은 ID와 일치된 회원임을 확인하고 회원의 권익보호를 위하여 회원이 선정한 문자와 숫자의 조합을 말합니다.
⑤ 운영자 : 서비스에 홈페이지를 개설하여 운영하는 운영자를 말합니다.
⑥ 해지 : 회원이 이용계약을 해약하는 것을 말합니다.

제3조 약관외 준칙

운영자는 필요한 경우 별도로 운영정책을 공지 안내할 수 있으며, 본 약관과 운영정책이 중첩될 경우 운영정책이 우선 적용됩니다.

제4조 이용계약 체결

① 이용계약은 회원으로 등록하여 사이트를 이용하려는 자의 본 약관 내용에 대한 동의와 가입신청에 대하여 운영자의 이용승낙으로 성립합니다.
② 회원으로 등록하여 서비스를 이용하려는 자는 사이트 가입신청시 본 약관을 읽고 아래에 있는 "동의합니다"를 선택하는 것으로 본 약관에 대한 동의 의사 표시를 합니다.

제5조 서비스 이용 신청

① 회원으로 등록하여 사이트를 이용하려는 이용자는 사이트에서 요청하는 제반정보(이용자ID,비밀번호, 닉네임 등)를 제공해야 합니다.
② 타인의 정보를 도용하거나 허위의 정보를 등록하는 등 본인의 진정한 정보를 등록하지 않은 회원은 사이트 이용과 관련하여 아무런 권리를 주장할 수 없으며, 관계 법령에 따라 처벌 받을 수 있습니다.

제6조 개인정보처리방침

사이트 및 운영자는 회원가입시 제공한 개인정보 중 비밀번호를 가지고 있지 않으며 이와 관련된 부분은 사이트의 개인정보처리방침을 따릅니다.
운영자는 관계법령이 정하는 바에 따라 회원등록정보를 포함한 회원의 개인정보를 보호하기 위하여 노력을 합니다.

회원의 개인정보보호에 관하여 관계법령 및 사이트가 정하는 개인정보처리방침에 정한 바에 따릅니다.

단, 회원의 귀책사유로 인해 노출된 정보에 대해 운영자는 일체의 책임을 지지 않습니다.
운영자는 회원이 미풍양속에 저해되거나 국가안보에 위배되는 게시물 등 위법한 게시물을 등록 · 배포할 경우 관련기관의 요청이 있을시 회원의 자료를 열람 및 해당 자료를 관련기관에 제출할 수 있습니다.

제7조 운영자의 의무

① 운영자는 이용회원으로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 가급적빨리 처리하여야 합니다. 다만, 개인적인 사정으로 신속한 처리가 곤란한 경우에는 사후에 공지 또는 이용회원에게 쪽지, 전자우편 등을 보내는 등 최선을 다합니다.
② 운영자는 계속적이고 안정적인 사이트 제공을 위하여 설비에 장애가 생기거나 유실된 때에는 이를 지체 없이 수리 또는 복구할 수 있도록 사이트에 요구할 수 있습니다. 다만, 천재지변 또는 사이트나 운영자에 부득이한 사유가 있는 경우, 사이트 운영을 일시 정지할 수 있습니다.

제8조 회원의 의무

① 회원은 본 약관에서 규정하는 사항과 운영자가 정한 제반규정, 공지사항 및 운영정책 등 사이트가 공지하는 사항 및 관계법령을 준수하여야 하며, 기타 사이트의 업무에 방해가 되는 행위, 사이트의 명예를 손상시키는 행위를 해서는 안됩니다.
② 회원은 사이트의 명시적 동의가 없는 한 서비스의 이용권한, 기타 이용계약상 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.
③ 이용고객은 아이디 및 비밀번호 관리에 상당한 주의를 기울여야 하며, 운영자나 사이트의 동의 없이 제3자에게 아이디를 제공하여 이용하게 할 수 없습니다.
④ 회원은 운영자와 사이트 및 제3자의 지적 재산권을 침해해서는 안됩니다.

제9조 서비스 이용시간

① 서비스 이용시간은 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 단, 사이트는 시스템 정기점검, 증설 및 교체를 위해 사이트가 정한 날이나 시간에 서비스를 일시중단 할 수 있으며 예정된 작업으로 인한 서비스 일시 중단은 사이트의 홈페이지에 사전에 공지하오니 수시로 참고하시길 바랍니다.
② 단, 사이트는 다음 경우에 대하여 사전 공지나 예고없이 서비스를 일시적 혹은 영구적으로 중단할 수 있습니다.
- 긴급한 시스템 점검, 증설, 교체, 고장 혹은 오동작을 일으키는 경우
- 국가비상사태, 정전, 천재지변 등의 불가항력적인 사유가 있는 경우
- 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지한 경우
- 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우
③ 전항에 의한 서비스 중단의 경우 사이트는 사전에 공지사항 등을 통하여 회원에게 통지 합니다. 단, 사이트가 통제할 수 없는 사유로 발생한 서비스의 중단에 대하여 사전공지가 불가능한 경우에는 사후공지로 대신합니다.

제10조 서비스 이용 해지

① 회원이 사이트와의 이용계약을 해지하고자 하는 경우에는 회원 본인이 온라인을 통하여 등록해지신청을 하여야 합니다. 한편, 사이트 이용해지와 별개로 사이트에 대한 이용계약 해지는 별도로 하셔야 합니다.
② 해지신청과 동시에 사이트가 제공하는 사이트 관련 프로그램이 회원관리 화면에서 자동적으로 삭제됨으로 운영자는 더 이상 해지신청자의 정보를 볼 수 없습니다.

제11조 서비스 이용 제한

회원은 다음 각 호에 해당하는 행위를 하여서는 아니되며 해당 행위를 한 경우에 사이트는 회원의 서비스 이용 제한 및 적법한 조치를 취할 수 있으며 이용계약을 해지하거나 기간을 정하여 서비스를 중지할 수 있습니다.
① 회원 가입시 혹은 가입 후 정보 변경시 허위 내용을 등록하는 행위
② 타인의 사이트 이용을 방해하거나 정보를 도용하는 행위
③ 사이트의 운영진, 직원 또는 관계자를 사칭하는 행위
④ 사이트, 기타 제3자의 인격권 또는 지적재산권을 침해하거나 업무를 방해하는 행위
⑤ 다른 회원의 ID를 부정하게 사용하는 행위
⑥ 다른 회원에 대한 개인정보를 그 동의 없이 수집, 저장, 공개하는 행위
⑦ 범죄와 결부된다고 객관적으로 판단되는 행위
⑧ 기타 관련 법령에 위배되는 행위

제12조 게시물의 관리

① 사이트의 게시물과 자료의 관리 및 운영의 책임은 운영자에게 있습니다. 운영자는 항상 불량 게시물 및 자료에 대하여 모니터링을 하여야 하며, 불량 게시물 및 자료를 발견하거나 신고를 받으면 해당 게시물 및 자료를 삭제하고 이를 등록한 회원에게 주의를 주어야 합니다.
한편, 이용회원이 올린 게시물에 대해서는 게시자 본인에게 책임이 있으니 회원스스로 본 이용약관에서 위배되는 게시물은 게재해서된 안됩니다.
② 정보통신윤리위원회 등 공공기관의 시정요구가 있는 경우 운영자는 회원의 사전동의 없이 게시물을 삭제하거나 이동 할 수 있습니다.
3. 불량게시물의 판단기준은 다음과 같습니다.
- 다른 회원 또는 제3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우
- 공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우
- 불법복제 또는 해킹을 조장하는 내용인 경우
- 영리를 목적으로 하는 광고일 경우
- 범죄와 결부된다고 객관적으로 인정되는 내용일 경우
- 다른 이용자 또는 제3자와 저작권 등 기타 권리를 침해하는 경우
- 기타 관계법령에 위배된다고 판단되는 경우4. 사이트 및 운영자는 게시물 등에 대하여 제3자로부터 명예훼손, 지적재산권 등의 권리 침해를 이유로 게시중단 요청을 받은 경우 이를 임시로 게시중단(전송중단)할 수 있으며, 게시중단 요청자와 게시물 등록자 간에 소송, 합의 기타 이에 준하는 관련기관의 결정 등이 이루어져 사이트에 접수된 경우 이에 따릅니다.

제13조 게시물의 보관

사이트 운영자가 불가피한 사정으로 본 사이트를 중단하게 될 경우, 회원에게 사전 공지를 하고 게시물의 이전이 쉽도록 모든 조치를 취하기 위해 노력합니다.

제14조 게시물에 대한 저작권

① 회원이 사이트 내에 게시한 게시물의 저작권은 게시한 회원에게 귀속됩니다. 또한 사이트는 게시자의 동의 없이 게시물을 상업적으로 이용할 수 없습니다. 다만 비영리 목적인 경우는 그러하지 아니하며, 또한 서비스 내의 게재권을 갖습니다.
② 회원은 서비스를 이용하여 취득한 정보를 임의 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.
③ 운영자는 회원이 게시하거나 등록하는 사이트 내의 내용물, 게시 내용에 대해 제12조 각 호에 해당된다고 판단되는 경우 사전통지 없이 삭제하거나 이동 또는 등록 거부할 수 있습니다.

제15조 손해배상

① 본 사이트의 발생한 모든 민,형법상 책임은 회원 본인에게 1차적으로 있습니다.
② 본 사이트로부터 회원이 받은 손해가 천재지변 등 불가항력적이거나 회원의 고의 또는 과실로 인하여 발생한 때에는 손해배상을 하지 하지 않습니다.

제16조 면책

① 운영자는 회원이 사이트의 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.
② 운영자는 본 사이트의 서비스 기반 및 타 통신업자가 제공하는 전기통신서비스의 장애로 인한 경우에는 책임이 면제되며 본 사이트의 서비스 기반과 관련되어 발생한 손해에 대해서는 사이트의 이용약관에 준합니다
③ 운영자는 회원이 저장, 게시 또는 전송한 자료와 관련하여 일체의 책임을 지지 않습니다.
④ 운영자는 회원의 귀책사유로 인하여 서비스 이용의 장애가 발생한 경우에는 책임지지 아니합니다.
⑤ 운영자는 회원 상호간 또는 회원과 제3자 상호간, 기타 회원의 본 서비스 내외를 불문한 일체의 활동(데이터 전송, 기타 커뮤니티 활동 포함)에 대하여 책임을 지지 않습니다.
⑥ 운영자는 회원이 게시 또는 전송한 자료 및 본 사이트로 회원이 제공받을 수 있는 모든 자료들의 진위, 신뢰도, 정확성 등 그 내용에 대해서는 책임지지 아니합니다.
⑦ 운영자는 회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 하여 물품거래 등을 한 경우에 그로부터 발생하는 일체의 손해에 대하여 책임지지 아니합니다.
⑧ 운영자는 시삽의 귀책사유 없이 회원간 또는 회원과 제3자간에 발생한 일체의 분쟁에 대하여 책임지지 아니합니다.
⑨ 운영자는 서버 등 설비의 관리, 점검, 보수, 교체 과정 또는 소프트웨어의 운용 과정에서 고의 또는 고의에 준하는 중대한 과실 없이 발생할 수 있는 시스템의 장애, 제3자의 공격으로 인한 시스템의 장애, 국내외의 저명한 연구기관이나 보안관련 업체에 의해 대응방법이 개발되지 아니한 컴퓨터 바이러스 등의 유포나 기타 운영자가 통제할 수 없는 불가항력적 사유로 인한 회원의 손해에 대하여 책임지지 않습니다.

부칙

이 약관은 2021.03.15 부터 시행합니다.
			</textarea>
			<textarea style='width:350px; height:110px; float:left; border:1px solid grey; 
				font-size:13px; margin-left:10px; padding:10px; resize: none;' readonly>
1. 개인정보 수집목적 및 이용목적

가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스

나. 회원 관리
회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리 , 고지사항 전달

2. 수집하는 개인정보 항목 : 이름, 로그인ID , 비밀번호 , 주소, 휴대전화번호 , 이메일 , 14세미만 가입자의 경우 법정대리인의 정보

3. 개인정보의 보유기간 및 이용기간

원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.

가. 회사 내부 방침에 의한 정보 보유 사유
o 부정거래 방지 및 운영방침에 따른 보관 : 5년

나. 관련 법령에 의한 정보보유 사유
o 계약 또는 청약철회 등에 관한 기록
-보존이유 : 전자상거래등에서의소비자보호에관한법률
-보존기간 : 5년
o 대금 결제 및 재화 등의 공급에 관한 기록
-보존이유: 전자상거래등에서의소비자보호에관한법률
-보존기간 : 5년
o 소비자 불만 또는 분쟁처리에 관한 기록
-보존이유 : 전자상거래등에서의소비자보호에관한법률
-보존기간 : 3년
o 로그 기록
-보존이유: 통신비밀보호법
-보존기간 : 3개월

※ 동의를 거부할 수 있으나 거부시 회원 가입이 불가능합니다.
			</textarea>
		</div>
	</div>		
	<div class='row' id='content2'>
		<div class='col' id='joinAgree' style='margin-top:130px; margin-left:80px;'>												
				<input type='checkbox' class='form-check-input' id='agree1'/>			
				<label for='agree1'>이용약관 동의 (필수)&nbsp;&nbsp;</label>
				<input type='checkbox' class='form-check-input' id='agree2'
					style='margin-left:150px;'/>
				<label for='agree2' style='margin-left:170px;'>개인정보 수집 및 이용 (필수)</label>&nbsp;&nbsp;&nbsp;														
		</div>
		<div class='col' id='content3'>
			<form>
				<table class='table table-bordered' id='classTop' style='width:700px; 
					margin-left:50px;'>				
					<tbody>					
						<tr>
							<th style='background-color:#d2d2d2;'>
								<span style='font-size:10px;'>*필수입력</span><br>
								<span style='margin-left:10px;'>아이디</span>
							</th>
							<td>
								<input type='text' style='margin-left:10px; text-align:center;'
									name='userId' id='userId' placeholder='이메일 형식으로 입력하세요.'/>
								<button type='button' class='btn btn-sm' id='sendCodeBtn'
									style='height:25px; text-align:center; font-size:10px;
										background-color:#323232; color:white;'>인증번호 발송</button>
							</td>
						</tr>
						<tr>
							<th style='background-color:#d2d2d2;'>
								<span style='font-size:10px;'>*필수입력</span><br>
								<span style='margin-left:10px;'>인증번호</span>
							</th>
							<td>
								<input type='text' style='margin-left:10px; text-align:center;' maxlength='6'
									name='verificationCode' id='verificationCode' placeholder='작성하신 이메일로 발송된 인증번호를 입력하세요.'/>
								<button type='button' class='btn btn-sm' id='codeConfirmBtn'
									style='height:25px; text-align:center; font-size:10px;
										background-color:#323232; color:white;'>입력확인</button>
							</td>
						</tr>
						<tr>
							<th style='background-color:#d2d2d2;'>
								<span style='font-size:10px;'>*필수입력</span><br>
								<span style='margin-left:10px;'>비밀번호</span>
							</th>
							<td>
								<input type='password' style='margin-left:10px; text-align:center;' 
									name='userPw' id='userPw' placeholder='숫자와 문자를 조합하여 8-12자리를 입력하세요.'/>
							</td>
						</tr>
						<tr>
							<th style='background-color:#d2d2d2;'>
								<span style='font-size:10px;'>*필수입력</span><br>
								<span style='margin-left:10px;'>비밀번호 확인</span>
							</th>
							<td>
								<input type='password' style='margin-left:10px; text-align:center;' 
								name='userPwConfirm' placeholder='비밀번호를 한 번 더 입력하세요.'/>
							</td>
						</tr>	
						<tr>
							<th style='background-color:#d2d2d2;'>
								<span style='font-size:10px;'>*필수입력</span><br>
								<span style='margin-left:10px;'>이름</span>
							</th>
							<td>
								<input type='text' style='margin-left:10px; text-align:center;' 
									name='userName' id='userName' placeholder='이름을 입력하세요.'/>
							</td>
						</tr>
						<tr>
							<th style='background-color:#d2d2d2;'>
								<span style='font-size:10px;'>*필수입력</span><br>
								<span style='margin-left:10px;'>생년월일</span>
							</th>
							<td><input name='birthday' id='birthday' type='date' style='margin-left:10px;'/></td>
						</tr>
						<tr>
							<th style='background-color:#d2d2d2;'>
								<span style='font-size:10px;'>*필수입력</span><br>
								<span style='margin-left:10px;'>전화번호</span>
							</th>
							<td>
								<input type='text' style='margin-left:10px; text-align:center;' 
									name='phoneNumber' id='phoneNumber' placeholder='"-"를 제외하고 입력하세요.'/>
							</td>
						</tr>
						<tr>
							<th style='background-color:#d2d2d2;'>
								<span style='font-size:10px;'>*필수입력</span><br>
								<span style='margin-left:10px;'>닉네임</span>
							</th>
							<td>
								<input type='text' style='margin-left:10px; text-align:center;' 
									name='nickname' id='nickname' placeholder='특수문자를 포함할 수 없습니다.'/>
								<button type='button' class='btn btn-sm' id='nickCheckBtn'
									style='height:25px; text-align:center; font-size:10px;
										background-color:#323232; color:white;'>중복확인</button>
							</td>
						</tr>
						<tr>
							<th style='background-color:#d2d2d2;'>
								<span style='margin-left:10px; margin-top:10px;'>프로필 사진</span>
							</th>
							<td>
								<p style='float:left; margin-top:10px; margin-left:10px; text-align:center;
									font-size:12px; width:120px; height:130px;
									border:0.1px solid black;'><br><br>파일을 <br>첨부하세요.</p>
								<span style='font-size:12px; margin-left:20px; float:left; margin-top:20px;'>
									프로필 사진을 추가하지 않아도 가입이 가능합니다.</span><br><br><br>
								<button type='button' class='btn btn-sm' style='height:25px; text-align:center;
									float:left; margin-top:15px; margin-left:20px; font-size:10px;
									background-color:#323232; color:white;'>파일첨부</button>
								<span style='font-size:12px; float:left; margin-top:20px; margin-left:10px;'>
									.jpg/.png/.bmp 형식의 파일을 업로드하세요.</span>
							</td>
						</tr>
					</tbody>				
				</table>
			</form>
		</div>
	</div>
	
	<div class='row' style='margin-top:780px;'>
		<form>
			<div class='col' id='joinBtn' style='margin-left:320px; margin-bottom:50px;'></div>
		</form>
	</div>
	
	<%@ include file='./../include/footer.jsp'%>	
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

<div id='joinConfirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p style='margin-top:20px;'>가입이 완료되었습니다.</p><br>
				<button type='button' class='btn' data-dismiss='modal'
					id='joinCompleteBtn' style='background-color:#186322; color:white;'>확인</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>