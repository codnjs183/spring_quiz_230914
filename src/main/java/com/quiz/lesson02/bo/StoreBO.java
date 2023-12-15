package com.quiz.lesson02.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson02.domain.Store;
import com.quiz.lesson02.mapper.StoreMapper;

@Service // Spring Bean으로 등록한다
public class StoreBO {
	
	@Autowired
	private StoreMapper storeMapper;
	
	// Repository한테 받은 것을 컨트롤러에게 List 형태로 전달
	public List<Store> getStoreList() {
		return storeMapper.selectStoreList();
	}

}
