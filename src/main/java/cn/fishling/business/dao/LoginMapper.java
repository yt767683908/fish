package cn.fishling.business.dao;

import java.util.List;
import java.util.Map;

public interface LoginMapper {
	List<Map<String, Object>> findUserList();

	Map<String, Object> userLogin(Map<String, String> map);
}
