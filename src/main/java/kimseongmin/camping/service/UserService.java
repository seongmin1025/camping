package kimseongmin.camping.service;

import kimseongmin.camping.domain.User;

public interface UserService {
	User loginUser(String userId, String userPw);
	String idChk(String userId);
	String nickChk(String nickname);
	int addUser(User user);
	int delUser(int userNumber);
}
