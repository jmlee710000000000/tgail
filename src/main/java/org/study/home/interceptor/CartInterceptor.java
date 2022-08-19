package org.study.home.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.study.home.model.MemberDTO;

public class CartInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
		
		if(dto == null) {
			response.sendRedirect("/");
			return false;
		} else {
			return true;
		}

	}

}
