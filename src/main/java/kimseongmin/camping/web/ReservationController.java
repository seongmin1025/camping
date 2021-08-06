package kimseongmin.camping.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	@GetMapping("/reserve01")
	public String reserve01() {
		return "reservation/reserve01";
	}
	
	@GetMapping("/reserve02")
	public String reserve02() {
		return "reservation/reserve02";
	}
	
	@GetMapping("/reserve03")
	public String reserve03() {
		return "reservation/reserve03";
	}
	
	@GetMapping("/reserve04")
	public String reserve04() {
		return "reservation/reserve04";
	}
	
	@GetMapping("/reserve05")
	public String reserve05() {
		return "reservation/reserve05";
	}
	
	@GetMapping("/checkRes")
	public String checkRes() {
		return "reservation/checkRes";
	}
}
