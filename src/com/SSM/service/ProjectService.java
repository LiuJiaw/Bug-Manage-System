package com.SSM.service;

import java.util.List;

import com.SSM.pojo.Pro_bugs;
import com.SSM.pojo.Project;

public interface ProjectService {
	//����ȫ����Ŀ
	List<Project>queryAllProjects();
	List<Pro_bugs>queryAllPro_bugs1();
	List<Pro_bugs>queryAllPro_bugs(String name);
	//��ת��bug

	void bug(Project project);
	void addProject(Project project);
	void addBug(Pro_bugs proBugs);
	void deletProject(Project project);
	void deletPro_bugs(Pro_bugs pro_bugs);
/**		List<Project>queryProjectByItems(Project project);
	*/

}
