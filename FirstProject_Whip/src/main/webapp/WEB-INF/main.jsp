<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="com.smhrd.model.UserVO"%>
<%@page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>당근과채찍_핵심_MainPage</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <link rel="stylesheet" href="./assets/css/manage.css">
    <!-- 분리한 css 파일 경로-->
    <link rel="stylesheet" href="assets/css/main.css">

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
                        carrot&whip@smhrd.com</a>
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
                <div class="navbar align-self-center d-flex mainheader">
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
	                <!-- 로그인, 로그아웃, 회원가입 버튼 !!!!!! --------------------------->
	                <div class="headDiv">
		                <a href="#"><button class="btn-open-modal nav-item loginbtn" id ="loginBtn">로그인</button></a>
		                <a href="Logout.do"><button id="logoutBtn" class="btn-open-modal nav-item loginbtn">로그아웃</button></a>
	                </div>
	                <div class="headDiv">
		                <a href="#"><button id="joinBtn" class="btn-open-modal nav-item loginbtn">회원가입</button></a>
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
        <div class="carousel-inner">
            <!-- 스크롤창 첫번째 ------------------------------------------->
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-20 scrolll">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid scorll1" src="./assets/img/main2.png" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-success">
                                    심부름 플랫폼 <b>"HEF"</b> </h1>
                                <h3 class="h2" > 물건을 사거나 일상적인 업무를 처리하기에 시간이 <br> 부족하신가요?</h3>
                                <br>
                                <p class="mainText">
                                    HEF는 여러분에게 도움이 될 것입니다! 
                                    <br>우리 HEF는 믿을 수 있는 지역 심부름꾼들과 연결하여, 
                                    <br>편리하고 안전하게 다양한 심부름을 처리해드립니다. 
                                    <br>여러분은 할 일에 집중하고, 필요한 것들은 HEF에서 신속하게 해결하세요.
                                    <br>
                                    <br> HEF와 함께라면, 바쁜 일상에서도 불편함 없이 생활할 수 있습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>.
            <!-- 스크롤 창 두번째 --------------------------------------------------------->
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-20 scrolll">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/help.png" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="scrollSub">내가 하기 귀찮은 일!<br>심부름 대신
                                    해드려요</h1>
                                <h3 class="h2" >일상의 부담에서 해방되세요 !! </h3>
                                <br>
                                <p class="mainText">
                                   귀찮은 일들은 더 이상 걱정하지 마시고, HEF에게 맡겨주세요. 
                                   <br> 신속하고 효율적인 서비스를 제공해드리는 HEF로 여러분의 불편을 최소화하고, 
                                   <br> 여러분이 편안하게 쉴 수 있도록 최선을 다하겠습니다. 
                                   <br>
                                   <br>하고 싶지 않은 일들은 제게 맡기고, 여유로운 시간을 즐기세요!
                                   <br> 당신의 편안한 삶을 위해 언제든지 HEF로 오세요!
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 스크롤 창 세번째 ----------------------------------------------------------------->
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/main3.png" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="scrollSub" >동네 이웃끼리
                                    서로 도와주고<br>수익도 창출해보세요</h1>
                                <h3 class="h2" > 우리 동네에서 서로 도우며 함께 성장하세요! </h3>
                                <br>
                                <p class="mainText">
                                    심부름은 이웃 간 소통의 시작입니다. 
                                    <br>저희 플랫폼을 통해 신뢰성 있는 이웃들끼리 심부름을 요청 수행하고, 
                                    <br>동시에 수익도 창출해보세요. 
                                    <br>HEF에서 심부름을 요청하고 수행하면서, 
                                    동네 커뮤니티를 더욱 활기차게 !
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1"  >HEF 인기 서비스 </h1>
            </div>
        </div>
        <div class="wrapper">
        <div id="table">
            <div class="r1">
                <a href="#"><img src="./assets/img/1.png" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">ex) 정리수납, 폐기물처리</h5>
                <p class="text-center"><button class="categoryBtn" data-index="1">청소/정리</button></p>
            </div>
            <div class="r2">
                <a href="#"><img src="./assets/img/2.png" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">ex) 비지니스 영어 과외</h2>
                <p class="text-center"><button class="categoryBtn" data-index="2">과외</button></p>
            </div>
            <div class="r3">
                <a href="#"><img src="./assets/img/3.png" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">ex) 에어컨 설치 및 수리</h2>
                <p class="text-center"><button class="categoryBtn" data-index="3">수리/설치</button></p>
            </div>
            <div class="r4">
                <a href="#"><img src="./assets/img/4.png" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">ex) 싱크대 교체</h5>
                <p class="text-center"><button class="categoryBtn" data-index="4">인테리어/시공</button></p>
            </div>
            <div class="r5">
                <a href="#"><img src="./assets/img/5(1).png" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">ex) 벌레 퇴치</h5>
                <p class="text-center"><button class="categoryBtn" data-index="5">기타 집안일</button></p>
            </div>
            <div class="r6">
                <a href="#"><img src="./assets/img/6.png" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">ex) 용달/화물 운송</h5>
                <p class="text-center"><button class="categoryBtn" data-index="6">이사</button></p>
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
    // 닫히긴 하지만 연달아 실행시 modal만 켜지는 현상이 발생 ... modal body는 뜨지 않음 >> 해결
        // Wait for the DOM to be ready
        document.addEventListener("DOMContentLoaded", function () {
            // Find the close-icon button
            var closeIcon = document.getElementById("icon-close");
    
            // Add a click event listener to the close-icon button
            closeIcon.addEventListener("click", function () {
                // Redirect to main.html
                window.location.href = "Gomain.do";
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
       //loginBtn.style.display ='';
       //logoutBtn.style.display ='none';
       $('#loginBtn').attr('style', "display: ''")
       $('#logoutBtn').attr('style', "display: none")
       $('#mypageAtage').attr("href","Gomain.do");
       $('#joinBtn').attr('style', "display: ''");
    }else{
       $('#loginBtn').attr('style', "display: none")
       $('#logoutBtn').attr('style', "display: ''")
       $('#mypageAtage').attr("href","Gomypage1.do");
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
    <script>
    $(document).ready(function() {
    	  $('.categoryBtn').on('click', function() {
    	    var index = $(this).data('index');
    	    $('#table').empty();

    	    if (index == 1) {
    	      $('#table').append(`
    	        <div class="r7">
    	          <a href="#"><img src="./assets/img/clean1.jpg" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">정리 수납</h5>
    	        </div>
    	        <div class="r8">
    	          <a href="#"><img src="./assets/img/clean4.jpg" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">입주 청소</h5>
    	        </div>
    	        <div class="r9">
    	          <a href="#"><img src="./assets/img/clean5.jpg" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">주거 청소</h5>
    	        </div>
    	        <div>
  	          <h4>지금 한번 요청해보세요!</h4>
  	          <h5>click <a href="GoerrPage.do" id="gogo"> here  </a>=3</h5>
  	        </div>
    	      `);
    	    } else if (index == 2) {
    	      $('#table').append(`
    	        <div class="r7">
    	          <a href="#"><img src="./assets/img/study1.jpg" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">수학 과외</h5>
    	        </div>
    	        <div class="r8">
    	          <a href="#"><img src="./assets/img/study2.jpeg" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">영어 과외</h5>
    	        </div>
    	        <div class="r9">
    	          <a href="#"><img src="./assets/img/study3.png" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">국어 과외</h5>
    	        </div>
    	        <div>
  	          <h4>지금 한번 요청해보세요!</h4>
  	          <h5>click <a href="GoerrPage.do" id="gogo"> here  </a>=3</h5>
  	        </div>
    	      `);
    	    } else if (index == 3) {
    	      $('#table').append(`
    	        <div class="r7">
    	          <a href="#"><img src="./assets/img/clean2.png" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">에어컨 수리</h5>
    	        </div>
    	        <div class="r8">
    	          <a href="#"><img src="./assets/img/clean3.jpg" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">세탁기 수리</h5>
    	        </div>
    	        <div class="r9">
    	          <a href="#"><img src="./assets/img/tv.jpg" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">TV 수리</h5>
    	        </div>
    	        <div>
  	          <h4>지금 한번 요청해보세요!</h4>
  	          <h5>click <a href="GoerrPage.do" id="gogo"> here  </a>=3</h5>
  	        </div>
    	      `);
    	    } else if (index == 4) {
    	      $('#table').append(`
    	        <div class="r7">
    	          <a href="#"><img src="./assets/img/interior1.png" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">도배</h5>
    	        </div>
    	        <div class="r8">
    	          <a href="#"><img src="./assets/img/interior2.jpg" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">거실 인테리어</h5>
    	        </div>
    	        <div class="r9">
    	          <a href="#"><img src="./assets/img/interior4.jpg" class="newimg"></a>
    	          <h5 class="text-center mt-3 mb-3">주방 인테리어</h5>
    	        </div>
    	        <div>
  	          <h4>지금 한번 요청해보세요!</h4>
  	          <h5>click <a href="GoerrPage.do" id="gogo"> here  </a>=3</h5>
  	        </div>
    	      `);
    	    } else {
    	      $('#table').append(`
    	        <div>
    	          <h4>지금 한번 요청해보세요!</h4>
    	          <h5>click <a href="GoerrPage.do" id="gogo"> here  </a>=3</h5>
    	        </div>
    	      `);
    	    }
    	  });
    	});


    </script>
</body>

</html>