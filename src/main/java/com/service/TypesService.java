package com.service;

import java.util.List;

import com.entity.SubType;
import java.util.List;
import com.entity.Types;

public interface TypesService {

	List<Types> getCateItem();
	
	List<Types> getTypesByID();
	
	List<SubType> getShop1(Integer id);
	
	List<Types> getShop(Integer id);
}
