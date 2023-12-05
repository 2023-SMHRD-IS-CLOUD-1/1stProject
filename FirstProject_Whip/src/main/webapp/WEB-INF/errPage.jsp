<!-- 수정1, 수정2, 수정3 있음 -->

<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Zay Shop - Contact</title>
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
                    <!-- 검색 아이콘 ------------------>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal"
                        data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <!-- 마이페이지 아이콘 ----------------------->
                    <a class="nav-icon position-relative text-decoration-none" href="Gomypage1.do">
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
    <div class="container-fluid bg-light py-5">
        <div class="col-md-6">
            <h1 class="h1">심부름 요청서
        </div>
    </div>



    <!-- Start Contact -->
    <!-- 수정2 시작 -->
    <div class="">
        <div class="">
            <div>
                <!-- onsubmit : submit타입 input을 누를때 적어놓은 메소드를 먼저 실행시키고 form태그 값 전송이 시작됨, return이 추가되면 메소드의 리턴 값이 true일 때만 form태그 값을 전송함-->
                <form action="Errupdate.do" method="get" onsubmit="return test()">
                    <div id="div3">
                        <table id="table1" class="col-md-9 m-auto">
                            <tr class="h120 pd100">
                                <td class="w300">제목</td>
                                <td class="w1000 ">
                                    <div class="border1"><input id="input007" class="input2 borderColorGray"
                                            name="err_name" type="text" placeholder="제목을 입력해주세요" size="100"></input>
                                    </div>
                                </td>
                                <td class="w300 ">
                                </td>
                                <td></td>
                            </tr>
                            <tr class="h120 pd100">
                                <td class="td1">카테고리</td>
                                <td>
                                    <div class="border1 w250">
                                        <ul class="ul1">
                                            <li><button id="btn007" class="btn2" type="button">청소/정리</button></li>
                                            <li><button id="btn008" class="btn2" type="button">과외</button></li>
                                            <li><button id="btn009" class="btn2" type="button">수리/설치</button></li>
                                            <li><button id="btn010" class="btn2" type="button">인테리어/시공</button></li>
                                            <li><button id="btn011" class="btn2" type="button">기타 집안일</button></li>
                                            <li><button id="btn012" class="btn2" type="button">이사</button></li>
                                        </ul>
                                    </div>
                                    <input id="input008" type="hidden" name=err_category_num value="">
                                </td>
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="h120 pd100">
                                <td class="td1">요청내용</td>
                                <td><textarea id="textarea001" class="textarea1 borderColorGray2" name="err_content"
                                        placeholder="심부름 내용, 장소, 예상 소요시간, 일시, 추가 희망사항을 상세하게 적어주세요" cols="105"
                                        rows="6"></textarea></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="h120 pd100">
                                <td class="td1">심부름비</td>
                                <td>
                                    <div class="border1">
                                        <div id="div1"><input id="input009" class="input2 borderColorGray"
                                                name="err_price" type="text" placeholder="가격을 입력해 주세요." size="100"
                                                value=""></div>
                                        <div id="div2"><span id="span1">원</span></div>
                                    </div>
                                </td>
                                <td></td>
                            </tr>
                            <tr class="h120 pd100">
                                <td></td>
                                <td>
                                    <div><input id="input010" type="submit" value="심부름 등록"
                                            class="btn btn-success btn-lg px-3 w150 input1 input2 right"></input>
                                    </div>
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="h120 pd100">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- 수정2 끝 -->
    <!-- End Contact -->


    <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">
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

    <!-- 수정3 시작 -->
    <script>
        // 태그를 선택하면 태그의 색이 변경되고 숨겨진 input태그('#input008')의 value값을 변경하는 코드 시작
        let defaultBtn = "#btn007";

        // 선택한 태그에 따라 input값 변경하는 함수
        function getTagnumber(btnNumber) {
            let tagNumber = btnNumber.substr(4);
            tagNumber = parseInt(tagNumber);
            $('#input008').val(tagNumber - 6);
        }

       // 태그의 배경색 변경 함수
        function tagBackgroundcolorChange (btnNumber){
            $(defaultBtn).attr('style', 'color: black');
            $(btnNumber).attr('style', 'color: red');
            defaultBtn = btnNumber;
            getTagnumber(btnNumber);
        }
        $('#btn007').on('click', function () { tagBackgroundcolorChange('#btn007') });
        $('#btn008').on('click', function () { tagBackgroundcolorChange('#btn008') });
        $('#btn009').on('click', function () { tagBackgroundcolorChange('#btn009') });
        $('#btn010').on('click', function () { tagBackgroundcolorChange('#btn010') });
        $('#btn011').on('click', function () { tagBackgroundcolorChange('#btn011') });
        $('#btn012').on('click', function () { tagBackgroundcolorChange('#btn012') });
        console.log($('#input007').val());
        // 태그를 선택하면 태그의 색이 변경되고 숨겨진 input태그('#input008')의 value값을 변경하는 코드 끝

        // form태그에 빈 값이 있는지 확인하는 함수 시작
        function test() {
            let idNum = idTest();
            if (idNum == 0) {
                return false;
            }
            let tagNum = tagTest();
            if (tagNum == 0) {
                return false;
            }
            let contentNum = contentTest();
            if (contentNum == 0) {
                return false;
            }
            let priceNum = priceTest();
            if (priceNum == 0) {
                return false;
            }
            return true;
        }
        function idTest() {
            if ($('#input007').val() == "") {
                alert('아이디를 입력해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        function tagTest() {
            if ($('#input008').val() == "") {
                alert('태그를 선택해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        function contentTest() {
            if ($('#textarea001').val() == "") {
                alert('심부름 내용을 입력해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        function priceTest() {
            if ($('#input009').val() == "") {
                alert('심부름비를 입력해주세요');
                return 0;
            } else {
                return 1;
            }
        }
        // form태그에 빈 값이 있는지 확인하는 함수 끝


    </script>
    <!-- 수정3 끝 -->
</body>

</html>