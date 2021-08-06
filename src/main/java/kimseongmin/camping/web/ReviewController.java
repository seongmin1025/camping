package kimseongmin.camping.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/review")
public class ReviewController {
	@GetMapping("/listPosts")
	public String listPosts() {
		return "review/listPosts";
	}
	
	@GetMapping("/readPost")
	public String readPost() {
		return "review/readPost";
	}
	
	@GetMapping("/writePost")
	public String writePost() {
		return "review/writePost";
	}
}
