package cn.fishling.dao;

import java.util.List;
import java.util.Map;

public interface LoginMapper {
	List<Map<String,Object>> findUserList();
}
