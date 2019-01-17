package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Brand;

public interface BrandService {

	List<Brand> getBrand();
	
	List<Brand> getGoodsByGid(Integer g_ID,Integer b_Id);
	
	int deleteByPrimaryKey(String b_ID);
	
	List<Brand> searchBrand(String b_Name);
}
