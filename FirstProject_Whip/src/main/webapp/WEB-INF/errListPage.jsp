<%@page import="com.smhrd.model.UserVO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>당근과채찍_핵심_ErrPage</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.ico">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">
<link rel="stylesheet" href="assets/css/errList.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap')
	;
</style>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=IBM+Plex+Sans+KR:wght@300&display=swap')
	;
</style>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=IBM+Plex+Sans+KR:wght@500&display=swap')
	;
</style>
</head>

<body>
	<!-- Start Top Nav -->
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
		id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="https://smhrd.or.kr/course/aicamp/">
						carrot&whip@smhrd.com</a>
				</div>
				<div>
					<a class="text-light" href="https://fb.com/templatemo"
						target="_blank" rel="sponsored"><i
						class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a> <a
						class="text-light" href="https://www.instagram.com/"
						target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
					<a class="text-light" href="https://twitter.com/" target="_blank"><i
						class="fab fa-twitter fa-sm fa-fw me-2"></i></a> <a class="text-light"
						href="https://www.linkedin.com/" target="_blank"><i
						class="fab fa-linkedin fa-sm fa-fw"></i></a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Top Nav -->


	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div
			class="container d-flex justify-content-between align-items-center">

			<a class="navbar-brand text-success logo h1 align-self-center"
				href="Gomain.do"> HEF </a>

			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
				id="templatemo_main_nav">
				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<!--        <li class="nav-item">
                            <a class="nav-link" href="index.html" style="font-family: 'Black Han Sans', sans-serif;
                            font-family: 'IBM Plex Sans KR', sans-serif;">?</a>
                        </li>-->
						<li class="nav-item"><a class="nav-link"
							href="GoerrListPage.do">심부름</a></li>
						<li class="nav-item"><a class="nav-link" href="Gopost.do">커뮤니티</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="GomanagementPost.do">고객센터</a></li>
					</ul>
				</div>
				<div class="navbar align-self-center d-flex">
					<div
						class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="심부름을 요청하고 수행해보시겠어요?">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>
					<!-- 검색창 팝업 아이콘 -->
					<a class="nav-icon d-none d-lg-inline" href="#"
						data-bs-toggle="modal" data-bs-target="#templatemo_search"> <i
						class="fa fa-fw fa-search text-dark mr-2"></i>
					</a>
					<!--  마이페이지 아이콘 -->
					<a class="nav-icon position-relative text-decoration-none"
						href="Gomypage1.do"> <i
						class="fa fa-fw fa-user text-dark mr-3"></i>
					</a>
					<!--로그인 버튼 !!!!!! --------------------------->
					<a href="#"><button class="btn-open-modal nav-item loginbtn">로그인</button></a>
					<!-- 회원가입 버튼!!!! --------------------------->
					<a href="#"><button id="joinBtn"
							class="btn-open-modal nav-item loginbtn">회원가입</button></a>
				</div>
			</div>
		</div>
	</nav>
	<!-- 로그인 모달창 !!!!! ------------------------------------------>
	<div class="modal">
		<div class="modal_body">
			<h2>LOGIN</h2>
			<span id="icon-close" class="close-icon">&#10006;</span>
			<div class="member_login">
				<form th:action="#" th:method="POST">
					<div class="member_login_input">
						<input type="text" name="username" placeholder="아이디">
					</div>
			</div>
			<div class="member_login_input">
				<input type="password" name="password" placeholder="비밀번호">
			</div>
			<br> <a href="" class="loginSearch"> 아이디 찾기</a> <a href=""
				class="loginSearch"> 비밀번호 찾기</a>
			<div class="member_login_btn">
				<br> <input type="submit" class="btn btn-secondary"
					id="btn-login" value="로그인"> <input type="button"
					class="btn btn-secondary" id="btn-join" value="회원가입"> <br>
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
	</form>
	</div>


	<!-- Close Header -->

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="심부름을 요청하고 수행해보시겠어요?">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>


	<!-- 배너 시작 -->
	<section class="bg-success py-5">
		<div class="container">
			<div class="row align-items-center py-5">
				<div class="col-md-8 text-white">
					<h1>지금 HEF와 함께 시작해보세요 !</h1>
					<p class="bannerContent">
						조건에 딱! 맞는 수행인을 찾으시나요? <br> 딱! 맞는 의뢰인을 찾으시나요? <br> HEF가
						도와드리겠습니다. <br> <br> "필요한 사람을 찾는 일에 시간과 에너지를 낭비하지 마세요"
					</p>
				</div>
				<div class="col-md-4">
					<img src="assets/img/help_icon.png" alt="About Hero">
				</div>
			</div>
		</div>
	</section>
	<!-- 배너 끝 -->

	<!-- 수정할 부분 -->

	<section class="container py-5">
		<span id="PostTitle">카테고리 목록</span>
		<div class="container1">
			<div class="menu">
				<button class="categoryBtn" onclick="sendData('1')">청소/정리</button>
				<p>
					<img src="./assets/img/cleaning.png" width="35px" height="30px">&ensp;
				</p>
			</div>
			<div class="menu">
				<button class="categoryBtn" onclick="sendData('2')">과외</button>
				<p>
					<img src="./assets/img/book.png" width="35px" height="30px">
					&ensp;
				</p>
			</div>
			<div class="menu">
				<button class="categoryBtn" onclick="sendData('3')">수리/설치</button>
				<p>
					<img src="./assets/img/tools.png" width="35px" height="30px">&ensp;
				</p>

			</div>
			<div class="menu">
				<button class="categoryBtn" onclick="sendData('4')">인테리어</button>
				<p>
					<img src="./assets/img/interior.png" width="35px" height="30px">
				</p>
			</div>
			<div class="menu">
				<button class="categoryBtn" onclick="sendData('5')">기타집안일</button>
				<p>
					<img src="./assets/img/house.png" width="35px" height="30px">
					&ensp;
				</p>
			</div>
			<div class="menu">
				<button class="categoryBtn" onclick="sendData('6')">이사</button>
				<p>
					<img src="./assets/img/moving-home.png" width="35px" height="30px">&ensp;
				</p>

			</div>
		</div>
		<div id="postContent">
			<div id="PostBodyarea">
				<span id="PostTitle">심부름 글 목록</span>
				<div id="PostSearch">
					<select name="SearchCategory" id="SearchCategory">
						<option value="err_name">제목</option>
						<option value="user_id">작성자</option>
					</select> <input type="text" id="searchInput">
					<button id="searchButton">검색</button>
				</div>
				<!-- 로그인 안되어 있으면 버튼 비활성화 하기 -->
				<div id="PostUpdate1">
				<c:if test="${user.user_id != null}">
				<a href="GoerrPage.do" id="postUpdate">심부름 등록</a>
				</c:if>
					
				</div>
				<hr class="borderLine">
				<table id="postTable" align="center">
					<tr>
						<th style="width: 10%;">심부름 번호</th>
						<th style="width: 7%;">작성자</th>
						<th style="width: 20%;">제목</th>
						<th style="width: 15%;">작성일자</th>
						<th style="width: 15%;">단가</th>
						<th style="width: 15%;">신청하기</th>
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

	</section>
	<!-- End Section -->
	<div class="w-100 bg-black py-3">
		<div class="container">
			<div class="row pt-2">
				<div class="col-12">
					<p class="text-left text-light">
						CAROOT&WHIP &copy; 2023 project | <a rel="sponsored"
							href="https://smhrd.or.kr/course/aicamp/" target="_blank">당근과
							채찍팀</a>| 최성욱, 유수연, 박 준, 송희주, 양재원
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
        const modal = document.querySelector('.modal');
        const btnOpenModal = document.querySelector('.btn-open-modal');

        btnOpenModal.addEventListener("click", () => {
            modal.style.display = "flex";
        });

        joinLink = 'Gojoin.do';
        mainLink = 'Gomain.do';
        
        // 로그인 모달창 내부에 있는 로그인 버튼 이벤트 
        let loginBtn = document.getElementById("btn-login");
        loginBtn.onclick = hrefLink
        function hrefLink(){
            location.href = mainLink;
        }
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
			console.log("들어오니?5");
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
            url: "ErrBoard.do",
            data: { selectedNum: selectedNum },
            dataType: "json",
            success: function (res) {
            	console.log("test>>",res);
                $(".postListCL").remove();
                for (let i = 0; i < 10; i++) {
                    var a = "";
                    a += "<tr class=\"postListCL\">";
                    a += "<td class=\"postListNum\">" + res[i].err_num + "</td>";
                    a += "<td class=\"postListid\">" + res[i].user_id + "</td>";
                    a += "<td class=\"postListTitle\"><a href=\"#\">" + res[i].err_name + "</a></td>";
                    a += "<td class=\"postListDate\">" + res[i].created_at + "</td>";
                    a += "<td class=\"postListMoney\">" + res[i].err_price + "</td>";
                    if ('${user.user_id}' != '' && res[i].user_id != '${user.user_id}') {
                        a += "<td><button class='match'>신청</button></td>"
                    }
                    a += "</tr>"
                    $("#postTable").append(a);
                    
                }

                // 심부름 신청
                $(".match").on('click', function (e) {
                    e.preventDefault();
                    var clickedErrNum = $(this).closest("tr").find(".postListNum").text();
                    var user_id = '${user.user_id}';
                    console.log(clickedErrNum);
                    localStorage.setItem("clickedErrNum", clickedErrNum);

                    $.ajax({
                        type: 'POST',
                        url: 'Err_match.do',
                        data: {
                            clickedErrNum: clickedErrNum,
                            user_id: user_id
                        },
                        success: function (response) {
                            console.log(response);
                            alert('성공적으로 신청되었습니다.');
                        },
                        error: function (error) {
                            console.error('Error:', error);
                        }
                    });

                });
            },
            error: function (result) {
                console.log('안됨');
            }
        });
    }

    function loadPostNum() {
    	$.ajax({
    		url : "ErrNum.do",
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
	
	
                        // 심부름 카테고리 별로 불러오기
                        function sendData(categoryNumber) {
                            window.selectedCategoryNumber = categoryNumber;
                            var outputContainer = $(".postListCL");
                            outputContainer.empty();
                           
                            $.ajax({
                                type: "POST",
                                url: "Err_read.do",
                                data: { categoryNumber: categoryNumber },
                                success: function (response) {
                                    console.log(response);

                                    var result = JSON.parse(response);
                                    console.log("선택된 카테고리 번호:", window.selectedCategoryNumber);
                                    console.log("서버 응답:", result);

                                    for (var i = 0; i < 10; i++) {
                                    	var a = "";
                            			a += "<tr class = \"postListCL\">";
                            			a += "<td class = \"postListNum\">"+ result[i].err_num + "</td>";
                            			a += "<td class = \"postListid\">"+ result[i].user_id + "</td>";
                            			a += "<td class = \"postListTitle\"><a href = \"#\" >"+ result[i].err_name + "</a></td>";
                            			a += "<td class = \"postListDate\">"+ result[i].created_at + "</td>";
                            			a += "<td class = \"postListMoney\">"+ result[i].err_price + "</td>";
                            			if ('${user.user_id}' != '' && res[i].user_id != '${user.user_id}') {
                                 			a += "<td><button id='match'>신청</button></td>"
                                 			}
                            			a += "</tr>"
                              			$("#postTable").append(a);
                                    }
                                },
                                error: function (error) {
                                    console.error("에러", error);
                                },
                            });
                        }
  						// 심부름 검색 기능
                        $(document).ready(function () {
                            $("#searchButton").on("click", function () {
                                var selectedCategory = $("#SearchCategory").val();
                                var searchTerm = $("#searchInput").val();
                                console.log(selectedCategory);
                                console.log(searchTerm);
                                var outputContainer = $(".postListCL");
                                outputContainer.empty();
                                // AJAX 요청 보내기
                                $.ajax({
                                    type: 'POST',
                                    url: 'Err_search.do',
                                    data: {
                                        SearchCategory: selectedCategory, 
                                        searchTerm: searchTerm
                                    },
                                    success: function (response) {
                                    	 console.log(response);
										
                                         var result = JSON.parse(response);
                                         for (var i = 0; i < result.length; i++) {
                                         	var a = "";
                                 			a += "<tr class = \"postListCL\">";
                                 			a += "<td class = \"postListNum\">"+ result[i].err_num + "</td>";
                                 			a += "<td class = \"postListid\">"+ result[i].user_id + "</td>";
                                 			a += "<td class=\"postListTitle\"><a href=\"#\" >" + result[i].err_name + "</a></td>";
                                 			a += "<td class = \"postListDate\">"+ result[i].created_at + "</td>";
                                 			a += "<td class = \"postListMoney\">"+ result[i].err_price + "</td>";
                                 			if ('${user.user_id}' != '' && res[i].user_id != '${user.user_id}') {
                                     			a += "<td><button id='match'>신청</button></td>"
                                     			}
                                 			a += "</tr>"
                                   			$("#postTable").append(a);
                                         }
                                    },
                                    error: function (error) {
                                        console.error('Error:', error);
                                    }
                                });
                            });
                        });
                      	// 심부름 글 상세보기 기능
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
                                    url: 'Err_detail.do',
                                    data: {
                                    	clickedErrNum : clickedErrNum
                                    },
                                    success: function(response) {
                                        console.log(response);
                                        window.location.href = 'GoErrandRead.do';
                                        // 성공적으로 응답을 받았을 때 수행할 작업
                                    },
                                    error: function(error) {
                                        console.error('Error:', error);
                                    }
						      });
						    });
						  });
                      
						
						  
						 
						</script>
</body>

</html>