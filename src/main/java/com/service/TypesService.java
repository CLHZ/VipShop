package com.service;

import java.util.List;
import com.entity.Types;

public interface TypesService {

	List<Types> getCateItem();
	
	List<Types> getTypesByID();
	
	List<Types> getShop(Integer id);
}
