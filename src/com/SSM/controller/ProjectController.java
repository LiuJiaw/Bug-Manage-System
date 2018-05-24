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
		//�����߼���ͼ��
		return "ProjectList";
		//return "sucess";		
	}
	
	//��ת��bug
	@RequestMapping("bug")
	public String bug(Project project){
		return "BugList";
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
	@RequestMapping("deletProject")
	public String deletProject(Project project){
		projectService.deletProject(project);
		return "sucess";
	}
	
}
