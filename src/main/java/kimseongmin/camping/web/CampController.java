package kimseongmin.camping.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/camp")
public class CampController {
	@GetMapping("/navigate")
	public String navigate() {
		return "camp/navigate";
	}
	
	@GetMapping("/viewRooms")
	public String viewRooms() {
		return "camp/viewRooms";
	}
	
	@GetMapping("/viewComforts")
	public String viewComforts() {
		return "camp/viewComforts";
	}
	
	@GetMapping("/viewProducts")
	public String viewProducts() {
		return "camp/viewProducts";
	}
	
	@GetMapping("/guide")
	public String guide() {
		return "camp/guide";
	}
	
	@GetMapping("/viewSights")
	public String viewSights() {
		return "camp/viewSights";
	}
}
