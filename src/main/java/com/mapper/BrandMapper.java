package com.mapper;


import org.apache.ibatis.annotations.Mapper;

import com.entity.Brand;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.entity.Brand;

@Mapper
public interface BrandMapper {
    int deleteByPrimaryKey(String b_ID);

    int insert(Brand record);

    int insertSelective(Brand record);

    Brand selectByPrimaryKey(String b_ID);

    int updateByPrimaryKeySelective(Brand record);

    int updateByPrimaryKey(Brand record);
    
    @Select("select b_ID,b_Name,b_Picture,g_BID,b_Discount,b_Tile,b_Publish from brand")
    List<Brand> getBrand();
    
   /* @Select("select g.g_ID,g.g_Name,g.g_Discount,g.g_Image,g.g_Price,g.g_Number,b.b_Name,g.g_BID,g.g_Description from goods as g,brand as b where  b.b_ID=#{b_Id} and g.g_ID=#{g_ID}")*/
    List<Brand> getGoodsByGid(@Param("g_ID") Integer g_ID,@Param("b_Id") Integer b_Id);
}