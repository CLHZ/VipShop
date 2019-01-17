package com.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.E;
import com.entity.Orders;
import com.mapper.OrdersMapper;
import com.service.OrdersService;

@Service("ordersService")
public class OrdersServiceImpl implements OrdersService {

	@Autowired
	private OrdersMapper ordersMapper;
	
	@Override
	public List<E> getOrdersByDate(String o_Date1,String o_Date2) {
		// TODO Auto-generated method stub
		return ordersMapper.getOrdersByDate(o_Date1,o_Date2);
	}

}
