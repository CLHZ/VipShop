package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.entity.SubType;
import com.entity.Types;

@Mapper
public interface TypesMapper {
    int deleteByPrimaryKey(Integer t_ID);

    int insert(Types record);

    int insertSelective(Types record);

    Types selectByPrimaryKey(Integer t_ID);

    int updateByPrimaryKeySelective(Types record);

    int updateByPrimaryKey(Types record);
    
    @Select("select t_ID, t_Name, t_parentID, t_Description from types")
    List<Types> getCateItem();
    
    //栏目分类
    List<Types> getTypesByID();
    
    //根据分类id查找商品
    @Select("SELECT p.t_Name,p.t_ID,g.g_Name,g.g_Status,g.g_Price,g.g_Discount FROM `types` AS p INNER JOIN goods AS g ON g.t_ID = p.t_ID WHERE p.t_parentID = #{t_ID}")
    List<SubType> getShop1(@Param("t_ID") Integer t_ID);
    
    List<Types> getShop(@Param("id") Integer id);
}