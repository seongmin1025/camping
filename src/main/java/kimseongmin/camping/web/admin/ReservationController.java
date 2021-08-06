package kimseongmin.camping.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("admin.reservation")
@RequestMapping("/admin/reservation")
public class ReservationController {
	@GetMapping("/reservation")
	public String reservation() {
		return "admin/reservation/reservation";
	}
}
