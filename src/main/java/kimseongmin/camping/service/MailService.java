package kimseongmin.camping.service;

public interface MailService {
	String send(String userId);
	String[] text();
	String body(String verificationCode);
}
