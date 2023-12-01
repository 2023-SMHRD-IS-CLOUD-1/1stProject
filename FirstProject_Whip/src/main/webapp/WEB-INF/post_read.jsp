<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>당근과채찍_핵심_PostRead</title>
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
    <link rel="stylesheet" href="assets/css/post_read.css">
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
                        href="mailto:info@company.com">caroot&whip@smhrd.com</a>
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
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="심부름을 요청하고 수행해보시겠어요?">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <!-- 검색 모달 아이콘 -->
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal"
                        data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <!-- <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span
                            class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                    </a> -->
                    <!-- 마이페이지 아이콘  -->
                    <a class="nav-icon position-relative text-decoration-none" href="Gomypage1.do">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span
                            class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
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



    <!-- Start Content -->
    <div class="container py-5" id="postWriteBoard">
        <div id="postReadLayout">
            <div id="postReadHead">
                <h1>질문 글) 비숍 4차전직 하는데 시간 얼마나 드나요</h1>
            </div>
            <div id="postReadNav">
                <span>메창</span>
                <span>23.11.24</span>
                <span>조회 113</span>
                <span>추천 1</span>
                <span>댓글 0</span>
                <button onclick="postList()">목록</button>
            </div>
            <hr>
            <div id="postReadSect1">
                <span>안녕하세요. 이번에 새로 메이플 시작한 뉴비인데 직업 비숍으로 생각하고 있습니다.
                    무자본이고 하루에 2~3시간 정도 접속하는데 4차전직까지 시간 얼마나 걸릴까요??</span>
                <div>1</div>
                <div>1</div>
                <div>1</div>
                <div>1</div>
                <div>1</div>
                <div>1</div>
                <div>1</div>
                <div>1</div>
                <div>1</div>
                <div>1</div>
                <div>1</div>
                <div>1</div>
            </div>
            <hr>
            <div id="postReadSect2">
                <table align="center">
                    <tr>
                        <td colspan="2" id="likeArea">
                            <!-- css 수정하기 위해 class="btnn" 추가 -->
                            <button id="likeBtn" class="btnn">추천</button>
                        </td>
                        <td>
                            <button id="likeBtn2"  class="btnn">즐겨찾기</button>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="postReadSect3">
                <textarea name="" id="" cols="125" rows="5"></textarea>
                <button>등록</button>
                <div>
                    <span>n개의 댓글이 달려 있습니다.</span>
                </div>
            </div>
            <div id="postReadSect4">
                <table>
                    <tr>
                        <thead>
                            <th class="sect4TableWriter">작성자</th>
                            <th class="sect4TableContent">내용</th>
                            <th class="sect4Tablefavor">작성일자</th>
                            <th class="sect4Tablefavor">추천수</th>
                        </thead>
                    </tr>
                    <tr>
                        <td class="sect4TableWriter">행인</td>
                        <td class="sect4TableContent">
                            으아아아
                            <div>1</div>
                            <div>1</div>
                            <div>1</div>
                            <div>1</div>
                            <div>1</div>
                            <div>1</div>
                        </td>
                        <td class="sect4TableDate">21.11.27</td>
                        <td class="sect4Tablefavor">
                            <span>1</span>
                            <br>
                            <button class="ddabong">추천</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="sect4TableWriter">나그네</td>
                        <td class="sect4TableContent">내용</td>
                        <td class="sect4TableDate">일자</td>
                        <td class="sect4Tablefavor">
                            <span>13</span>
                            <br>
                            <button class="ddabong">추천</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="sect4TableWriter">관리자</td>
                        <td class="sect4TableContent">내용</td>
                        <td class="sect4TableDate">일자</td>
                        <td class="sect4Tablefavor">
                            <span>2</span>
                            <br>
                            <button class="ddabong">추천</button>
                        </td>
                    </tr>
                </table>
            </div>

        </div>
    </div>
    <!-- End Content -->

   

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
    <script>
        function postList() {
            window.location.href = 'Gopost.do'
        }
    </script>

</body>

</html>