package com.SSM.mapper;

import java.util.List;

import com.SSM.pojo.Pro_bugs;
import com.SSM.pojo.Project;

public interface ProjectMapper {
	//����ȫ����Ŀ
	List<Project>queryAllProjects();
	
	List<Pro_bugs> queryAllPro_bugs(int id);
	List<Pro_bugs> queryAllPro_bugs1();
	//��תbug
	void bug(Project project);
	
	//�����Ŀ
	void addProject(Project project);
	void addBug(Pro_bugs proBugs);
	//ɾ����Ŀ
	void deletProject(Project project);
	/**
	 //������������Ŀ
	List<Project> queryProjectByItems(Project project);
	*/

}

