package kimseongmin.camping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kimseongmin.camping.dao.LogoDao;

@Service
public class LogoServiceImpl implements LogoService {
	@Autowired private LogoDao logoDao;
	
	@Override
	public String selectLogo() {
		return logoDao.selectLogo();
	}
	
	@Override
	public int updateLogo(String logoImage) {
		return logoDao.updateLogo(logoImage);
	}
}
