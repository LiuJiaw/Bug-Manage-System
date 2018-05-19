package com.SSM.service;

import java.util.List;

import com.SSM.pojo.Pro_bugs;
import com.SSM.pojo.Project;

public interface ProjectService {
	//检索全部项目
	List<Project>queryAllProjects();
	List<Pro_bugs>queryAllPro_bugs1();
	List<Pro_bugs>queryAllPro_bugs(String name);
	//跳转到bug

	void bug(Project project);
	void addProject(Project project);
	void addBug(Pro_bugs proBugs);
	void deletProject(Project project);
	void deletPro_bugs(Pro_bugs pro_bugs);
/**		List<Project>queryProjectByItems(Project project);
	*/

}
