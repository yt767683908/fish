package cn.fishling.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.fishling.dao.LoginMapper;
import cn.fishling.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginMapper loginMapper;

	public List<Map<String, Object>> findUserList() {
		return loginMapper.findUserList();
	}

}
