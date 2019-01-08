package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Types;
import com.mapper.TypesMapper;
import com.service.TypesService;

@Service("typesService")
public class TypeServiceImpl implements TypesService {

	@Autowired
	private TypesMapper typesMapper;

	@Override
	public List<Types> getCateItem() {
		return typesMapper.getCateItem();
	}
	
	@Override
	public List<Types> getTypesByID() {
		
		return typesMapper.getTypesByID();
	}
	@Override
	public List<Types> getShop(Integer id) {
		// TODO Auto-generated method stub
		return typesMapper.getShop(id);
	}

}
