package kimseongmin.camping.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSendException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kimseongmin.camping.domain.User;
import kimseongmin.camping.service.MailService;
import kimseongmin.camping.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired private UserService userService;
	@Autowired private MailService mailService;
	
	@GetMapping("/login")
	public String login(String userId, @CookieValue(required=false) Cookie loginCookie) {
		if(loginCookie != null) userId = loginCookie.getValue();
		return "user/login";
	}
	
	@PostMapping("/login")
	public User loginCheck(@Valid @RequestParam("userId") String userId,
			@RequestParam("userPw") String userPw,
			Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = userService.loginUser(userId, userPw);
		
		if(user.getUserId().equals("admin")) {
			session.setAttribute("admin", user.getUserId());
		} else {
			session.setAttribute("userId", user.getUserId());
			session.setAttribute("userNumber", user.getUserNumber());
		}
		
		return user;
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("/join")
	public String join() {
		return "user/join";
	}
	
	@GetMapping("/idChk") @ResponseBody
	public String idChk(@RequestParam("userId") String userId) {
		String usedId = userService.idChk(userId);
		return usedId;
	}
	
	@GetMapping("/nickChk") @ResponseBody
	public String nickChk(@RequestParam("nickname") String nickname) {
		String usedNick = userService.nickChk(nickname);
		return usedNick;
	}
	
	@GetMapping("/sendCode") @ResponseBody
	public String sendCode(String userId) {
		return mailService.send(userId);
	}
	
	@ExceptionHandler(MailSendException.class) @ResponseBody
	public String handle() {
		return "인증번호 전송에 실패했습니다. 아이디를 확인해 주세요.";
	}
	
	@PostMapping("/join") @ResponseBody
	public String join(@Valid @RequestBody User user, Errors err) {
		String isGood = "";
		if(!err.hasErrors()) isGood = Integer.toString(userService.addUser(user));
		
		return isGood;
	}
	
	@GetMapping("/findId")
	public String findId() {
		return "user/findId";
	}
	
	@GetMapping("/findPw1")
	public String findPw1() {
		return "user/findPw1";
	}
	
	@GetMapping("/findPw2")
	public String findPw2() {
		return "user/findPw2";
	}
	
	@GetMapping("/modify1")
	public String modify1() {
		return "user/modify1";
	}
	
	@GetMapping("/modify2")
	public String modify2() {
		return "user/modify2";
	}
	
	@GetMapping("/delete")
	public String delete() {
		return "user/delete";
	}
	
	@GetMapping("/pwChk") @ResponseBody
	public User pwChk(@RequestParam("userId") String userId, @RequestParam("userPw") String userPw) {
		User user = userService.loginUser(userId, userPw);
		return user;
	}
	
	@DeleteMapping("/deleteUser{userNumber}") @ResponseBody
	public int deleteUser(@PathVariable int userNumber) {
		return userService.delUser(userNumber);
	}
}
