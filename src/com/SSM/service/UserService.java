package com.SSM.service;

import java.util.List;

import com.SSM.pojo.User;

public interface UserService {
	//����ȫ���û�
	List<User>queryAllUsers();
	//����û�
	void addUser(User user);
	
	//�����������û�
	List<User>queryUserByItems(User user);
    //ɾ������
	void deletUser(User user);
}
