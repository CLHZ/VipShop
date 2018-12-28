package com.mapper;

import com.entity.Goods;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer g_ID);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer g_ID);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
}