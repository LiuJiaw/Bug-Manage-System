package com.SSM.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SSM.pojo.Pro_bugs;
import com.SSM.service.ProjectService;

@Controller
@RequestMapping("/pro_bugs")
public class BugController {
	@Autowired
	ProjectService projectService;
	@RequestMapping("queryAllPro_bugs1")
	public String queryAllPro_bugs(Model model){
		//调用serviec层的检索方法
		List<Pro_bugs>allPro_bugs= projectService.queryAllPro_bugs1();
		
		//把检索结果集，存放到model中，可以由页面进行引用
		System.out.println("bugsize:"+allPro_bugs.size());
		model.addAttribute("Pro_bugs", allPro_bugs);
		//返回逻辑视图名
		return "Bug";
		//return "sucess";		
	}

	//Bug检索
	@RequestMapping("queryAllPro_bugs")
	public String queryAllPro_bugs(Model model,int id){
		//调用serviec层的检索方法
		List<Pro_bugs>allPro_bugs= projectService.queryAllPro_bugs(id);
		
		//把检索结果集，存放到model中，可以由页面进行引用
		System.out.println("bugsize:"+allPro_bugs.size());
		model.addAttribute("Pro_bugs", allPro_bugs);
		//返回逻辑视图名
		return "Bug";
		//return "sucess";		
	}
}
