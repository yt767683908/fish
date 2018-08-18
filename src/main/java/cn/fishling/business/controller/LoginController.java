package cn.fishling.business.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.fishling.business.service.LoginService;

@Controller
@RequestMapping(value = "/api/user")
public class LoginController {

	@Resource
	private LoginService loginService;

	@ResponseBody
	@RequestMapping("/showPerson")
	public String showPersons(@RequestParam Map<String, String> map) {
		List<Map<String, Object>> resultMap = loginService.findUserList();
		return JSON.toJSONString(resultMap);
	}

	@ResponseBody
	@RequestMapping("/userLogin")
	private Map<String, Object> getUsers(@RequestParam Map<String, String> map, HttpServletRequest request) {
		Map<String, Object> usrMap = loginService.userLogin(map);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if (usrMap != null) {
			resultMap.put("status", 0);
			resultMap.put("msg", "登陆成功！");
			request.getSession().setAttribute("userId", usrMap.get("id"));
		} else {
			resultMap.put("status", 1);
			resultMap.put("msg", "登陆失败，请检查用户名和密码！");
		}
		return resultMap;
	}
}
