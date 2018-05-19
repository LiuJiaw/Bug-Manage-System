package com.SSM.service.imp;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.SSM.mapper.ProjectMapper;
import com.SSM.pojo.Pro_bugs;
import com.SSM.pojo.Project;
import com.SSM.service.ProjectService;


public class ProjectServiceImp implements ProjectService{
	@Autowired
	private ProjectMapper projectMapper;

	public List<Project> queryAllProjects() {
		// TODO Auto-generated method stub
		return projectMapper.queryAllProjects();
	}
	public List<Pro_bugs> queryAllPro_bugs(String name){
		return projectMapper.queryAllPro_bugs(name);
	}
	public List<Pro_bugs> queryAllPro_bugs1(){
		return projectMapper.queryAllPro_bugs1();
	}
	public void bug(Project project){
		projectMapper.bug(project);
	}

	public void addProject(Project project) {
		// TODO Auto-generated method stub
		projectMapper.addProject(project);
	}

	public void deletProject(Project project) {
		// TODO Auto-generated method stub
		projectMapper.deletProject(project);
		projectMapper.deletProjectBug(project);
	}

	public void addBug(Pro_bugs proBugs){
		projectMapper.addBug(proBugs);
	}
	
	public void deletPro_bugs(Pro_bugs pro_bugs){
		projectMapper.deletPro_bugs(pro_bugs);
	}
}
