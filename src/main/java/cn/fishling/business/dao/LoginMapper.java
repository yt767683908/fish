package cn.fishling.business.dao;

import java.util.List;
import java.util.Map;

import cn.fishling.business.dto.UserInfo;

public interface LoginMapper {
	List<Map<String, Object>> findUserList();

	UserInfo userLogin(Map<String, String> map);

	UserInfo getUser(Map<String, String> map);
	
	int userRegister(Map<String, String> map);
}
