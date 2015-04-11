package com.smartsky.manual.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.smartsky.common.FireAuthority;
import com.smartsky.common.RoleType;

public class FreeMarkerViewInterceptor extends HandlerInterceptorAdapter {
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {

	}

	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object arg2, ModelAndView view)
			throws Exception {
		String contextPath = request.getContextPath();
		if (view != null) {
			request.setAttribute("base", contextPath);
		}
	}

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {

		// 处理Permission Annotation，实现方法级权限控制
		//HandlerMethod method = (HandlerMethod) handler;
		
		HandlerMethod handlerMethod;
		if (handler instanceof HandlerMethod) {
			handlerMethod = (HandlerMethod) handler;
		} else {
			return true;
		}
		
		FireAuthority fireAuthority = handlerMethod.getMethodAnnotation(FireAuthority.class);
		if(null == fireAuthority){
			// 没有声明权限,放行
			return true;
		}
		
		
		
		
		
//		Permission permission = method.getMethodAnnotation(Permission.class);

//		// 如果为空在表示该方法不需要进行权限验证
//		if (permission == null) {
//			return true;
//		}

		// 验证是否具有权限
//		if (!WebUtil.hasPower(request, permission.value())) {
//			response.sendRedirect(request.getContextPath()
//					+ "/business/nopermission.html");
//			return false;
//		}
		return true;

		// 注意此处必须返回true，否则请求将停止
		// return true;
	}
}
