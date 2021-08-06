package kimseongmin.camping.dao;

import kimseongmin.camping.domain.User;

public interface UserDao {
	User loginUser(String userId, String userPw);
	String selectUserId(String userId);
	String selectNickname(String nickname);
	int insertUser(User user);
	int deleteUser(int userNumber);
}
