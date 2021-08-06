package kimseongmin.camping.web.admin;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kimseongmin.camping.service.LogoService;

@Controller
@RequestMapping("/admin/logo")
public class LogoController {
	@Autowired private LogoService logoService;
	
	@Value("${attachDir}")
	private String attachDir;
	
	@GetMapping @ResponseBody
	public String logo() {
		return logoService.selectLogo();
	}
	
	@PostMapping @ResponseBody
	public boolean attach(MultipartFile logoSelect, HttpServletRequest request) {
		boolean isStored = false;
		String dir = request.getServletContext().getRealPath(attachDir);
		String fileName = logoSelect.getOriginalFilename();
		
		try {
			save(dir + "/" + fileName, logoSelect);
			logoService.updateLogo(fileName);
			
			isStored = true;
		} catch(Exception e) {}
		
		return isStored;
	}
	
	private void save(String fileName, MultipartFile logoSelect) throws Exception {
		logoSelect.transferTo(new File(fileName));
	}
	
	
	
	
}
