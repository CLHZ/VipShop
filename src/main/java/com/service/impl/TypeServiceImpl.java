package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.SubType;
import com.entity.Types;
import com.mapper.TypesMapper;
import com.service.TypesService;

@Service("typesService")
public class TypeServiceImpl implements TypesService {

	@Autowired
	private TypesMapper typesMapper;
	
	@Override
	public List<Types> getTypesByID() {
		
		return typesMapper.getTypesByID();
	}
	@Override
	public List<SubType> getShop(Integer id) {
		return typesMapper.getShop(id);
	}

}
