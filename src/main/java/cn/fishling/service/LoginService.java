package cn.fishling.service;

import java.util.List;
import java.util.Map;

public interface LoginService {
	//查询所有用户
	List<Map<String,Object>> findUserList();
}
