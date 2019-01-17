package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.entity.E;
import com.entity.Ordersdetails;
@Mapper
public interface OrdersdetailsMapper {
    int deleteByPrimaryKey(Integer d_ID);

    int insert(Ordersdetails record);

    int insertSelective(Ordersdetails record);

    Ordersdetails selectByPrimaryKey(Integer d_ID);

    int updateByPrimaryKeySelective(Ordersdetails record);

    int updateByPrimaryKey(Ordersdetails record);
    
    @Select("SELECT o.o_id,od.o_status,u.u_Name,a.a_address,g.g_name,o.d_number,o.d_price,od.o_Date,o.d_State FROM ordersdetails o INNER JOIN orders od ON o.o_id = od.o_id INNER JOIN users u ON od.o_id = u.u_id INNER JOIN goods g ON o.o_id=g.g_id INNER JOIN address a ON u.u_id=a.u_id")
    List<E> getOrdersdetails();
    
    @Select("UPDATE ordersdetails SET o_Status = #{o_Status} WHERE o_ID = #{o_ID}")
    int getUpdateOrdersdetails(@Param("o_Status") String o_Status,@Param("o_ID") Integer o_ID);
    
    @Select("SELECT o.o_id,od.o_status,u.u_Name,a.a_address,g.g_name,o.d_number,o.d_price,od.o_Date FROM ordersdetails o INNER JOIN orders od ON o.o_id = od.o_id INNER JOIN users u ON od.o_id = u.u_id INNER JOIN goods g ON o.o_id=g.g_id INNER JOIN address a ON u.u_id=a.u_id LIMIT startIndex,pageSize")
    List<Ordersdetails> getOrdersdetailsfy(@Param("startIndex") Integer startIndex, @Param("pageSize") Integer pageSize);
    
    @Select("SELECT COUNT(1) FROM ordersdetails")
    int getOrdersdetailsCont();
    
    @Select("SELECT o.o_id,od.o_status,u.u_Name,a.a_address,g.g_name,o.d_number,o.d_price,od.o_Date,o.d_State FROM ordersdetails o INNER JOIN orders od ON o.o_id = od.o_id INNER JOIN users u ON od.o_id = u.u_id INNER JOIN goods g ON o.o_id=g.g_id INNER JOIN address a ON u.u_id=a.u_id WHERE o.d_State = #{d_State}")
    List<E> getOrdersdetailsStatus(@Param("d_State") String d_State);
}