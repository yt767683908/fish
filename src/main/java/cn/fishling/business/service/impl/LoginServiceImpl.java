package cn.fishling.business.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import cn.fishling.business.dao.LoginMapper;
import cn.fishling.business.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	private LoginMapper loginMapper;

	public List<Map<String, Object>> findUserList() {
		return loginMapper.findUserList();
	}

}
