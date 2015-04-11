package com.smartsky.manual.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.smartsky.common.CommonLogger;
import com.smartsky.common.Constant;
import com.smartsky.common.exception.CustomGenericException;
import com.smartsky.manual.model.json.JsonResult;

/**
 * 全局异常控制器
 * @author zhoulvming
 *
 */
@ControllerAdvice
public class GlobalExceptionController extends CommonLogger {
	
	/**
	 * 用户自主抛出的业务异常
	 * @param ex
	 * @return
	 */
    @ExceptionHandler(CustomGenericException.class)
    public ModelAndView handleCustomException(CustomGenericException ex) {
    	// 记录日志
    	log.error(ex.getMessage(), ex);
    	
        ModelAndView model = new ModelAndView("error/error");
        model.addObject("errCode", ex.getErrCode());
        model.addObject("errMsg", ex.getErrMsg());
        return model;
    }
    
    /**
     * 非自主抛出异常
     * 
     * @param request
     * @param response
     * @param ex
     * @return
     * @throws Exception
     */
    @ExceptionHandler(Exception.class)
    public ModelAndView handleAllException(HttpServletRequest request, HttpServletResponse response, Exception ex) throws Exception {
    	
    	//异常信息
    	String errmsg = ex.getMessage();
		if (errmsg == null) {
			StackTraceElement item =  ex.getStackTrace()[0];
			errmsg = item.toString();
		}
    	
    	// 记录日志
    	log.error(errmsg, ex);
    	
    	if (!(request.getHeader("accept").indexOf("application/json") > -1 || (request  
			.getHeader("X-Requested-With")!= null && request  
			.getHeader("X-Requested-With").indexOf("XMLHttpRequest") > -1))) {
    		
    		//普通请求
    		ModelAndView model = new ModelAndView("error/error");
            model.addObject("errMsg", errmsg);
            return model;
    		
    	} else {
    		
    		//ajax请求
    		JsonResult result = new JsonResult();
    		result.setCode(Constant.ERROR_CODE_SYSTEM);
    		result.put("errmsg", errmsg);
            try {
            	response.setCharacterEncoding("utf-8");
                response.getWriter().write(JSON.toJSONString(result));
                throw ex;
            } catch (IOException e) {  
                e.printStackTrace();  
            }
            
            return null;
           
    	}
        
    }
}