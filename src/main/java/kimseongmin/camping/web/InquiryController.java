package kimseongmin.camping.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/inquiry")
public class InquiryController {
	@GetMapping("/listPosts")
	public String listPosts() {
		return "inquiry/listPosts";
	}
	
	@GetMapping("/readPost")
	public String readPost() {
		return "inquiry/readPost";
	}
	
	@GetMapping("/writePost")
	public String writePost() {
		return "inquiry/writePost";
	}
}
