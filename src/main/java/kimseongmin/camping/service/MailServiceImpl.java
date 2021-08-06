package kimseongmin.camping.service;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailServiceImpl implements MailService {
	@Autowired private JavaMailSender mailSender;
	
	@Override
	public String send(String userId) {
		MimeMessage message = mailSender.createMimeMessage();
		String[] text = text();
		
		try {
			message.addRecipient(RecipientType.TO, new InternetAddress(userId));
			message.setSubject("더조은 캠핑 인증번호");
			message.setText(text[0], "utf-8", "html");
		} catch(Exception e) {}
		
		mailSender.send(message);
		
		return text[1];
	}
	
	@Override
	public String[] text() {
		String verificationCode = Integer.toString((int) (Math.random() * 900000 + 100000));
		String body = body(verificationCode);
		
		String[] text = {body, verificationCode};
		
		return text;
	}
	
	@Override
	public String body(String verificationCode) {
		String text = ""
				+ "<html lang='ko'>"
				+ "<head>"
				+ "<title>더조은 캠핑 인증번호</title>"
				+ "<meta charset='utf-8'>"
				+ "<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css'>"
				+ "<style>"
				+ "@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Gothic+Coding&family=Nanum+Pen+Script&display=swap');"
				+ "*{font-family:'Nanum Gothic Coding', monospace;}"
				+ ".container{position:absolute; left:8%;}"
				+ "#content{margin-top:30px; width:530px;}"
				+ "#number{width:520px; height:130px;"
				+ "	border-top:1px solid black;"
				+ "	border-bottom:1px solid black;"
				+ "	background:lightgray;}"
				+ "</style>"
				+ "</head>"
				+ "<body>"
				+ "<div class='container'>"
				+ "	<div class='row' id='content'>"
				+ "		<div class='col'>"
				+ "			<strong>&nbsp;|&nbsp;더조은 캠핑 회원가입/비밀번호 찾기 인증번호를 알려드립니다.</strong>"
				+ "			<hr style='width:520px; margin-top:10px;'>"
				+ "			<div class='row'>"
				+ "				<div class='col'>"
				+ "					<p style='font-size: 20; margin-left:20px;'>안녕하세요. 더조은 캠핑을 찾아주셔서 감사합니다.</p>"
				+ "					<p style='font-size: 15; margin-left:20px; margin-bottom:5px;'>인증번호를 다음과 같이 알려드립니다.</p>"
				+ "					<p style='font-size: 15; margin-left:20px; margin-top:5px;'>인증번호 6자리를 진행 중인 화면에 입력해 주세요.</p>"
				+ "					<div id='number' style='margin-top: 30px;'>"
				+ "						<p style='font-size:25px; font-weight:bold; margin-top:45px;'>"
				+ "							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;·인증번호: " + verificationCode + "</p>"
				+ "					</div>"
				+ "				</div>"
				+ "			</div>"
				+ "		</div>"
				+ "	</div>"
				+ "</div>"
				+ "</body>"
				+ "</html>";
		
		return text;
	}
}
