<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>HEF - Join</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <link rel="stylesheet" href="assets/css/join.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">

    <!-- Load map styles -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin="" />
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
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
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

                        <li class="nav-item">
                            <a class="nav-link" href="GoerrListPage.do" style="font-family: 'Black Han Sans', sans-serif;
                            font-family: 'IBM Plex Sans KR', sans-serif;">심부름</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Gopost.do" style="font-family: 'Black Han Sans', sans-serif;
                            font-family: 'IBM Plex Sans KR', sans-serif;">커뮤니티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="GoNaNmanagementPost.do" style="font-family: 'Black Han Sans', sans-serif;
                            font-family: 'IBM Plex Sans KR', sans-serif;">고객센터</a>
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
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                     <!--마이페이지 아이콘-->
                <a class="nav-icon position-relative text-decoration-none" href="Gomypage1.do">
                    <i class="fa fa-fw fa-user text-dark mr-3"></i>
                </a>
                <!--로그인 버튼 !!!!!! --------------------------->
                <a href="#"><button class="btn-open-modal nav-item loginbtn">로그인</button></a>
                <!-- 회원가입 버튼!!!! ------------------------- -->
                <!-- <a href="join.html"><button id="joinBtn" class="btn-open-modal nav-item loginbtn">회원가입</button></a> -->
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
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
            <h1 class="h2">HEF에 오신 것을 환영합니다 :)</h1>
        </div>
    </div>



    <!-- Start Contact -->
    <div class="container py-5">
        <div class="row py-5">
            <div style="height:500px;">
                <form action="Join.do" method="post" onsubmit="return test()">
                    <table class="col-md-9 m-auto">
                        <tr class="h100">
                            <td colspan="2" align="center"><h2>회원가입</h2></td>
                            <td ></td>
                            <td ></td>
                            <td ></td>
                        </tr>
                        <tr class="h50">
                            <td class="w7000 line2" align="center" >ID</td>
                            <td class="w3100 line1">
                                <input id="input021" type="text" name="user_id" placeholder="아이디" ></input>
                                 <button id="idCheck" type="button">중복체크</button>
                                 <br></br>
                                <span id="idUniqueCheck"></span>
                            </td>
                            <td class="w240"></td>
                            <td></td>
                        </tr>
                        <tr class="h50">
                            <td class="line2" align="center" >PW</td>
                            <td class="line1">
                                <input id="input022" type="password" name="user_pw" placeholder="비밀번호" ></input>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h50">
                            <td class="line2"></td>
                            <td class="line1">
                                <input id="input023" type="password" name="user_pw_check" placeholder="비밀번호 확인" ></input>
                                <br></br>
                                <span id=pwCheck></span>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h50">
                            <td class="line2" align="center" >이름</td>
                            <td class="line1">
                                <input id="input024" type="text" name="user_name" placeholder="이름" ></input>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h50">
                            <td class="line2" align="center" >닉네임</td>
                            <td class="line1">
                                <input id="input025" type="text" name="user_nick" placeholder="닉네임" ></input>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h50">
                            <td class="line2" align="center" >주소</td>
                            <td class="line1">
                                <input id="input026" type="text" name="user_addr1" placeholder="주소"></input>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h50">
                            <td class="line2" align="center">주민등록번호</td>
                            <td class="line1">
                                <input id="input027" type="text" name="user_jumin" placeholder="주민등록번호" ></input>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h50">
                            <td class="line2" align="center" >성별</td>
                            <td class="line1">
                                <select id="select001" name="user_gender">
                                    <option value="none">-------성별선택-------</option>
                                    <option value="man">남성</option>
                                    <option value="women">여성</option>
                                </select>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h50">
                            <td class="line2" align="center" >전화번호</td>
                            <td class="line1">
                                <input id="input028"type="text" name="user_phone" placeholder="전화번호" ></input>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="h100">
                            <td></td>
                            <td>
                                <br>
                                <button id="btn1" type="submit"  class="btn btn-success btn-lg px-3 w120 right" >가입하기</button>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <!-- End Contact -->


    <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">
            </div>

        </div>

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
        // 1201 회원가입 중복으로 인해 삭제함
    </script>
        <!-- 1201 로그인 모달 닫기 script 수정 -->
        <script>
            // Wait for the DOM to be ready
            document.addEventListener("DOMContentLoaded", function () {
                // Find the close-icon button
                var closeIcon = document.getElementById("icon-close");
        
                // Add a click event listener to the close-icon button
                closeIcon.addEventListener("click", function () {
                    // Redirect to main.html
                    window.location.href = "Gojoin.do";
                });
            });
        </script>
    <script>
        function test() {
            let idNum = idTest();
            if (idNum == 0) {
                return false;
            }
            let idSameNum = idSameTest();
            if (idSameNum == 0) {
                return false;
            }
            let pwNum = pwTest();
            if (pwNum == 0) {
                return false;
            }
            let pwCheckNum = pwCheckTest();
            if (pwCheckNum == 0) {
                return false;
            }
            let pwSameNum = pwSameTest();
            if (pwSameNum == 0) {
                return false;
            }
            let nameNum = nameTest();
            if (nameNum == 0) {
                return false;
            }
            let nickNum = nickTest();
            if (nickNum == 0) {
                return false;
            }
            let addrNum = addrTest();
            if (addrNum == 0) {
                return false;
            }
            let juminNum = juminTest();
            if (juminNum == 0) {
                return false;
            }
            let genderNum = genderTest();
            if (genderNum == 0) {
                return false;
            }
            let phoneNum = phoneTest();
            if (phoneNum == 0) {
                return false;
            }
            return true;
        }
        function idTest() {
            if ($('#input021').val() == "") {
                alert('아이디를 입력해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        function pwTest() {
            if ($('#input022').val() == "") {
                alert('비밀번호를 입력해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        function nameTest() {
            if ($('#input024').val() == "") {
                alert('이름을 입력해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        function nickTest() {
            if ($('#input025').val() == "") {
                alert('닉네임을 입력해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        function addrTest() {
            if ($('#input026').val() == "") {
                alert('주소를 입력해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        function juminTest() {
            if ($('#input027').val() == "") {
                alert('주민등록번호를 입력해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        function phoneTest() {
            if ($('#input028').val() == "") {
                alert('전화번호를 입력해주세요');
                return 0;
            } else {
                return 1;
            }
        	}
        function genderTest() {
            if ($("#select001 :selected").val() == 'none') {
                alert('성별을 선택해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        function pwCheckTest(){
            if ($('#input023').val() == '') {
                alert('비밀번호를 확인해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        function pwSameTest(){
           	if($('#pwCheck').html()!=''){
                alert('비밀번호가 일치하지 않습니다');
               	return 0;
           	}else {
                return 1;
            }
        }
        function idSameTest(){
           	if($('#idUniqueCheck').html()!="사용 가능한 아이디입니다"){
                if($('#idUniqueCheck').html()==""){
	           		alert('아이디 중복확인을 해주세요');
                }else{
	           		alert('중복된 아이디 입니다');
                }
               	return 0;
           	}else {
                return 1;
            }
        }
    </script>
    <script>
    $('#input021').on('keyup', function(){
    	$('#idUniqueCheck').html("")
    })
    $('#input022').on('keyup', function(){
	    if ($('#input022').val() != $('#input023').val()) {
	    	$('#pwCheck').html('비밀번호가 일치하지 않습니다');
	    }else{
	    	$('#pwCheck').html('');
	    }
    })
    $('#input023').on('keyup', function(){
	    if ($('#input022').val() != $('#input023').val()) {
	    	$('#pwCheck').html('비밀번호가 일치하지 않습니다');
	    }else{
	    	$('#pwCheck').html('');
	    }
    })
    </script>
    <script>
    $('#idCheck').on('click', function(){
    	console.log("rkrkrk");
        $.ajax({
            url : "IdUniqueCheck.do",
            dataType : "JSON",
            data : {
                userId : $('#input021').val()
            },
            success : function(res){
            	console.log("송공");
                if(res.k == "true"){
                    $('#idUniqueCheck').html('중복된 아이디입니다');
                }else{
                    $('#idUniqueCheck').html('사용 가능한 아이디입니다');
                }
            },
			error : function(result) {
            	console.log("공");
			}
        })
    })
    </script>
</body>

</html>