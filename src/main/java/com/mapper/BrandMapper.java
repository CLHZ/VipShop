package com.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.entity.Brand;

@Mapper
public interface BrandMapper {
    int deleteByPrimaryKey(String b_ID);

    int insert(Brand record);

    int insertSelective(Brand record);

    Brand selectByPrimaryKey(String b_ID);

    int updateByPrimaryKeySelective(Brand record);

    int updateByPrimaryKey(Brand record);
}