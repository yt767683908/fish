package cn.fishling.business.dao;

import java.util.List;
import java.util.Map;

public interface LoginMapper {
	List<Map<String,Object>> findUserList();
}
