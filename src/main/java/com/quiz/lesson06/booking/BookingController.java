package com.quiz.lesson06.booking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lesson06/booking")
public class BookingController {

	// url: http://localhost:8080/lesson06/booking/check-booking-view
	@GetMapping("/check-booking-view")
	public String checkBookingView() {
		return "lesson06/booking/checkBooking";
	}
}
