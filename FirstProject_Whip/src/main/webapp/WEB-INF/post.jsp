<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>당근과채찍_핵심_PostPage</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <link rel="stylesheet" href="assets/css/postcss.css">

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
                        href="https://smhrd.or.kr/course/aicamp/">caroot&whip@smhrd.com</a>
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
                        <li class="nav-item">
                            <a class="nav-link" href="GoerrListPage.do">심부름</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Gopost.do">커뮤니티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="GoNaNmanagementPost.do">고객센터</a>
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
                    <!-- 검색창 모달 아이콘 -->
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal"
                        data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <!-- 마이페이지 아이콘 -->
                    <a class="nav-icon position-relative text-decoration-none" href="Gomypage1.do">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span
                            class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
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
        <!-- 로그인 모달창 !!!!! ------------------------------------------>
        <div class="modal">
            <div class="modal_body">
                <h2>LOGIN </h2> <span id="icon-close" class="close-icon">&#10006;</span>
                <div class="member_login">
                    <form th:action="#" th:method="POST">
                        <div class="member_login_input">
                            <input type="text" name="username" placeholder="아이디">
                        </div>
                </div>
                <div class="member_login_input">
                    <input type="password" name="password" placeholder="비밀번호">
                </div>
                <br>
                <a href="" class="loginSearch"> 아이디 찾기</a>
                <a href="" class="loginSearch"> 비밀번호 찾기</a>
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
        </form>
        </div>
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
    <!-- Start Content -->
    <div class="container py-5" id="postContent">
		<div id="postBodyArea">
			<span href="#" id="postTitle">우리동네 소식</span>
			<select	name="postSearchFilter" id="postSearchFilter">
				<option value="post_title">제목</option>
				<option value="user_id">작성자</option>
			</select>
			<input type="text" id="postSearch"> 
			<button id="searchButton">검색</button>	
			<div>
				<a href="Gopost_write.do" id="postUpdateA">글작성</a>
			</div>
			<hr class="borderLine">
			<table id="postTable">
				<tr class = "test1">
					<th class="postTableHead" style="width: 80px;">글 번호</th>
					<th class="postTableHead" style="width: 100px;">작성자</th>
					<th class="postTableHead" style="width: 800px;">제목</th>
					<th class="postTableHead" style="width: 140px;">조회수</th>
					<th class="postTableHead" style="width: 140px;">추천</th>
					<th class="postTableHead" style="width: 140px;">작성일자</th>
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
				<a href="#" class="pageNumberAMove">&gt;&gt;</a>
			</div>
		</div>

	</div>
	<!-- End Content -->
	
    <!-- Start Featured Product -->
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
    <script src="assets/js/postjs.js"></script>

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
        location.herf = mainLink;
    }
    // 로그인 모달창 내부에 있는 회원가입 버튼 이벤트 
    var joinBtn = document.getElementById("btn-join");
    joinBtn.onclick = hrefLink
    function hrefLink(){
        location.href = joinLink;
    }
</script>
<!-- 1201 로그인 모달창 닫기 추가 -->
<script>
    // Wait for the DOM to be ready
    document.addEventListener("DOMContentLoaded", function () {
        // Find the close-icon button
        var closeIcon = document.getElementById("icon-close");

        // Add a click event listener to the close-icon button
        closeIcon.addEventListener("click", function () {
            // Redirect to main.html
            window.location.href = "Gopost.do";
        });
    });
    </script>
	<!-- 성욱의 게시판 메인 수정 -->
	<script>
		let firstBtn = document.querySelector('#pageNumber>.pageNumberA:nth-child(2)');
		let lastBtn = document.querySelector('#pageNumber>.pageNumberA:nth-child(6)')
	    let pageButtons = document.querySelectorAll('.pageNumberA');
		let pageNumber = document.querySelector('#pageNumber');
		let prevBtn = document.querySelector('#pageNumber>.pageNumberAMove:first-child');
		let nextBtn = document.querySelector('#pageNumber>.pageNumberAMove:last-child');
		let searchBtn = document.querySelector('#searchButton');
		let postSearchFilter = document.querySelector('#postSearchFilter');
		let searchWord = document.querySelector('#postSearch');
		let postUpdateA = document.querySelector('#postUpdateA');
		let selectedNum = 1;
		let lastPageNum = 1;
		
		
		
		searchBtn.addEventListener('click', function() {
			if (firstBtn) {
				firstBtn.click();
				}
			$.ajax({
				url : "PostSearch.do",
				data : {
					postSearchFilter : postSearchFilter.value,
					searchWord : searchWord.value
				},
				dataType : "json",
				success : function(res){
					$(".postListCL").remove();
					for (let i = 0; i < 10; i++) {
						var a = "";
						a += "<tr class = \"postListCL\">";
						a += "<td class = \"postListNum\">"+ res[i].post_num + "</td>";
						a += "<td class = \"postListId\">"+ res[i].user_id + "</td>";
						a += "<td class = \"postListTitle\"><a href = \"#\">"+ res[i].post_title + "</a></td>";
						a += "<td class = \"postListViews\">"+ res[i].post_views + "</td>";
						a += "<td class = \"postListLikes\">"+ res[i].post_likes + "</td>";
						a += "<td class = \"postListDate\">"+ res[i].posted_at + "</td>";
						a += "</tr>"
						$("#postTable").append(a);
					}
					
				},
				error : function(result) {
					console.log('검색 ajax 실패');
				}
				
			});
		});
		
		
		
		//<select	name="postSearchFilter" id="postSearchFilter">
			//<option value="post_title">제목</option>
			//<option value="user_id">작성자</option>
		//</select>
		//<input type="text" id="postSearch"> 
		//<button id="searchButton">검색</button>	
		// 페이지 시작시 1번 페이지 선택
		document.addEventListener("DOMContentLoaded", function() {
			// 1번 페이지 버튼 클릭
			if (firstBtn) {
			firstBtn.click();
			loadPostTen();
			loadPostNum();
			}
		});
		console.log(selectedNum);
		
		// 1~5페이지면 << 삭제
		if (firstBtn.innerHTML == '1') {
			prevBtn.style.display = 'none';
		}
		// << 버튼 눌렀을 때
		prevBtn.addEventListener('click', function() {
			selectedNum = (parseInt((selectedNum - 1)/ 5)) * 5;
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
	
	            // 클릭된 페이지 버튼의 스타일 변경
	            event.target.style.textDecoration = 'underline';
	            event.target.style.color = 'red';
	        }
	        loadPostTen();
	    });	
	    function loadPostTen() {
		    $.ajax({
				url : "PostBoard.do",
				data : {selectedNum : selectedNum},
				dataType : "json",
				success : function(res) {
					$(".postListCL").remove();
					for (let i = 0; i < 10; i++) {
						var a = "";
						a += "<tr class = \"postListCL\">";
						a += "<td class = \"postListNum\">"+ res[i].post_num + "</td>";
						a += "<td class = \"postListId\">"+ res[i].user_id + "</td>";
						a += "<td class = \"postListTitle\"><a href = \"#\">"+ res[i].post_title + "</a></td>";
						a += "<td class = \"postListViews\">"+ res[i].post_views + "</td>";
						a += "<td class = \"postListLikes\">"+ res[i].post_likes + "</td>";
						a += "<td class = \"postListDate\">"+ res[i].posted_at + "</td>";
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
	    		url : "PostNum.do",
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
	    // 로그인 안돼있으면 글작성 기능 막기
	    postUpdateA.addEventListener('click', function (){
	    	if('${user.user_id}' == "") {
	    		postUpdateA.href = "#";
	    		alert('로그인 후 이용 가능 합니다.');
	    	}
	    })
	    
	</script>
	<script>
	$(document).ready(function() {
	    // 클릭 이벤트 핸들러
	     $('#postTable').on('click', '.postListTitle a', function(e) {
	    	 e.preventDefault();
	     
	      // 클릭한 행의 post_num 값을 가져오기
	      var clickedPostNum = $(this).closest("tr").find(".postListNum").text();
	      // 데이터 저장
	      localStorage.setItem("clickedPostNum", clickedPostNum);
	      // 클릭한 게시글 띄워주고 조회수 1 늘려주는 ajax
	      $.ajax({
                type: 'POST',
                url: 'PostRead.do',
                data: {
                	clickedPostNum : clickedPostNum
                },
                success: function(response) {
                    console.log("성공");
                    window.location.href = 'Gopost_read.do';
                    // 성공적으로 응답을 받았을 때 수행할 작업
                },
                error: function(error) {
                	consol.log('실패');
                    console.error('Error:', error);
                    
                }
	      });
	    });
	  });
	</script>
	<!-- End Script -->
</body>

</html>