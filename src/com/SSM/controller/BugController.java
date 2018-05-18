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
		//����serviec��ļ�������
		List<Pro_bugs>allPro_bugs= projectService.queryAllPro_bugs1();
		
		//�Ѽ������������ŵ�model�У�������ҳ���������
		System.out.println("bugsize:"+allPro_bugs.size());
		model.addAttribute("Pro_bugs", allPro_bugs);
		//�����߼���ͼ��
		return "Bug";
		//return "sucess";		
	}

	//Bug����
	@RequestMapping("queryAllPro_bugs")
	public String queryAllPro_bugs(Model model,int id){
		//����serviec��ļ�������
		List<Pro_bugs>allPro_bugs= projectService.queryAllPro_bugs(id);
		
		//�Ѽ������������ŵ�model�У�������ҳ���������
		System.out.println("bugsize:"+allPro_bugs.size());
		model.addAttribute("Pro_bugs", allPro_bugs);
		//�����߼���ͼ��
		return "Bug";
		//return "sucess";		
	}
}
