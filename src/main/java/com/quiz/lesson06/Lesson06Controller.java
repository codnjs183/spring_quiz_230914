package com.quiz.lesson06;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.domain.Bookmark;

@RequestMapping("/lesson06")
@Controller
public class Lesson06Controller {
	
	// 즐겨찾기 추가 화면
	// http://localhost:8080/lesson06/quiz01/add-bookmark-view
	@GetMapping("/quiz01/add-bookmark-view")
	public String addBookmarkView () {
		return "lesson06/addBookmark";
	}
	
	// AJAX 요청으로 즐겨찾기 추가 하는 곳
	@ResponseBody
	@PostMapping("/quiz01/add-bookmark")
	public String addBookmark(
			@RequestParam("name") String name,
			@RequestParam("address") String address) {
		
		// DB insert
		
		return "성공";
	}
	
//	@RequestMapping("/after-add-bookmark-view")
//	public List<Bookmark> afterAddBookmarkView() {
//		
//	}
}
