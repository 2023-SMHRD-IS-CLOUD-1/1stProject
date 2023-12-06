<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>당근과채찍_핵심_MainPage</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.ico">

    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/templatemo.css">
    <link rel="stylesheet" href="./assets/css/custom.css">
    <!-- 분리한 css 파일 경로-->
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" href="./assets/css/manage.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    <!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->

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
                    <!-- <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="#">010-020-0340</a> -->
                </div>
                <!-- 여기에 푸터 내용 집어넣을 예정 -->
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
            <!---- 메인 로고 ------->
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
                        <!--홈으로 이동하는 태그인데 없어도 될 듯해서 일단 주석처리     <li class="nav-item">
                            <a class="nav-link" href="main.html" style="font-family: 'Black Han Sans', sans-serif;
                            font-family: 'IBM Plex Sans KR', sans-serif;" >?</a>
                        </li> --------------->
                        <li class="nav-item">
                            <a class="nav-link" href="GoerrListPage.do">심부름</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Gopost.do">커뮤니티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="GomanagementPost.do">고객센터</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="심부름을 요청하고 수행해보시겠어요?">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <div class="headDiv">
						<!-- 검색창 팝업 아이콘  -------------------->
						<a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal"
						data-bs-target="#templatemo_search">
							<i class="fa fa-fw fa-search text-dark mr-2"></i>
						</a>
						<!-- 장바구니 지움  -->
						
						<!--마이페이지 아이콘-->
						<a id="mypageAtage" class="nav-icon position-relative text-decoration-none" href="Gomypage1.do">
							<i id="mypageIcon" class="fa fa-fw fa-user text-dark mr-3"></i>
						</a>
                    </div>
	                <div class="headDiv">
		                <!--로그인 버튼 !!!!!! --------------------------->
		                <a href="#"><button class="btn-open-modal nav-item loginbtn" id ="loginBtn">로그인</button></a>
		                <!-- 회원가입 버튼!!!! --------------------------->
		                <a href="Logout.do"><button id="logoutBtn" class="btn-open-modal nav-item loginbtn">로그아웃</button></a>
	                </div>
	                <div class="headDiv">
		                <a href="#"><button id="joinBtn" class="btn-open-modal nav-item loginbtn">회원가입</button></a>
	                </div>
                </div>
            </div>

    </nav>
    <!-- Close Header -->
    <!-- 로그인 모달창 !!!!! ------------------------------------------>
    <div class="modal">
        <div class="modal_body">
            <h2>LOGIN </h2> <span id="icon-close" class="close-icon">&#10006;</span>
            <div class="member_login">
                <div class="member_login_input">
                    <input id="inputId" type="text" name="username" placeholder="아이디">
                </div>
            </div>
            <div class="member_login_input">
                <input id="inputPw" type="password" name="password" placeholder="비밀번호">
            </div>
            <br>
            <span id="idPwSameCheck"></span>
            <br>
            <a href="GoIdFind.do" class="loginSearch"> 아이디 찾기</a>
            <a href="GopwFind.do" class="loginSearch"> 비밀번호 찾기</a>
            <div class="member_login_btn">
                <br>
                <input type="submit" class="btn btn-secondary" id="btn-login" value="로그인"  >
             <input type="button" class="btn btn-secondary" id="btn-join"     value="회원가입" > 
             <br>
             <br>
             
             <!-- <input type="button" class="btn btn-secondary" id="btn-close" value="메인으로 이동"> -->
            </div>
        </div>
        <!--  로그인 api임  일단 보류       <div class="login_api">
            <a href="https://kauth.kakao.com/oauth/authorize?client_id=d860d38c992ca8bf5f07dcc3fd5122b9&redirect_uri=http://localhost:9090/member/auth/kakao/callback&response_type=code"><img src="/image/kakao_login_button.png"></a>
        </div>
        <div class="login_api">
            <a href="/oauth2/authorization/google"><img src="/image/google_login_button.png"></a>
        </div> -->
    </div>

    <!-- Modal 검색 모달창 !!!!!!! ------------------------------------->
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



    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <section class="bg-success py-5">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-white">
                    <h1>지금 HEF와 함께 시작해보세요 ! </h1>
                    <p class="bannerContent">
                        조건에 딱! 맞는 수행인을 찾으시나요?
                        <br> 
                        딱! 맞는 의뢰인을 찾으시나요?
                        <br>
                        HEF가 도와드리겠습니다.
                        <br>
                        <br>
                        "필요한 사람을 찾는 일에 시간과 에너지를 낭비하지 마세요"
                    </p>
                </div>
                <div class="col-md-4">
                    <img src="assets/img/about-hero.svg" alt="About Hero">
                </div>
            </div>
        </div>
    </section>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel"
            role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel"
            role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->
    <!-- Start Categories of The Month -->
    <section class="container py-5">
    <br>
        <span id="PostTitle">고객문의함</span> 
        
        <div id="postContent">
            <div id = "PostBodyarea">
                <div id="PostSearch1">
                <form action="#" id="PostSearchForm">
                    <select name="postSearchFilter" id="postSearchFilter">
                        <option value="제목">제목</option>
                        <option value="작성자">작성자</option>
                    </select>
                    <input type="text" id="postSearch">
                    <input type="submit" id="postSearchSub" value="검색"><i class="ic-plus"></i>
                </form>
            </div>
            <br>
             <c:if test="${user.user_id != null}">
            <a href="Gomanage.do" >문의글 등록</a> 
            </c:if>

           
                <hr class="borderLine">
                <table id="postTable">
					<tr>
						<th style="width: 10%;">글 번호</th>
						<th style="width: 20%;">작성자</th>
						<th style="width: 40%;">제목</th>
						<th style="width: 24%;">작성일자</th>
						<th style="width: 10%;">답변여부</th>
					</tr>
				</table>
                    <hr class="borderLine">
                    <div id="pageNumber">
					<a href="#" class="pageNumberAMove">&lt;&lt;</a> 
					<a href="#" class="pageNumberA">1</a> 
					<a href="#" class="pageNumberA">2</a> 
					<a href="#" class="pageNumberA">3</a> 
					<a href="#" class="pageNumberA">4</a>
					<a href="#" class="pageNumberA">5</a> 
					<a href="#"	class="pageNumberAMove">&gt;&gt;</a>
				</div>
                    </div>
            </div>

        </div>
    </section>
    <!-- End Categories of The Month -->


    <!--Start Footer -->
    <section class="bg-light">
  
 
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

    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- End Script -->
    <!-- 로그인 모달창 Script------------------>
    <script>
        const modal = document.querySelector('.modal');
        const btnOpenModal = document.querySelector('.btn-open-modal');

        btnOpenModal.addEventListener("click", () => {
            modal.style.display = "flex";
        });

        joinLink = 'Gojoin.do';
        
        // 로그인 모달창 내부에 있는 회원가입 버튼 이벤트 
        var joinBtn = document.getElementById("btn-join");
        joinBtn.onclick = hrefLink
        function hrefLink(){
            location.href = joinLink;
        }
        // 회원가입 버튼 이벤트
        var joinBtn = document.getElementById("joinBtn");
        joinBtn.onclick = hrefLink
        function hrefLink(){
            location.href = joinLink;
        }
    </script>
<script>
    // 모달 창 닫기 함수
        document.addEventListener("DOMContentLoaded", function () {
        // Find the close-icon button
        var closeIcon = document.getElementById("icon-close");

        // Add a click event listener to the close-icon button
        closeIcon.addEventListener("click", function () {
            // Redirect to main.html
            window.location.href = "GomanagementPost.do";
        });
    });
</script>

	<script>
    let firstBtn = document.querySelector('#pageNumber>.pageNumberA:nth-child(2)');
    let lastBtn = document.querySelector('#pageNumber>.pageNumberA:nth-child(6)')
    let pageButtons = document.querySelectorAll('.pageNumberA');
    let pageNumber = document.querySelector('#pageNumber');
    let prevBtn = document.querySelector('#pageNumber>.pageNumberAMove:first-child');
	let nextBtn = document.querySelector('#pageNumber>.pageNumberAMove:last-child');
	let selectedNum = 1;
	let lastPageNum = 1;
	document.addEventListener("DOMContentLoaded", function() {
		// 1번 페이지 버튼 클릭
		if (firstBtn) {
			firstBtn.click();
			loadPostTen();
			loadPostNum();
		}
	});
	// 1~5페이지면 << 삭제
	if (firstBtn.innerHTML == '1') {
		prevBtn.style.display = 'none';
	}
	// << 버튼 눌렀을 때
	prevBtn.addEventListener('click', function() {
		selectedNum = (parseInt((selectedNum - 1)/ 5)) * 5;
		console.log(selectedNum);
		for(let i = 0; i < 5; i++) {
			pageButtons[i].style.display = '';
			pageButtons[i].innerHTML = parseInt(pageButtons[i].innerHTML) -5;
		} if (firstBtn.innerHTML == '1') {
			prevBtn.style.display = 'none';
		}
		pageButtons.forEach(function (button) {
            button.style.textDecoration = 'none';
            button.style.color = 'initial';
        });
		lastBtn.style.color = 'red';
		lastBtn.style.textDecoration = 'underline';
		loadPostTen();
		nextBtn.style.display = '';
	});
	// >> 버튼 눌렀을 때
	nextBtn.addEventListener('click', function() {
		selectedNum = parseInt(((parseInt((selectedNum - 1) / 5)) * 5) + 6);
        for(let i = 0; i < 5; i++) {
           pageButtons[i].innerHTML = parseInt(pageButtons[i].innerHTML) + 5;
        }
        if (firstBtn.innerHTML != '1') {
           prevBtn.style.display = '';
        }
        pageButtons.forEach(function (button) {
               button.style.textDecoration = 'none';
               button.style.color = 'initial';
           });
        firstBtn.style.color = 'red';
        firstBtn.style.textDecoration = 'underline';
        loadPostTen();
        loadPostNum()
	});
	 // 부모 요소에 이벤트 리스너 추가
    pageNumber.addEventListener('click', function (event) {
        // 클릭된 요소가 페이지 버튼인지 확인
        if (event.target.classList.contains('pageNumberA')) {
            // 모든 페이지 버튼의 스타일 초기화
            pageButtons.forEach(function (button) {
                button.style.textDecoration = 'none';
                button.style.color = 'initial';
            });
            selectedNum = parseInt(event.target.innerHTML);
			console.log(selectedNum);
            // 클릭된 페이지 버튼의 스타일 변경
            event.target.style.textDecoration = 'underline';
            event.target.style.color = 'red';
        }
        loadPostTen();
    });	
    function loadPostTen() {
	    $.ajax({
			url : "ManBoard.do",
			data : {selectedNum : selectedNum},
			dataType : "json",
			success : function(res) {
				$(".postListCL").remove();
				 for (let i = 0; i < 10; i++) {
                 	var a = "";
         			a += "<tr class = \"postListCL\">";
         			a += "<td class = \"postListNum\">"+ res[i].management_post_num + "</td>";
         			a += "<td class = \"postListid\">"+ res[i].management_post_id + "</td>";
         			a += "<td class = \"postListTitle\"><a href = \"#\" >"+ res[i].management_post_title + "</a></td>";
         			a += "<td class = \"postListDate\">"+ res[i].posted_at + "</td>";
         			if(res[i].management_post_relpy == "n"){
         				a += "<td class = \"post_relpy\">답변예정</td>";
         			} else{
         				a += "<td class = \"post_relpy\">답변완료</td>";
         			}
         			a += "</tr>"
           			$("#postTable").append(a);
                 }
			},
			error : function(result) {
				console.log('안됨');
			}
		});
    }
    function loadPostNum() {
    	$.ajax({
    		url : "ManNum.do",
    		dataType : "json",
    		success : function(res) {
    			lastPageNum = parseInt((res - 1)/10) + 1;
    			for(let i = 0; i < 5; i++) {
    				if(lastPageNum < pageButtons[i].innerHTML) {
    					nextBtn.style.display = 'none';
						pageButtons[i].style.display = 'none';
    				}
    			}
    			
    		},
    		error : function(res){
    			console.log('실패999999999999999');
    			lastPageNum = res;
    		}
    	});
    }
</script>
	<script>
		// 글 상세보기 기능
		$(document).ready(function() {
		  // 클릭 이벤트 핸들러
		   $('#postTable').on('click', '.postListTitle a', function(e) {
		  	 e.preventDefault();
		    // 클릭한 행의 err_num 값을 가져오기
		    var clickedErrNum = $(this).closest("tr").find(".postListNum").text();
		    console.log(clickedErrNum);
		    // 데이터 저장
		    localStorage.setItem("clickedErrNum", clickedErrNum);
		    
		
		    $.ajax({
	            type: 'POST',
	            url: 'Manage_detail.do',
	            data: {
	            	clickedErrNum : clickedErrNum
	            },
	            success: function(response) {
	                console.log(response);
	                window.location.href = 'GoManageRead.do';
	                // 성공적으로 응답을 받았을 때 수행할 작업
	            },
	            error: function(error) {
	                console.error('Error:', error);
	                
	            }
	    });
	  });
	});
    </script>
    	<!-- 로그인 여부에 따라 버튼 기능 변경 -->    
    <script>
     //HttpSession session = request.getSession();
    //let user = (UserVO)session.getAttribute("user");
    let loginBtn = document.querySelector('#loginBtn');
    let logoutBtn = document.querySelector('#logoutBtn');
	$('#mypageAtage').on('click',function(){
		if('${user}' == ''){alert('로그인해 주세요')}
	})
      
    if('${user}' == ''){
       console.log("asdfasdfasdf")
       //loginBtn.style.display ='';
       //logoutBtn.style.display ='none';
       $('#loginBtn').attr('style', "display: ''")
       $('#logoutBtn').attr('style', "display: none")
       $('#mypageAtage').attr("href","GomanagementPost.do");
       $('#joinBtn').attr('style', "display: ''");
    }else{
       $('#loginBtn').attr('style', "display: none")
       $('#logoutBtn').attr('style', "display: ''")
       $('#mypageAtage').attr("href","GomanagementPost.do");
       $('#joinBtn').attr('style', "display: none");
    }
    </script>
    
	    <!-- 로그인 모달창에서 일치하지 않는 id, pw를 입력할 경우 오류 문구 띄워줌 -->
    <script>
    $('#btn-login').on('click', function(){
        $.ajax({
            url : "Login.do",
            dataType : "JSON",
            data : {
                user_id : $('#inputId').val(),
                user_pw : $('#inputPw').val()
            },
            success : function(res){
                if(res.k == "false"){
                   console.log("실패 확인")
                    $('#idPwSameCheck').html('아이디와 비밀번호가 일치하지 않습니다');
                }else if(res.k == "true"){
                   window.location.href = "Gomain.do"
                }
            },
         error : function(result) {
         }
        })
    })
    </script>

</body>

</html>