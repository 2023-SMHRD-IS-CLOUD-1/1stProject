<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.UserVO"%>
<%@page import="com.smhrd.model.ErrandVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>당근과채찍_핵심_id 찾기</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.ico">

    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/templatemo.css">
    <link rel="stylesheet" href="./assets/css/custom.css">
    <link rel="stylesheet" href="./assets/css/errList.css">
    <link rel="stylesheet" href="./assets/css/login.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    <!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
    </style>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=IBM+Plex+Sans+KR:wght@300&display=swap');
    </style>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=IBM+Plex+Sans+KR:wght@500&display=swap');
    </style>
</head>

<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none"
                        href="https://smhrd.or.kr/course/aicamp/">
                        caroot&whip@smhrd.com</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i
                            class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i
                            class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i
                            class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i
                            class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="Gomain.do">
                HEF
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse"
                data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
                id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <!--        <li class="nav-item">
                            <a class="nav-link" href="index.html" style="font-family: 'Black Han Sans', sans-serif;
                            font-family: 'IBM Plex Sans KR', sans-serif;">?</a>
                        </li>-->
                        <li class="nav-item">
                            <a class="nav-link" href="GoerrListPage.do">심부름</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Gopost.do">커뮤니티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Gocontact.do">고객센터</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch"
                                placeholder="심부름을 요청하고 수행해보시겠어요?">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <!-- 검색창 팝업 아이콘 -->
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal"
                        data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <!--  마이페이지 아이콘 -->
                    <a class="nav-icon position-relative text-decoration-none" href="mypage1.html">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                    </a>
                    <!--로그인 버튼 !!!!!! --------------------------->
                    <a href="#"><button class="btn-open-modal nav-item loginbtn">로그인</button></a>
                    <!-- 회원가입 버튼!!!! --------------------------->
                    <a href="#"><button id="joinBtn" class="btn-open-modal nav-item loginbtn">회원가입</button></a>
                </div>
            </div>
        </div>
    </nav>
        
    

    <!-- Close Header -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q"
                        placeholder="심부름을 요청하고 수행해보시겠어요?">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>


<!-- 배너 시작 -->
  
    <!-- 배너 끝 -->

    <!-- 수정할 부분 -->
    <br>
   <form class="searchform" >
        <div class="search-title">
            <h3>아아디 찾기</h3>
            <h5>본인 인증</h5>
        </div>
        <section class="form-search">
            <div class="find-name">
                <label>이름</label>
                <input type="text" id="user_name" placeholder="등록한 이름">
                <br>
            </div>
            <div class="find-jumin">
                <label>주민등록번호</label>
                <input type="text" id="user_jumin" placeholder="주민번호를 입력해주세요 000000-0000000">
            </div>
            <br>
        </section>
        <div class="btnSearch">
            <input type="button" id="enter" value="찾기" >
        </div>
   </form>
    <!-- End Section -->
        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            CAROOT&WHIP &copy; 2023 project
                            | <a rel="sponsored" href="https://smhrd.or.kr/course/aicamp/"
                                target="_blank">당근과 채찍팀</a>| 최성욱, 유수연, 박 준, 송희주, 양재원
                        </p>
                    </div>
                </div>
            </div>
        </div>
    <!-- Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- End Script -->
     <!-- 로그인 모달창 Script------------------>

    
     <script>
     $(document).ready(function () {
    	    $("#enter").on("click", function () {
    	        console.log("성공");

    	        var user_name = $("#user_name").val();
    	        var user_jumin = $("#user_jumin").val();

    	        if (user_name.length < 1) {
    	            alert("이름을 입력해주세요");
    	            return;
    	        }

    	        var juminWithoutHyphen = user_jumin.replace(/-/g, '');
    	        console.log(juminWithoutHyphen);

    	        if (juminWithoutHyphen.length != 13) {
    	            alert("주민번호를 정확하게 입력해주세요");
    	            return;
    	        }

    	        localStorage.setItem("user_name", user_name);
    	        localStorage.setItem("user_jumin", user_jumin);

    	        $.ajax({
    	        	
    	            type: 'POST',
    	            url: 'Find.do',
    	            data: {
    	                user_name: user_name,
    	                user_jumin: user_jumin
    	            },
    	            success: function (response) {
    	            	console.log("성공2")
    	            	var user_id = response.user_id;
    	            	console.log("user_id", user_id);
    	            	$(".searchform").empty();
    	            	var a = '';
    	            	if(response.user_id !== undefined){
    	            		a+= "<h2>아이디찾기</h2><br>";
        	            	a+="<h4>고객님의 정보와 일치하는 아이디 입니다</h4><br><br>"
        	            	a+="<h5>"+user_id+"</h5><br><br><br>"
        	            	a+="<a href='GopwFind.do'> 비밀번호 찾기</a> <br>"
        	            	a+="<a href='Gomain.do'>메인으로 이동</a>"
        	            	$(".searchform").append(a);
    	            	} else{
  	            		  $(".searchform").empty();
	    	            	var a = '';
	    	            	a+= "<h2>아이디 찾기</h2><br>";
	    	            	a+="<h5>고객님의 정보와 일치하는 정보가 없습니다.</h5><br><br>"
	    	            	a+="<h5>다시 시도해주세요</h5><br><br><br><br><br>"
	    	            	a+="<a href='Gomain.do'>메인으로 이동</a>"
	    	            	$(".searchform").append(a);
	            	  }
    	            	
    	            	
    	            },
    	            error: function (error) {
    	                console.error('Error:', error);
    	            }
    	        });
    	    });
    	});
    
   
          
    </script>
</body>

</html>