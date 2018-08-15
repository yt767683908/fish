package cn.fishling.framwork;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.filter.OncePerRequestFilter;

/**
 * @author 76768
 *
 */
public class RequestFilter extends OncePerRequestFilter {

	Logger logger = Logger.getLogger(RequestFilter.class);

	@Override
	protected void doFilterInternal(HttpServletRequest arg0, HttpServletResponse arg1, FilterChain arg2)
			throws ServletException, IOException {
		String url = arg0.getServletPath();
		String classPath = this.getClass().getResource("/").getPath();
		String allUrl = arg0.getRequestURL().toString();
		String projName = arg0.getServletContext().getContextPath();
		String resourceName = url.substring(url.lastIndexOf("/") + 1);
		String userId = "";
		arg0.getRequestDispatcher(url).forward(arg0, arg1);
	}

}
