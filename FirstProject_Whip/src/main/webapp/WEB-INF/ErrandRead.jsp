<%@page import="com.smhrd.model.ErrandVO"%>
<%@page import="com.smhrd.model.ErrandDAO"%>
<%@page import="com.smhrd.model.UserVO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>당근과채찍_핵심_ErrRead</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <link rel="stylesheet" href="assets/css/read.css">
    <link rel="stylesheet" href="assets/css/main.css">

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
                            <a class="nav-link" href="GomanagementPost.do">고객센터</a>
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
        </div>
    </nav>
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
        </form>
        </div>
    

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
    <!-- 배너 끝 -->

    <!-- 수정할 부분 -->
    
    <section class="container py-5">
     <div id="postReadLayout">
        <div id="postReadHead">
        <br>
            <h1>${errand.err_name}</h1>
        </div>
        <div id = df>
        <div id="postReadNav">
            <span>작성자 ${errand.user_id }</span>
            <span>등록 일자 ${errand.created_at }</span>
            <a href="GoerrListPage.do">목록</a>
        </div>
        </div>
        <hr>
        <div id="postReadSect1">
            <span>${errand.err_content}</span><br><br><br>
            <span>단가 : ${errand.err_price}</span>
        </div>
        <hr>
           <div id="postReadSect2">
           
 
        </div>
	</section>
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
    <% HttpSession Session = request.getSession();
   		UserVO user = (UserVO)session.getAttribute("user");
    	ErrandVO errand = (ErrandVO)session.getAttribute("errand");
    	String sessionUserId = user.getUser_id();
		String errandUserId = errand.getUser_id();
		int err_num = errand.getErr_num();
		String name = errand.getErr_name();
		int price = errand.getErr_price();
		String content = errand.getErr_content();
    %>
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
                window.location.href = "GoErrandRead.do";
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
       $('#mypageAtage').attr("href","GoErrandRead.do");
       $('#joinBtn').attr('style', "display: ''");
    }else{
       $('#loginBtn').attr('style', "display: none")
       $('#logoutBtn').attr('style', "display: ''")
       $('#mypageAtage').attr("href","GoErrandRead.do");
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
    
<script>
    var sessionUserId = '<%= sessionUserId %>';
    var errandUserId = '<%= errandUserId %>';
    var err_num = '<%= err_num %>';
    var name = '<%= name%>';
    var price = '<%= price%>';
    var content = '<%= content%>';
    console.log('sessionUserId=', sessionUserId, 'errandUserId=', errandUserId, 'err_num=', err_num);

    if (sessionUserId === errandUserId) {

        var a = "";
        a += "<button id='modify'>수정</button>";
        a += "<button id='delete'>삭제</button>";
        $('#postReadSect2').append(a);

        $('#modify').on('click', function () {
            console.log('성공');

            var outputContainer = $("#postReadLayout");
            outputContainer.empty();
            var a = "";
            a += "<br><br>";
            a += "<label for='err_name'>제목:</label><br>";
            a += "<input type='text' id='err_name' placeholder='" + name + "'>";
            a += "<br><br>";
            a += "<div id='postReadSect1'>";
            a += "<label for='err_price'>단가:</label> <br>";
            a += "<input type='text' id='err_price' placeholder='" + price + "'>";
            a += "<br><label for='err_category_num'>카테고리:</label> <br>";
            a += "<select id='category' name ='category'>";
            a += "<option value='1'>청소/정리</option>";
            a += "<option value='2'>과외</option>";
            a += "<option value='3'>수리/설치</option>";
            a += "<option value='4'>인테리어</option>";
            a += "<option value='5'>기타집안일</option>";
            a += "<option value='6'>이사</option>";
            a += "</select>";
            a += "<br><label for='err_content'>내용:</label> <br>";
            a += "<textarea id='err_content' name='err_content' rows='3' cols='130' placeholder='" + content + "'></textarea><br>";
            a += "<button id='update'>수정하기</button>";
            a += "</div>";
            $("#postReadLayout").append(a);

            $("#update").on('click', function () {
                var err_name = $("#err_name").val();
                var err_content = $("#err_content").val();
                var err_category_num = $("#category").val();
                console.log(err_category_num);
                var err_price = $("#err_price").val();
                $.ajax({
                    type: 'POST',
                    url: 'Errmodify.do',
                    data: {
                        err_num: err_num,
                        err_name: err_name,
                        err_price: err_price,
                        err_category_num: err_category_num,
                        err_content: err_content
                    },
                    success: function (response) {
                        console.log(response);
                        alert('수정에 성공했습니다');
                        window.location.href = 'GoerrListPage.do';
                    },
                    error: function (error) {
                        console.error(error);
                    }
                });
            });

        });

        $('#delete').on('click', function () {
            console.log("성공");
            var clickedErrNum = '<%= err_num %>';
            console.log(clickedErrNum);
            $.ajax({
                type: 'POST',
                url: 'Errdelete.do',
                data: {
                    clickedErrNum: clickedErrNum
                },
                success: function (response) {
                    console.log(response);
                    alert('삭제에 성공했습니다');
                    window.location.href = 'GoerrListPage.do';
                },
                error: function (error) {
                    console.error(error);
                }
            });
        });
    }

    if (sessionUserId !== errandUserId) {
        $('#postReadNav').append("<button id='update'>신청</button>");

        $('#update').on('click', function() {
            console.log("성공");
            var clickedErrNum = '<%= err_num %>';
            var user_id = '<%= sessionUserId %>';
            console.log(clickedErrNum);
            console.log(user_id);
            $.ajax({
                type: 'POST',
                url: 'Err_match.do',
                data: {
                    clickedErrNum: clickedErrNum,
                    user_id: user_id
                },
                success: function(response) {
                    console.log(response);
                    alert('성공적으로 신청되었습니다.');
                },
                error: function(error) {
                    console.error('Error:', error);
                }
            });
        });
    }
</script>


</body>

</html>