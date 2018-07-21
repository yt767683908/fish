package cn.fishling.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.fishling.service.LoginService;

@Controller
@RequestMapping("/loginController")
public class LoginController {
	@Autowired()
	private LoginService loginService;

	@ResponseBody
	@RequestMapping("/showPerson")
	public String showPersons(@RequestParam Map<String, String> map) {
		List<Map<String, Object>> resultMap = loginService.findUserList();;
//		resultMap.put("1", "分分分");
//		resultMap.put("2", "2=帮我你无法你看我吉尔菲娜客服");
		return JSON.toJSONString(resultMap);
	}
}
