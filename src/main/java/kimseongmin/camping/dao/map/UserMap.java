package kimseongmin.camping.dao.map;

import kimseongmin.camping.domain.User;

public interface UserMap {
	User loginUser(String userId, String userPw);
	String selectUserId(String userId);
	String selectNickname(String nickname);
	int insertUser(User user);
	int deleteUser(int userNumber);
}
