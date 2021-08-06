package kimseongmin.camping.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimseongmin.camping.dao.map.LogoMap;

@Repository
public class LogoDaoImpl implements LogoDao {
	@Autowired private LogoMap logoMap;
	
	@Override
	public String selectLogo() {
		return logoMap.selectLogo();
	}
	
	@Override
	public int updateLogo(String logoImage) {
		return logoMap.updateLogo(logoImage);
	}
}

