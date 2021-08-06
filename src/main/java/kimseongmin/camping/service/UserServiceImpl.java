package kimseongmin.camping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kimseongmin.camping.dao.UserDao;
import kimseongmin.camping.domain.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired private UserDao userDao;
	
	@Override
	public User loginUser(String userId, String userPw) {
		return userDao.loginUser(userId, userPw);
	}
	
	@Override
	public String idChk(String userId) {
		return userDao.selectUserId(userId);
	}
	
	@Override
	public String nickChk(String nickname) {
		return userDao.selectNickname(nickname);
	}
	
	@Override
	public int addUser(User user) {
		return userDao.insertUser(user);
	}
	
	@Override
	public int delUser(int userNumber) {
		return userDao.deleteUser(userNumber);
	}
}
