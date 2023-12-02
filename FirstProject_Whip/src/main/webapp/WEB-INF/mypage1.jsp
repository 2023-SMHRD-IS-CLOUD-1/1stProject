<!-- 수정1, 수정2, 수정3 있음-->
<!-- 변경필요1, 변경필요2 있음-->

<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">

<head>
    <title>당근과채찍_핵심_myPage1</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">

    <!-- Load map styles -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
        integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
        crossorigin="" />
    <!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
    <!-- 수정1 시작-->
    <link rel="stylesheet" href="./assets/css/css1.css">
    <!-- 수정1 끝-->
    <style>

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

            <a class="navbar-brand text-success logo h1 align-self-center" href="Gomain.do"
                style="font-family: 'Black Han Sans', sans-serif;">
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
     <!--                   <li class="nav-item">
                            <a class="nav-link" href="index.html" style="font-family: 'Black Han Sans', sans-serif;
                            font-family: 'IBM Plex Sans KR', sans-serif;">?</a>
                        </li> -->
                        <li class="nav-item">
                            <a class="nav-link" href="GoerrListPage.do">심부름</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Gopost.do">커뮤니티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="GoNaNmypage1userPost.do">고객센터</a>
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
                    <!-- 검색 아이콘 ------------------>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal"
                        data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <!-- 로그인 아이콘 ----------------------->
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                    </a>
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
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="심부름을 요청하고 수행해보시겠어요?">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>


    <!-- Start Content Page -->
    <div class="container-fluid bg-light py-5">
        <div class="col-md-6">
            <h1 class="h1">마이페이지</h1>
        </div>
    </div>



    <!-- Start Contact -->
    <!-- 수정2 시작 -->
    <div class="container py-5">
        <div class="row py-5">
            <div>
                <table>
                    <tr>
                        <td class="w1000">
                            <table class="col-md-9 m-auto">
                                <tr class="h70">
                                    <td colspan="2">
                                        <h2>프로필</h2>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="h70">
                                    <td class="w250">이름</td>
                                    <td id="user_name" class="w300">홍길동</td>
                                    <td class="w100"></td>
                                </tr>
                                <tr class="h70">
                                    <td class="">닉네임</td>
                                    <td id="user_nick" class="">홍길동</td>
                                    <td class=""></td>
                                </tr>
                                <tr class="h70">
                                    <td class="">생년월일</td>
                                    <td id="user_birthdate" class="">1999년 0월 1일</td>
                                    <td></td>
                                </tr>
                                <tr class="h70">
                                    <td class="">성별</td>
                                    <td id="user_gender" class="">남</td>
                                    <td></td>
                                </tr>
                                <tr class="h70">
                                    <td class="">전화번호</td>
                                    <td id="user_phone" class="">010-1234-5678</td>
                                    <td></td>
                                </tr>
                                <tr class="h70">
                                    <td class="">평점</td>
                                    <td id="user_level" class="">9.9</td>
                                    <td></td>
                                </tr>
                                <tr class="h100">
                                    <td></td>
                                </tr>
                                <tr class="h70">
                                    <td><h2>개인정보</h2></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="h70">
                                    <td class="">주민번호</td>
                                    <td id="user_jumin" class=""><h5 id="rrn001">******-*******</td>
                                    <td><button id="btn006" class="btn btn-success btn-lg px-3 w150"><h6 class="noMargin">주민번호 확인</h6></button></button></td>
                                </tr>
                                        <form action = "Certification.do" id="myForm" enctype="multipart/form-data">
                                <tr class="h70">
                                    <td class="">본인확인여부</td>
                                    <td id="user_id_check" class="">예</td>
                                    <td></td>
                                </tr>
                                	<tr class="h70">
                                    <td class="">주민등록확인</td>	
                                	<td>
                                            <input type="file" id="fileInput" name="file" accept=".jpg, .jpeg, .png">
                                    </td>
                                    <td>
                                            <input id="certification" type="button" value="주민등록증제출" class="btn btn-success btn-lg px-3 w150" class="action" onclick="uploadFile()">
                                    </td>
                                </tr>
                                        </form>
                                <tr class="h70">
                                    <td class="">주소</td>
                                    <td id="user_addr1" class="">광주광역시 남구 송암로60</td>
                                <tr class="h70">
                                    <td class="w100">
                                    <td><button id="btn004" type="submit"
                                            class="btn btn-success btn-lg px-3 w250 right">프로필/개인정보수정</button></td>
                        </td>
                    </tr>
                </table>
                </td>
                <td class="w150">
                    <table>
                        <tr class="h100">
                            <td><button id="btn001" type="submit" class="btn btn-success btn-lg px-3 w300">
                                    <h3 class="noMargin">작성 글 목록</h3>
                                </button></td>
                        </tr>
                        <tr class="h100">
                            <td><button id="btn002" type="submit" class="btn btn-success btn-lg px-3 w300">
                                    <h3 class="noMargin">작성 댓글 목록</h3>
                                </button></td>
                        </tr>
                        <tr class="h100">
                            <td><button id="btn003" type="submit" class="btn btn-success btn-lg px-3 w300">
                                    <h3 class="noMargin">심부름 목록</h3>
                                </button></td>
                        </tr>
                        <tr class="h500">
                            <td></td>
                        </tr>
                    </table>
                </td>
                </tr>
                </table>

            </div>
        </div>
    </div>
    <!-- 수정2 끝 -->
    <!-- End Contact -->


   <!-- Start Footer -->
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

    <!-- 수정3 시작 -->
    <script>
        // 사용자의 회원정보를 불러와서 태그의 html값을 변경 start
        
        let user_name = "테스트김김"
        let user_birthdate = "테스트1999년 1월 1일"
        let user_gender = "테스트남"
        let user_nick = "테스트바람"
        let user_jumin = "테스트990101-1234123"
        let user_phone = "테스트010-2323-2323"
        let user_addr1 = "테스트광주 송암로 77번길 77"
        let user_level = "테스트9.9"
        let user_id_check = "테스트예"
        
        // window.onload : 스크립트가 실행될 때 한 번 실행됨(비동기 통신)
        window.onload = function(){
            $.ajax({
                // 변경필요1 url 값 변경 필요
                url : "selectUser.do",
                dataType : JSON,
                success : function(res){
                    user_name = res.user_name;
                    user_birthdate = res.user_birthdate;
                    user_gender = res.user_gender;
                    user_nick = res.user_nick;
                    user_jumin = res.user_jumin;
                    user_phone = res.user_phone;
                    user_addr1 = res.user_addr1;
                    user_level = res.user_level;
                    user_id_check = res.user_id_check;
                }
            })
        }
        
        $('#user_name').html(user_name);
        $('#user_birthdate').html(user_birthdate);
        $('#user_gender').html(user_gender);
        $('#user_nick').html(user_nick);
        $('#user_phone').html(user_phone);
        $('#user_addr1').html(user_addr1);
        $('#user_level').html(user_level);
        $('#user_id_check').html(user_id_check);
        // 사용자의 회원정보를 불러와서 태그의 html값을 변경 end

        // 주민번호의 경우 버튼을 클릭해야 보이고 버튼태그 영역에서 벗어나면 가려지게 설정 start
        $('#btn006').on("click", function(){$('#rrn001').html(user_jumin)})
        $('#btn006').on("mouseout", function(){$('#rrn001').html("******-*******")})
        // 주민번호의 경우 버튼을 클릭해야 보이고 버튼태그 영역에서 벗어나면 가려지게 설정 end
        


        // 버튼이 클릭되면 다른 페이지로 이동 start
        // 변경필요2 링크 주소 변경 필요
        let link1 = 'GoNaNmypage1userPost.do';
        let link2 = 'GoNaNmypage1userComment.do';
        let link3 = 'GoNaNmypage1userErr.do';
        let link4 = 'Gomypage2.do';
        let link5 = 'GoNaNmypage1userIdCheck.do';
        
        $('#btn001').on("click", function(){location.href = link1;})
        $('#btn002').on("click", function(){location.href = link2;})
        $('#btn003').on("click", function(){location.href = link3;})
        $('#btn004').on("click", function(){location.href = link4;})
        $('#btn005').on("click", function(){location.href = link5;})
        // 버튼이 클릭되면 다른 페이지로 이동 end
        

    </script>
    <!-- 수정3 끝 -->
             <!-- Flask 통신 구문 코드  -->
         <script>
         
    /*  $("#myForm").submit(function (e) {
    	    e.preventDefault();  // 기본 폼 동작 방지
    	    var formData = new FormData(this);
			console.log("제발제발")
    	    $.ajax({
    	        url: "http://127.0.0.1:9000/upload",
    	        type: "POST",
    	        data: formData,
    	        contentType: false,
    	        processData: false,
    	        success: function (res) {
    	            console.log("Flask 통신 성공!!");
    	            console.log("결과값 >>", res);
    	        },
    	        error: function (err) {
    	            console.log("에러 발생 >>", err);
    	        }
    	    });
    	}); */
    	 function uploadFile() {
            var formData = new FormData(document.getElementById('myForm'));
			
            fetch('http://127.0.0.1:9000/upload', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                console.log('Flask 통신 성공!!');
                console.log('결과값 >>', data);
                console.log(data['id']);
                console.log(data['name']);
            })
            .catch(error => {
                console.error('에러 발생 >>', error);
            });
        }
	</script>
</body>

</html>