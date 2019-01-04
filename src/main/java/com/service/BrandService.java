package com.service;

import java.util.List;


import com.entity.Brand;

public interface BrandService {

	List<Brand> getBrand();
	
	List<Brand> getGoodsByGid(Integer g_ID,Integer b_Id);
}
