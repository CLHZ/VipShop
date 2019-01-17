package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.E;
import com.entity.Ordersdetails;
import com.mapper.OrdersdetailsMapper;
import com.service.OrdersdetailsService;

@Service("ordersdetailsService")
public class OrdersdetailsServiceImpl implements OrdersdetailsService {

	@Autowired
	private OrdersdetailsMapper ordersdetailsMapper;
	@Override
	public List<E> getOrdersdetails() {
		// TODO Auto-generated method stub
		return ordersdetailsMapper.getOrdersdetails();
	}
	@Override
	public int getUpdateOrdersdetails(String o_Status, Integer o_ID) {
		// TODO Auto-generated method stub
		return ordersdetailsMapper.getUpdateOrdersdetails(o_Status, o_ID);
	}
	@Override
	public List<Ordersdetails> getOrdersdetailsfy(Integer currentPageNo, Integer pageSize) {
		Integer startIndex = (currentPageNo -1)*pageSize;
		return ordersdetailsMapper.getOrdersdetailsfy(startIndex, pageSize);
	}
	@Override
	public int getOrdersdetailsCont() {
		// TODO Auto-generated method stub
		return ordersdetailsMapper.getOrdersdetailsCont();
	}
	@Override
	public List<E> getOrdersdetailsStatus(String d_State) {
		// TODO Auto-generated method stub
		return ordersdetailsMapper.getOrdersdetailsStatus(d_State);
	}
}
