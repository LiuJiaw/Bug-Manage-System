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
		System.out.println("size:"+allProjects.size());
		//返回逻辑视图名
		return "ProjectList";
		//return "sucess";		
	}
	
	//跳转到bug
	@RequestMapping("bug")
	public String bug(Project project){
		System.out.println("bug-001");
		return "Bug";
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
	
	/**
	@RequestMapping("queryUserByItems")
	public String queryUserByItems(Project project,Model model){
		List<Project>projects = projectService.queryProjectByItems(project);
		//把结果集存放到model，由页面调用
		model.addAttribute("Projects", projects);
		return "queryProject";
	}
	
	*/
	@RequestMapping("deletProject")
	public String deletUser(Project project){
		System.out.println("del_pro_id:" + project.getPro_id());
		projectService.deletProject(project);
		return "sucess";
	}
	
}
