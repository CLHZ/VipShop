package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.entity.Brand;
import com.entity.Goods;

@Mapper
public interface GoodsMapper {
    int deleteByPrimaryKey(Integer g_ID);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer g_ID);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
    
    @Select("select d.t_ID,d.g_Image,d.g_ID,d.g_Name,d.g_Price,d.g_Discount,t.t_Name from goods as d,`types` as t where d.t_ID = #{t_ID} and t.t_Name=#{t_Name}")
    List<Goods> getGoodsNameById(@Param("t_ID") Integer t_ID,@Param("t_Name") String t_Name);
    
    @Select("select * from goods where t_ID = #{t_ID} limit #{startIndex},#{pageSize}")
    List<Goods> getGoods(@Param("startIndex") Integer startIndex, @Param("pageSize") Integer pageSize, @Param("t_ID") Integer t_ID);
    
    @Select("select count(1) from goods where t_ID = #{t_ID}")
    int getGoodsCont(@Param("t_ID") Integer t_ID);
    
    List<Goods> getGoodsByName(@Param("g_Name") String name,@Param("g_BID") Integer logid);
    
    /*@Select("select g.g_ID,g.g_Name,g.g_Discount,g.g_Image,g.g_Price,g.g_Number,b.b_Name,g.g_BID,g.g_Description from goods as g,brand as b where  b.b_ID=#{b_Id} and g.g_ID=#{g_ID}")*/
    List<Brand> getGoodsByGid(@Param("g_ID") Integer g_ID,@Param("b_Id") Integer b_Id);
}