package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.E;
import com.entity.Ordersdetails;

public interface OrdersdetailsService {

	List<E> getOrdersdetails();
	
	int getUpdateOrdersdetails(String o_Status,Integer o_ID);
	
	List<Ordersdetails> getOrdersdetailsfy(Integer currentPageNo,Integer pageSize);
	
	int getOrdersdetailsCont();
	
	List<E> getOrdersdetailsStatus(String d_State);
}
