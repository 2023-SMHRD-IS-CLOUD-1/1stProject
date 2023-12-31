<!-- 수정1, 수정2 있음 -->
<!-- 변경필요1, 변경필요2 있음 -->
<!-- 프로젝트 템플릿 파일 위치대로 파일명 변경 -->

<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>당근과채찍_핵심_myPage2</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <link rel="stylesheet" href="./assets/css/css1.css">
    <link rel="stylesheet" href="assets/css/main.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">

    <!-- Load map styles -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin="" />
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
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">carrot&whip@company.com</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="Gomain.do" style="font-family: 'Black Han Sans', sans-serif;">
                HEF
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
           <!--             <li class="nav-item">
                            <a class="nav-link" href="index.html" style="font-family: 'Black Han Sans', sans-serif;
                            font-family: 'IBM Plex Sans KR', sans-serif;">?</a>
                        </li>  -->
                        <li class="nav-item">
                            <a class="nav-link" href="GoerrListPage.do" >심부름</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Gopost.do" >커뮤니티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="GoNaNmanagementPost.do" >고객센터</a>
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
		                <a href="Logout.do"><button id="logoutBtn" class="btn-open-modal nav-item loginbtn">로그아웃</button></a>
	                </div>
	                <div class="headDiv">
	                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->
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


    <!-- Start Content Page -->
    <div class="container-fluid bg-light py-5 ">
        <div class="col-md-6">
            <h1 class="h1 mypageBanner">마이페이지</h1>
        </div>
    </div>



    <!-- Start Contact --> 
    <!-- 수정2 시작 -->
    <div class="container py-5">
        <div class="row py-5">
            <div style="height:700px;">
                <form action="Gomain.do" method="post">
                    <table class="col-md-9 m-auto">
                        <tr class="h80">
                            <td colspan="2"><h2>회원정보수정</h2></td>
                            <td ></td>
                            <td ></td>
                            <td ></td>
                        </tr>
                        <tr class="h80">
                            <td class="w300 ">비밀번호</td>
                            <td class="w240 ">
                                <input id="input001" type="password" name="user_pw" value=""></input>
                            </td>
                            <td class="w300"></td>
                            <td></td>
                        </tr>
                        <tr class="h100">
                            <td class="">비밀번호확인</td>
                            <td id="td002" class="">
                                <input id="input002" type="password" name="user_pw" value=""></input>
                                <div id = "div005"><h6 id="pw002">비밀번호 일치하지 않음</h6></div>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h80">
                            <td class="">이름</td>
                            <td class="">
                                <input id="input003" type="text" name="user_name" value=""></input>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h80">
                            <td class="">닉네임</td>
                            <td class="">
                                <input id="input004" type="text" name="user_nick" value=""></input>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h80">
                            <td class="">전화번호</td>
                            <td class="">
                                <input id="input005" type="text" name="user_phone" value=""></input>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h80">
                            <td class="">주소</td>
                            <td class="">
                                <input id="input006" type="text" name="user_addr1" value=""></input>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h80">
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-success btn-lg px-3 w100 right">수정</button>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <!-- 수정2 끝 -->
    <!-- End Contact -->


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

    <!-- 수정3 시작 -->
    <script>
        // 회원정보를 불러와서 input태그에 입력 시작
        // 사용자의 회원정보를 불러와서 태그의 value값을 변경 start
        $('#input003').val('${user.user_name}');
        $('#input004').val('${user.user_nick}');
        $('#input005').val('${user.user_phone}');
        $('#input006').val('${user.user_addr1}');
        // 사용자의 회원정보를 불러와서 태그의 value값을 변경 end

        // 회원정보를 불러와서 input태그에 입력 끝
        
        // 비밀번호와 비밀번호 확인이 같은지 확인 시작
        let pw_check = function(){
            if($('#input001').val()==$('#input002').val()){
                $('#pw002').html('비밀번호 일치함');
            }else{
                $('#pw002').html('비밀번호 일치하지 않음');
            }
        }
        $('#input001').on("keyup", pw_check)
        $('#input002').on("keyup", pw_check)
        // 비밀번호와 비밀번호 확인이 같은지 확인 끝

        
    </script>
    <!-- 수정3 끝 --> 

</body>

</html>