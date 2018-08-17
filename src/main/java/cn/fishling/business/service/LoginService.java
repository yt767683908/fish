package cn.fishling.business.service;

import java.util.List;
import java.util.Map;

public interface LoginService {
	//查询所有用户
	List<Map<String,Object>> findUserList();
	
	Map<String, Object> userLogin(Map<String, String> map);
}
