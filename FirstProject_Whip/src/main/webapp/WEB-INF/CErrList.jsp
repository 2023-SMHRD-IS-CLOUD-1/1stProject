<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>당근과채찍_핵심_CErrList</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="./assets/css/custom.css">
    <link rel="stylesheet" href="./assets/css/CErrList.css">
    <link rel="stylesheet" href="./assets/css/postcss.css">

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
                        href="https://smhrd.or.kr/course/aicamp/">carrot&whip@smhrd.com</a>
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
		                <a href="Logout.do"><button id="logoutBtn" class="btn-open-modal nav-item loginbtn">로그아웃</button></a>
	                </div>
	                <div class="headDiv">
	                </div>
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
    <!-- 요청한 심부름 목록 -->
    <div class="container py-5" id="postContent" style="height: 800px !important;">
		<div id="postBodyArea">
			<span href="#" id="postTitle">◾ 요청한 심부름 목록</span>
            <div id="PostSearch" >
        </div>
			<div>
				<!-- <a href="Gopost_write.do" id="postUpdateA">글작성</a> -->
                <br>
			</div>
			<hr class="borderLine">
				<table id="postTable" align="center" class="errResList">
					<tr>
						<th style="width: 10%;">글 번호</th>
						<th style="width: 20%;">제목</th>
						<th style="width: 20%;">작성일자</th>
						<th style="width: 10%;">단가</th>
						<th style="width: 10%;">신청자 목록</th>
						<th style="width: 10%;">상태</th>
					</tr>
				</table>
			<hr class="borderLine">
		</div>
	</div>
        <!-- 신청한 심부름 목록 ----------------------------------------->
        <div class="container py-5" id="postContent" >
            <div id="postBodyArea">
                <span href="#" id="postTitle">◾ 신청한 심부름 목록</span>
                <div id="PostSearch" >
            </div>
                <div>
                    <br>
                </div>
                <hr class="borderLine">
                <table id="doErrTable" align="center" class="errResList">
                    <tr>
                    	<th style="width: 10%;">글 번호</th>
                        <th style="width: 20%;">제목</th>
                        <th style="width: 20%;">작성일자</th>
                        <th style="width: 10%;">단가</th>
                        <th style="width: 10%;"></th>
                        <th style="width: 10%;">상태</th>
                    </tr>
                </table>
                <hr class="borderLine">
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
                            CARROT&WHIP &copy; 2023 project
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
	<script>
	// 자기가 신청한 심부름 목록 검색 기능
            var searchTerm = '${user.user_id}';
            var outputContainer = $(".postListCL");
            outputContainer.empty();
            // AJAX 요청 보내기
            $.ajax({
                type: 'POST',
                url: 'Err_search2.do',
                data: {
                    searchTerm: '${user.user_id}'
                },
                success: function (response) {
                     var result = JSON.parse(response);
                     for (var i = 0; i < 10; i++) {
                    	 let outcome;
                    	 let MatchingViewBtn;
                    	if(result[i].err_status == 'y'){
                    		outcome = "완료";
                    		MatchingViewBtn = "<td></td>"
                    	}else{
                    		outcome = "진행 중";
                    		MatchingViewBtn = "<td><form method=\"get\" action=\"GoerrMatchingPage.do\"><input name = \"postNum\" type=\"hidden\" value=\""+result[i].err_num+"\"></input><input style=\"height: 36px\"class=\"btn btn-success\" type=\"submit\" value=\"보기\"></input></form></td>"
                    	}
                     	var a = "";
             			a += "<tr class = \"postListCL\">";
             			a += "<td class = \"postListNum\">"+ result[i].err_num + "</td>";
             			a += "<td class=\"postListTitle\"><a href=\"#\" >" + result[i].err_name + "</a></td>";
             			a += "<td class = \"postListDate\">"+ result[i].created_at + "</td>";
             			a += "<td class = \"postListMoney\">"+ result[i].err_price + "</td>";
                		a += MatchingViewBtn;
             			a += "<td class = \"postListMoney\">"+ outcome + "</td>";
             			a += "</tr>"
               			$("#postTable").append(a);
                     }
                },
                error: function (error) {
					console.log("에러")
                }
            });
	</script>
	<script>
		//loadPostTen();


      	// 심부름 글 상세보기 기능
		  $(document).ready(function() {
		    // 클릭 이벤트 핸들러
		     $('#postTable').on('click', '.postListTitle a', function(e) {
		    	 e.preventDefault();
		      // 클릭한 행의 err_num 값을 가져오기
		      var clickedErrNum = $(this).closest("tr").find(".postListNum").text();
		      // 데이터 저장
		      localStorage.setItem("clickedErrNum", clickedErrNum);
		      $.ajax({
                  type: 'POST',
                  url: 'Err_detail.do',
                  data: {
                  	clickedErrNum : clickedErrNum
                  },
                  success: function(response) {
                      window.location.href = 'GoErrandRead.do';
                      // 성공적으로 응답을 받았을 때 수행할 작업
                  },
                  error: function(error) {
                      console.error('Error:', error);
                  }
		      });
		    });
		  });
      	// 심부름 글 상세보기 기능
		  $(document).ready(function() {
		    // 클릭 이벤트 핸들러
		     $('#doErrTable').on('click', '.postListTitle a', function(e) {
		    	 e.preventDefault();
		      // 클릭한 행의 err_num 값을 가져오기
		      var clickedErrNum = $(this).closest("tr").find(".postListNum").text();
		      // 데이터 저장
		      localStorage.setItem("clickedErrNum", clickedErrNum);
		      $.ajax({
                  type: 'POST',
                  url: 'Err_detail.do',
                  data: {
                  	clickedErrNum : clickedErrNum
                  },
                  success: function(response) {
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
	<!-- 신청한 심부름을 찾아라!!!!!!! -->
<script>
    $.ajax({
        url: "Matchfind.do",
        dataType : 'json',
        success: function(res) {
            for(var i = 0; i<res.length/2; i++){
            	 let outcome;
            	 let MatchingViewBtn;
            	if(res[i+(res.length/2)].err_status == 'N'){
            		outcome = "대기 중";
            	}else if(res[i+(res.length/2)].err_status == 'R'){
            		outcome = "거절 됨";
            	}else{
            		outcome = "수락 됨"
            	}
            	
            	
            	var a = "";
    			a += "<tr class = \"postListCL\">";
    			a += "<td class = \"postListNum\">"+ res[i].err_num + "</td>";
    			a += "<td class = \"postListTitle\"><a href = \"#\" >"+ res[i].err_name + "</a></td>";
    			a += "<td class = \"postListDate\">"+ res[i].created_at + "</td>";
    			a += "<td class = \"postListMoney\">"+ res[i].err_price + "</td>";
    			a += "<td></td>";
    			a += "<td class = \"postListMoney\">"+ outcome + "</td>";
    			a += "</tr>"
      			$("#doErrTable").append(a);
            }
        },
        error: function (error) {
			console.log("에러")
        }
    });

</script>
	<!-- End Script -->
</body>

</html>