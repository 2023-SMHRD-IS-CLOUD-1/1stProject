<%@page import="com.smhrd.model.ManageVO"%>
<%@page import="com.smhrd.model.ErrandVO"%>
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
                        carrot&whip@smhrd.com</a>
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
        </div>
    </nav>
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
            <br>
            <br>
            <div id="postReadHead">
                <h1>${Manage.management_post_title}</h1>
            </div>
            <div id="postReadNav">
                <span>작성자 ${Manage.management_post_id}</span>
                <span>등록 일자 ${Manage.posted_at}</span>
                
                <a href="GomanagementPost.do">목록</a>
            </div>
            <hr>
            <div id="postReadSect1">
                <span>${Manage.management_post_content}</span><br>
            </div>
            <hr>
          	 <div id="postReadSect2">
           <table  id ="tablebtn">
           
           </table>
           
          
          
        </div>
	</section>
    <!-- End Section -->
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
            location.herf = mainLink;
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
	    $(document).ready(function() {
	        var post_num = ${Manage.management_post_num};

	        $("#modify").on("click", function(e) {
	            var outputContainer = $("#postReadLayout");
	            outputContainer.empty();

	            var a = "";
	            a += "<br><br>";
	            a += "<label for='management_post_title'>제목:</label><br>";
	            a += "<input type='text' id='management_post_title' placeholder='수정할 제목을 입력해주세요'>";
	            a += "<br><br>";
	            a += "<div id='postReadSect1'>";
	            a += "<label for='management_post_content'>내용:</label> <br>";
	            a += "<textarea id='management_post_content' name='management_post_content' rows='3' cols='130' placeholder='수정할 내용을 입력해주세요'></textarea><br>";
	            a += "<button id='update'>수정하기</button>";
	            a += "</div>";

	            $("#postReadLayout").append(a);

	            // 수정된 부분: 클릭 이벤트 핸들러 내부에서 변수를 정의하도록 변경
	            $("#update").on("click", function(e) {

	                // 수정된 부분: 사용자가 입력한 값을 가져와 변수에 할당
	                var management_post_title = $("#management_post_title").val();
	                var management_post_content = $("#management_post_content").val();
	                $.ajax({
	                    type: 'POST',
	                    url: 'Manage_modify.do',
	                    data: {
	                        management_post_title: management_post_title,
	                        management_post_content: management_post_content,
	                        post_num: post_num
	                    },
	                    success: function(response) {
	                        
	                        alert("수정이 완료되었습니다.");
	                        window.location.reload(); 
	                        window.location.href = 'GomanagementPost.do';
	                        
	                    },
	                    error: function(error) {
	                        console.error(error);
	                    }
	                });
	            });
	        });
	    });

    </script>
    <%  HttpSession Session = request.getSession();
    ManageVO Manage = (ManageVO)Session.getAttribute("Manage");
    String manage_id = Manage.getManagement_post_id();
    int manage_num = Manage.getManagement_post_num();
    String manage_reply = Manage.getManagement_post_relpy();
    %>
    
   <script>
   var user_id = '${user.user_id}';
   var manage_id = '<%= manage_id%>';
   var manage_num = '<%= manage_num%>';
   var manage_reply = '<%= manage_reply %>';
	
   if(manage_reply === 'y'){
	   var manage_answer = '${Manage.management_answer}';
       var b = "";
       b += "==================================================================================================================================";
       b += "<label for='answer_content'>답변 내용:</label> <br>";
       b += "<p>" + manage_answer + "</p>";
       $("#postReadLayout").append(b);
   }
   if (user_id === manage_id) {
	   if(manage_reply === 'n'){
       var a = "";
       a += "<tr>";
       a += "<td>";
       a += "<button id='modify'>수정</button>";
       a += "<button id='delete'>삭제</button>";
       a += "</td>";
       a += "</tr>";
       $('#tablebtn').append(a);
       
       $('#delete').on('click', function () {
           $.ajax({
               type: 'POST',
               url: 'Mandelete.do',
               data: {
            	   manage_num: manage_num
               },
               success: function (response) {
                   alert('삭제에 성공했습니다');
                   window.location.href = 'GomanagementPost.do';
               },
               error: function (error) {
                   console.error(error);
               }
           });
       });
	   }
	   
   }
   
	
   if (user_id === 'admin') {
       if (manage_reply === 'n') {
           var a = "";
           a += "<tr>";
           a += "<td>";
           a += "<button id='answer'>답변하기</button>";
           a += "</td>";
           a += "</tr>";
           $('#tablebtn').append(a);

           $('#answer').on('click', function () {
               $(this).hide();

               var b = "";
               b += "==================================================================================================================================";
               b += "<label for='answer_content'>답변 내용:</label> <br>";
               b += "<input type='text' id='answer_content' placeholder='답변의 내용을 입력해주세요'>";
               b += "<button id='update'>답변등록</button>";
               $("#postReadLayout").append(b);

               // 답변 등록 버튼 클릭 시
               $('#postReadLayout').on('click', '#update', function () {
                   var answerContent = $("#answer_content").val();

                   // 사용자가 입력한 값을 변수에 저장
                   $.ajax({
                       type: 'POST',
                       url: 'Manage_answer.do',
                       data: {
                           answerContent: answerContent,
                           manage_num: manage_num
                       },
                       success: function (response) {
                           // 서버로부터의 응답에 따른 처리
                           alert('답변이 성공적으로 등록되었습니다.');
                           // 추가로 필요한 로직 작성
                           $("label[for='answer_title'], label[for='answer_content'], #update").hide();
                           $("#answer_title, #answer_content").hide();
                           window.location.href = 'GomanagementPost.do';
                       },
                       error: function (error) {
                           // 서버 통신 오류에 따른 처리
                           console.error('답변 등록 중 오류 발생:', error);
                           // 추가로 필요한 로직 작성
                       }
                   });
               });
           });
       } 
       
   }

</script>










  
</body>

</html>