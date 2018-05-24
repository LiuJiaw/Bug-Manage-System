package com.SSM.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SSM.pojo.Pro_bugs;
import com.SSM.pojo.Project;
import com.SSM.service.ProjectService;


@Controller
@RequestMapping("/project")
public class ProjectController {
	//创建serviece对象，进行注入
	@Autowired
	ProjectService projectService;
	
	//检索所有用户对象
	@RequestMapping("queryAllProjects")
	public String queryAllProjects(Model model){
		//调用serviec层的检索方法
		List<Project>allProjects= projectService.queryAllProjects();
		
		//把检索结果集，存放到model中，可以由页面进行引用
		model.addAttribute("Projects", allProjects);
		//返回逻辑视图名
		return "ProjectList";
		//return "sucess";		
	}
	
	//跳转到bug
	@RequestMapping("bug")
	public String bug(Project project){
		return "BugList";
	}
	//添加用户
	@RequestMapping("addProject")
	public String addProject(Project project){
		projectService.addProject(project);
		return "sucess";
	}
	@RequestMapping("addBug")
	public String addBug(Pro_bugs proBugs){
		projectService.addBug(proBugs);
		return "sucess";
	}
	@RequestMapping("deletProject")
	public String deletProject(Project project){
		projectService.deletProject(project);
		return "sucess";
	}
	
}
