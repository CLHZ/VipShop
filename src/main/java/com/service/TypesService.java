package com.service;

import java.util.List;

import com.entity.SubType;
import com.entity.Types;

public interface TypesService {

	List<Types> getTypesByID();
	
	List<SubType> getShop(Integer id);
}
