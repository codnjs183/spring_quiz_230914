package com.quiz.lesson05.store_review;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lesson05/store-review")
public class StoreReviewController {

	// http://localhost:8080/lesson05/store-review/store-list-view
	@GetMapping("/store-list-view")
	public String storeListView() {
		
		
		return "lesson05/store_review/storeList";
	}
}
