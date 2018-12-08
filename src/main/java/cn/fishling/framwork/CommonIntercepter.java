package cn.fishling.framwork;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.fishling.business.dto.UserInfo;

public class CommonIntercepter implements HandlerInterceptor {

	// 执行Handler完成执行此方法
	// 应用场景：统一异常处理，统一日志处理
	// 执行完毕，返回前拦截
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object obj, Exception exp)
			throws Exception {
	}

	// 在拦截点执行前拦截，如果返回true则不执行拦截点后的操作（拦截成功）
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
//		UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
//		if (userInfo == null && request.getRequestURI().indexOf("api") == -1) {
//			response.sendRedirect("/login.html");
//			return false;
//		}
		return true;
	}

	// 在处理过程中，执行拦截
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}

}
