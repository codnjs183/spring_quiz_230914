<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Bootstrap -->
<!-- AJAX를 사용하려면 jquery 원본 필요 (2번째 줄) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<!-- css -->
<link rel="stylesheet" type="text/css" href="/css/checkBooking.css">
</head>
<body>
<div id="wrap" class="container">
            <header class="bg-light d-flex justify-content-center align-items-center">
                <div class="display-4">통나무 펜션</div>
            </header>
            <nav>
                <ul class="nav nav-fill">
                    <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">펜션소개</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">객실보기</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">예약안내</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">커뮤니티</a></li>
                </ul>
            </nav>
            <section class="banner bg-info">
                <img src="http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg" alt="banner" class="w-100">
            </section>
            <section class="reserve bg-primary d-flex">
                <section class="real-time-reserved col-4 d-flex justify-content-center align-items-center">
                    <div class="display-4 text-white">실시간<br>예약하기</div>
                </section>
                <section class="confirm col-4">
                    <!-- 예약 확인-->
                    <div class="text-white mt-3">
                        <span class="reserve-confirm">예약 확인</span>
                    </div>

                    <div id="nonMemberBox" class="mr-3">
                        <div class="d-flex align-items-center justify-content-end mt-2">
                            <span class="text-white mr-2">이름</span>
                            <input type="text" id="name" class="form-control col-9">
                        </div>
                        <div class="d-flex align-items-center justify-content-end mt-2">
                            <span class="text-white mr-2">전화번호</span>
                            <input type="text" id="phoneNumber" class="form-control col-9">
                        </div>

                        <!-- 버튼 -->
                        <div class="d-flex justify-content-end mt-2">
                            <button type="button" id="checkBtn" class="submit-btn btn btn-success">조회하기</button>
                        </div>
                    </div>
                </section>
                <section class="inquiry col-4 d-flex justify-content-center align-items-center">
                    <div class="text-white">
                        <h4 class="font-weight-bold">예약문의:</h4>
                        <h1>010-<br>0000-1111</h1>
                    </div>
                </section>
            </section>
            <footer class="d-flex align-items-center pl-3">
                <div class="address">
                    제주특별자치도 제주시 애월읍<br>
                    사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목<br>
                    Copyright 2025 tongnamu. All right reserved.
                </div>
            </footer>
        </div>
        
        <script>
        	$(document).ready(function() {
        		
        		$("#checkBtn").on("click", function() {
        			alert("이름: 신보람\n날짜: 2020-01-04\n일수: 2\n인원:4\n상태:대기중");
        			
        		});
        	});
        </script>
</body>
</html>