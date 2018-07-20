package cn.fishling.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/loginController")
public class LoginController {

	@ResponseBody
	@RequestMapping("/showPerson")
	public String showPersons(@RequestParam Map<String, String> map) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("1", "分分分");
		resultMap.put("2", "2=帮我你无法你看我吉尔菲娜客服");
		return JSON.toJSONString(resultMap);
	}
}
