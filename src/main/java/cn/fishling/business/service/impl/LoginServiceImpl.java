package cn.fishling.business.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.fishling.business.dao.LoginMapper;
import cn.fishling.business.service.LoginService;
import tools.Tools;

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

	public int userRegister(Map<String, String> map) {
		String password=map.get("password");
		//获取加密后的密码
		String jm_psd=Tools.md5(password);
		String userId=Tools.getRdUsrid();
		map.put("password", jm_psd);
		map.put("realname", map.get("username"));
		map.put("valid_sta", "A");
		map.put("user_id", userId);
		map.put("create_user", userId);
		return loginMapper.userRegister(map);
	}

}
