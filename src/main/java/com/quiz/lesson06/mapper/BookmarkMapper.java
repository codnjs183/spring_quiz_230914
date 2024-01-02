package com.quiz.lesson06.mapper;

import org.springframework.stereotype.Repository;

import com.quiz.lesson06.domain.Bookmark;

@Repository
public interface BookmarkMapper {
	
	public Bookmark selectBookmarkList();
	
}
