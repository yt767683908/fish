package cn.fishling.business.controller;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;

import cn.fishling.business.dto.UserInfo;
import cn.fishling.business.service.LoginService;

@Controller
@RequestMapping(value = "/api/user")
public class LoginController {

	@Resource
	private LoginService loginService;

	@ResponseBody
	@RequestMapping("/showPerson")
	public String showPersons(@RequestParam Map<String, String> map) {
		//var str="";
		Map<String, Object> result = new HashMap<String, Object>();
		List<Map<String, Object>> resultMap = loginService.findUserList();
		result.put("data", resultMap);
		result.put("count", "100");
		result.put("code", "0");
		result.put("msg", "");
		return JSON.toJSONString(result);
	}

	@ResponseBody
	@RequestMapping("/userLogin")
	private Map<String, Object> getUsers(@RequestParam Map<String, String> map, HttpServletRequest request) {
		UserInfo userInfo = loginService.userLogin(map);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if (userInfo != null) {
			resultMap.put("status", 0);
			resultMap.put("msg", "登陆成功！");
			resultMap.put("userInfo", userInfo);
			request.getSession().setAttribute("userInfo", userInfo);
		} else {
			resultMap.put("status", 1);
			resultMap.put("msg", "登陆失败，请检查用户名和密码！");
		}
		return resultMap;
	}

	/**
	 * 用户注册
	 * 
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/userRegister")
	private ModelAndView userRegister(@RequestParam Map<String, String> map, HttpServletResponse response) {
		int result = loginService.userRegister(map);
//		Map<String, Object> resultMap = new HashMap<String, Object>();
//		resultMap.put("result", result);
		return new ModelAndView("redirect:/login.html");
	}

	// 退出登陆
	@RequestMapping("/quit")
	private ModelAndView login(HttpServletRequest request) {
		Enumeration em = request.getSession().getAttributeNames();
		while (em.hasMoreElements()) {
			request.getSession().removeAttribute(em.nextElement().toString());
		}
		return new ModelAndView("redirect:/login.html");
	}
}
