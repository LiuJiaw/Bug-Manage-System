package com.SSM.mapper;

import java.util.List;

import com.SSM.pojo.User;

public interface UserMapper {
	//检索全部用户
	List<User>queryAllUsers();

}
