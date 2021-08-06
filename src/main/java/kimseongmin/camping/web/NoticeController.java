package kimseongmin.camping.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	@GetMapping("/listPosts")
	public String listPosts() {
		return "notice/listPosts";
	}
	
	@GetMapping("/readPost")
	public String readPost() {
		return "notice/readPost";
	}
}
