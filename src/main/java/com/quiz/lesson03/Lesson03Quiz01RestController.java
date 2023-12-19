package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.domain.RealEstate;

@RestController
@RequestMapping("/lesson03/quiz01")
public class Lesson03Quiz01RestController {
	
	@Autowired
	private RealEstateBO realEstateBO;

	// url: http:localhost:8080/lesson03/quiz01/1?id=5
	@RequestMapping("/1")
	public RealEstate quiz01_1(
			@RequestParam(value = "id", defaultValue = "1") int id) {
		return realEstateBO.getRealEstateById(id);
	}
	
	// url: http://localhost:8080/lesson03/quiz01/2?rent_price=90
	@RequestMapping("/2")
	public List<RealEstate> quiz01_2(
			@RequestParam(value = "rent_price", defaultValue = "0") int rentPrice) {
		return realEstateBO.getRealEstateListByRentPrice(rentPrice);
	}
	
	// url: http://localhost/lesson03/quiz01/3?area=90&price=130000
	@RequestMapping("/3")
	public List<RealEstate> quiz01_3(
			// myBatis 문법 상 파라미터는 단 한개만 xml로 보낼 수 있다.
			// 파라미터들을 하나의 맵에 담아서 보낸다.
			// 맵으로 만들어주는 어노테이션: @Param
			// @Param으로 데이터를 보낼 경우, xml에서 받는 타입의 경우 int가 아닌 map이어야 한다.
			@RequestParam(value = "area", defaultValue = "0") int area, 
			@RequestParam(value = "price", defaultValue = "0") int price) {
		return realEstateBO.getRealEstateListByAreaPrice(area, price);
	}

}
