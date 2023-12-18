package com.quiz.lesson03.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson03.domain.RealEstate;

@Repository
public interface RealEstateMapper {
	
	public RealEstate selectRealEstateById(int id);
	
	public List<RealEstate> selectRealEstateListByRentPrice(int rentPrice);
	
	public List<RealEstate> selectRealEstateListByAreaPrice(int area, int price);
}
