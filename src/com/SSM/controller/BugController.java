package com.SSM.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SSM.pojo.Pro_bugs;
import com.SSM.pojo.User;
import com.SSM.service.ProjectService;

@Controller
@RequestMapping("/pro_bugs")
public class BugController {
	@Autowired
	ProjectService projectService;
	@RequestMapping("queryAllPro_bugs1")
	public String queryAllPro_bugs(Model model){
		//����serviec��ļ�������
		List<Pro_bugs>allPro_bugs= projectService.queryAllPro_bugs1();
		
		//�Ѽ������������ŵ�model�У�������ҳ���������
		model.addAttribute("Pro_bugs", allPro_bugs);
		//�����߼���ͼ��
		return "Bug";
		//return "sucess";		
	}

	//Bug����
	@RequestMapping("queryAllPro_bugs")
	public String queryAllPro_bugs(Model model,String name){
		//����serviec��ļ�������
		List<Pro_bugs>allPro_bugs= projectService.queryAllPro_bugs(name);
		
		//�Ѽ������������ŵ�model�У�������ҳ���������
		model.addAttribute("Pro_bugs", allPro_bugs);
		//�����߼���ͼ��
		return "Bug";		
	}
	
	//Bug��¼ɾ��
	@RequestMapping("deletPro_bugs")
	public String deletPro_bugs(Pro_bugs pro_bugs){
		projectService.deletPro_bugs(pro_bugs);
		return "sucess";
	}
}
