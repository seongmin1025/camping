package kimseongmin.camping.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("admin.user")
@RequestMapping("/admin/user")
public class UserController {
	@GetMapping("/user")
	public String user() {
		return "admin/user/user";
	}
}
