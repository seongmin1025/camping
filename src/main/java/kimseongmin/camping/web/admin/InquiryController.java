package kimseongmin.camping.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("admin.inquiry")
@RequestMapping("/admin/inquiry")
public class InquiryController {
	@GetMapping("/listPosts")
	public String listPosts() {
		return "admin/inquiry/listPosts";
	}
	
	@GetMapping("/readPost")
	public String readPost() {
		return "admin/inquiry/readPost";
	}
}
