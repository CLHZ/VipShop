package com.mapper;

import com.entity.Users;

public interface UsersMapper {
    int deleteByPrimaryKey(Integer u_ID);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer u_ID);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
}