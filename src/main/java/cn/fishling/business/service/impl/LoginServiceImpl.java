package cn.fishling.business.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.fishling.business.dao.LoginMapper;
import cn.fishling.business.service.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	@Resource
	private LoginMapper loginMapper;

	public List<Map<String, Object>> findUserList() {
		return loginMapper.findUserList();
	}

	public Map<String, Object> userLogin(Map<String, String> map) {
		return loginMapper.userLogin(map);
	}

}
