package com.SSM.mapper;

import java.util.List;

import com.SSM.pojo.Pro_bugs;
import com.SSM.pojo.Project;

public interface ProjectMapper {
	//检索全部项目
	List<Project>queryAllProjects();
	
	List<Pro_bugs> queryAllPro_bugs(String name);
	List<Pro_bugs> queryAllPro_bugs1();
	//跳转bug
	void bug(Project project);
	//删除Bug
	void deletPro_bugs(Pro_bugs pro_bugs);
	
	//添加项目
	void addProject(Project project);
	void addBug(Pro_bugs proBugs);
	//删除项目
	void deletProject(Project project);
	void deletProjectBug(Project project);

}

