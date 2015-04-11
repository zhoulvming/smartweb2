package com.smartsky.manual.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.smartsky.common.Constant;
import com.smartsky.common.exception.BusinessException;
import com.smartsky.common.exception.CustomGenericException;
import com.smartsky.manual.model.TrainningFolder;
import com.smartsky.manual.model.json.JsonResult;
import com.smartsky.manual.model.json.TrainningTreeData;
import com.smartsky.manual.service.TrainningServiceI;


@Controller
@RequestMapping("/trainning")
public class TrainningController {
	
	/**
	 * TrainningService注入
	 * @Autowired
	 */
	@Autowired
	private TrainningServiceI trainningService;
	
	/**
	 * 页面入口
	 * @param req
	 * @return
	 * @throws SQLException 
	 * @throws BusinessException 
	 */
	@RequestMapping(value="", method=RequestMethod.GET)
	public ModelAndView index( HttpServletRequest req) throws BusinessException {
		//String blog = null;  
        //System.out.println(blog.substring(1));
		//throw new CustomGenericException(1, "this is a business error!"); 
		//throw new RuntimeException("Error!");  
		return new ModelAndView("trainning/index");
	}

	/**
	 * ajax方式获取文档树结构
	 * @param req
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/doctree", method=RequestMethod.GET)
	public void getDocTree(HttpServletRequest req, HttpServletResponse response)  throws Exception {
		
		String pid = req.getParameter("parent");
		if (pid != null && pid.length() > 1) {
			pid = pid.substring(1);
		} else {
			pid = null;
		}
		List<TrainningTreeData> lstData = trainningService.getDocTree(pid);
		
		//以json格式返回数据
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(JSON.toJSONStringWithDateFormat(lstData, "yyyy-MM-dd HH:mm:ss"));
	}
	

	/**
	 * 文件夹保存
	 * @param req
	 * @param response
	 * @param model
	 * @throws IOException
	 */
	@RequestMapping(value="/saveFolder", method=RequestMethod.POST)
	public void saveFolder(HttpServletRequest req, HttpServletResponse response, Model model) throws IOException {

		//request值获取
		String id = req.getParameter("id");
		String pid= req.getParameter("parentId");
		String name = req.getParameter("folderName");
		JsonResult result = new JsonResult();
		
		try {
			
			TrainningFolder folder = null;
			if (id == null || id.length() < 1) {
				folder = trainningService.saveFolder(0, id, pid, name);
			} else {
				folder = trainningService.saveFolder(1, id, pid, name);
			}
			
			result.setCode(Constant.ERROR_CODE_NONE);
			result.put("folder", folder);
			
		} catch(CustomGenericException ex1) {
			result.setCode(ex1.getErrCode());
			result.put("errmsg", ex1.getErrMsg());
		}
		
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		response.getWriter().print(JSON.toJSONString(result));
	}
	

}
