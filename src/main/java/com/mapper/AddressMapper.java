package com.mapper;

import com.entity.Address;

public interface AddressMapper {
    int deleteByPrimaryKey(Integer a_ID);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Integer a_ID);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);
}