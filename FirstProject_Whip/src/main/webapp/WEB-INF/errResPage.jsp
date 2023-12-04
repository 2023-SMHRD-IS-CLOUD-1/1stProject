<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
    <!DOCTYPE html>
    <html lang="en">
    
    <head>
        <title>당근과채찍_핵심_심부름 수행인 목록</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.ico">
    
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <link rel="stylesheet" href="assets/css/errResPage.css">
    
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
                        <!-- 검색창 팝업 아이콘 -->
                        <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal"
                            data-bs-target="#templatemo_search">
                            <i class="fa fa-fw fa-search text-dark mr-2"></i>
                        </a>
                        <!--  마이페이지 아이콘 -->
                        <a class="nav-icon position-relative text-decoration-none" href="Gomypage1.do">
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
        <!-- 수정할 부분 -->
        <section class="container py-5">
            <br>
            <div id="postContent">
                <div id="PostBodyarea">
                    <br>
                    <span id="PostTitle">심부름 수행인 목록</span>
                    <div id="PostSearch" >
                            <select name="SearchCategory" id="SearchCategory">
                                <option value="err_name">제목</option>
                                <option value="user_id">작성자</option>
                            </select> 
                            <input type="text" id="searchInput" > 
                            <button id = "searchButton">검색</button>
                    </div>
                    <!-- 로그인 안되어 있으면 버튼 비활성화 하기 -->
                    <hr class="borderLine">
                    <table id="postTable" class="errResList">
                        <tr>
                            <th style="width: 180px;">심부름 번호</th>
                            <th style="width: 700px;">제목</th>
                            <th style="width: 30%;">수행인 신청자</th>
                            <th style="width: 10%;">신청일자</th>
                            <th style="width: 10%;">단가</th>
                            <th style="width: 10%;"></th>
                        </tr>
                        <tr>
                            <!-- 해당 심부름 번호 -->
                            <td>1</td>
                            <td><a href="">대신 등원해줄 사람 구합니다.</a></td>
                            <td>최성욱</td>
                            <td>23.12.03</td>
                            <td>100,000</td>
                            <td><button id="postUpdate">수락</button></td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">대신 등원해줄 사람 구합니다.</a></td>
                            <td>홍길돌</td>
                            <td>23.12.04</td>
                            <td>100,000</td>
                            <td><button id="postUpdate">수락</button></td>
                        </tr>
                    </table>
                    <table>
                    </table>
                    <hr class="borderLine">
                    <div id="pageNumber">
                        <button class="pageNumberA">&lt;&lt;</button>
                        <button class="pageNumberA">1</button>
                        <button class="pageNumberA">2</button>
                        <button class="pageNumberA">3</button>
                        <button class="pageNumberA">4</button>
                        <button class="pageNumberA">&gt;&gt;</button>
                    </div>
                </div>
            </div>
            
            </div>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
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
        // 1201 회원가입 중복이라 삭제함
        </script>
        <!-- 1201 로그인 모달창 script 변경 -->
            <script>
                // Wait for the DOM to be ready
                document.addEventListener("DOMContentLoaded", function () {
                    // Find the close-icon button
                    var closeIcon = document.getElementById("icon-close");
            
                    // Add a click event listener to the close-icon button
                    closeIcon.addEventListener("click", function () {
                        // Redirect to main.html
                        window.location.href = "GoerrListPage.do";
                    });
                });
            </script>
    </body>
    
    </html>