package com.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.E;
import com.entity.Orders;

public interface OrdersService {

	List<E> getOrdersByDate(String o_Date1,String o_Date2);
}
