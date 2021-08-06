package kimseongmin.camping.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("admin.notice")
@RequestMapping("/admin/notice")
public class NoticeController {
	@GetMapping("/listPosts")
	public String listPosts() {
		return "admin/notice/listPosts";
	}
	
	@GetMapping("/readPost")
	public String readPost() {
		return "admin/notice/readPost";
	}
	
	@GetMapping("/writePost")
	public String writePost() {
		return "admin/notice/writePost";
	}
}
