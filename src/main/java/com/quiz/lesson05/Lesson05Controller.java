package com.quiz.lesson05;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lesson05")
public class Lesson05Controller {
	
	@GetMapping("/quiz01")
	public String quiz01() {
		return "lesson05/quiz01";
	}

	@GetMapping("/quiz03")
	public String quiz03(Model model) {
		List<Integer> candidates = new ArrayList<>();
		candidates.add(263001);
		candidates.add(173942); 
		candidates.add(563057); 
		
		model.addAttribute("candidates", candidates);
		
		return "lesson05/quiz03";
	}
}
