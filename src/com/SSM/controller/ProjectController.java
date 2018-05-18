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
	//����serviece���󣬽���ע��
	@Autowired
	ProjectService projectService;
	
	//���������û�����
	@RequestMapping("queryAllProjects")
	public String queryAllProjects(Model model){
		//����serviec��ļ�������
		List<Project>allProjects= projectService.queryAllProjects();
		
		//�Ѽ������������ŵ�model�У�������ҳ���������
		model.addAttribute("Projects", allProjects);
		System.out.println("size:"+allProjects.size());
		//�����߼���ͼ��
		return "ProjectList";
		//return "sucess";		
	}
	
	//��ת��bug
	@RequestMapping("bug")
	public String bug(Project project){
		System.out.println("bug-001");
		return "Bug";
	}
	//����û�
	
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
		//�ѽ������ŵ�model����ҳ�����
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
