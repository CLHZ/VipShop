package com.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.entity.E;
import com.entity.Orders;

@Mapper
public interface OrdersMapper {
    int deleteByPrimaryKey(String o_ID);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(String o_ID);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);
    
    @Select("SELECT o.o_id,od.o_status,u.u_Name,a.a_address,g.g_name,o.d_number,o.d_price,od.o_Date,o.d_State FROM ordersdetails o INNER JOIN orders od ON o.o_id = od.o_id INNER JOIN users u ON od.o_id = u.u_id INNER JOIN goods g ON o.o_id=g.g_id INNER JOIN address a ON u.u_id=a.u_id WHERE od.o_Date BETWEEN #{o_Date1} AND #{o_Date2}")
    List<E> getOrdersByDate(@Param("o_Date1") String o_Date1,@Param("o_Date2") String o_Date2);
}