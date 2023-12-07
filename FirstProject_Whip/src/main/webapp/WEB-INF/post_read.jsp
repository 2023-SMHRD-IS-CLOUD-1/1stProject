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
                            <a class="nav-link" href="GomanagementPost.do">고객센터</a>
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
        	    <span id="postReadingNum">${postContent.post_num}</span>
                <h1 id = "postWritedTitle">${postContent.post_title}</h1>
               
            </div>
            <div id="postReadNav">
                <span id = "postUserId">${postContent.user_id}</span>
                <span id = "postPostedAt">${postContent.posted_at}</span>
                <span>조회 ${postContent.post_views }</span>
                <span>추천 <span id = "showLikesCnt">${postContent.post_likes }</span></span>
                <button onclick="postList()">목록</button>
            </div>
            <hr>
            <div id="postReadSect1">
                <pre id = "postWritedContent">${postContent.post_content }</pre>
            </div>
            <hr>
            <div id = "tempBtns">
	            <button id = "updateBtn">수정</button>
	            <button id = "deleteBtn">삭제</button>
            </div>
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
                <textarea name="cmtContent" id="cmtContent" cols="125" rows="5"></textarea>
                <button id = "cmtUploadBtn">등록</button>
                <div>
                    <span id ="showCmtNum">0개의 댓글이 달려 있습니다.</span>
                </div>
            </div>
            <div id="postReadSect4">
                <table>
                   <tr>
                           <th id="sect4TableWriter">작성자</th>
                           <th id="sect4TableContent">내용</th>
                           <th id="sect4TablefavorDate">작성일자</th>
                           <th id="sect4TablefavorNum">추천수</th>
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
 <!-- 1201 로그인 모달창 Script, 닫기 script도 추가------------------>
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
        function hrefLink() {
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
        // Wait for the DOM to be ready
        document.addEventListener("DOMContentLoaded", function () {
            // Find the close-icon button
            var closeIcon = document.getElementById("icon-close");
    
            // Add a click event listener to the close-icon button
            closeIcon.addEventListener("click", function () {
                // Redirect to main.html
                window.location.href = "Gopost_read.do";
            });
        });
    </script>
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
	    let likeBtn = document.querySelector('#likeBtn');
		let thisPostNum = document.querySelector('#postReadingNum').innerHTML;
		let postPostedAt = document.querySelector('#postPostedAt');
		postPostedAt.innerHTML = postPostedAt.innerHTML.slice(0,16);
		let showCmtNum = document.querySelector('#showCmtNum');
		let showLikesCnt = document.querySelector('#showLikesCnt');
		let cmtContent =  document.querySelector('#cmtContent');
		let cmtUploadBtn = document.querySelector('#cmtUploadBtn');
		let tempBtns = document.querySelector('#tempBtns');
		let postUserId = document.querySelector('#postUserId');
		let updateBtn = document.querySelector('#updateBtn');
		let deleteBtn = document.querySelector('#deleteBtn');
		let postWritedTitle = document.querySelector('#postWritedTitle')
		let postWritedContent = document.querySelector('#postWritedContent')
		// 게시글 수정/삭제 버튼 로그인 시 보이게
		 if('${user.user_id}' == postUserId.innerHTML || '${user.user_id}' == 'admin'){
			 tempBtns.style.display = 'block';
		 }
		// 수정버튼 눌렀을 때
		updateBtn.addEventListener('click', function() {
			
			window.location.href = "PostSendNum.do?post_num=" + thisPostNum;
			
		})
		// 삭제버튼 눌렀을 때
		deleteBtn.addEventListener('click', function(){
			let decesion = confirm('삭제 하겠습니까?');
			if (decesion == true) {
				$.ajax({
					url : "Postdelete.do",
					data : {thisPostNum : thisPostNum},
					success : function(res) {
						alert('삭제가 완료되었습니다.');
						window.location.href = "Gopost.do";
					},
					error : function(res) {
						console.log('삭제버튼 실패');
					}
				})
			} else {
				event.preventDefault();
			}
		})
		
		// 댓글 등록
		cmtUploadBtn.addEventListener('click', function() {
			if('${user.user_id}'==''){
				event.preventDefault();
				alert('로그인 후 이용가능합니다.');
			} else {
				if (cmtContent.value == ''){
					event.preventDefault();
					alert('내용을 입력하세요.');
				} else {
					$.ajax({
						url : "ComUpload.do",
						data : {
							user_id : '${user.user_id}',
							thisPostNum : thisPostNum,
							cmtContent : cmtContent.value
						},
						dataType : 'json',
						success : function(res) {
							location.reload();
						},
						error : function(res) {
							console.log('댓글 등록 실패');
						}
					})
				}
			}
		});
		
		// 게시글 추천
		likeBtn.addEventListener('click', function() {
			if('${user.user_id}'==''){
				event.preventDefault();
				alert('로그인 후 이용가능합니다.');
			} else {
				$.ajax({
					url : "PostLike.do",
					data : {
						thisPostNum : thisPostNum,
						user_id : '${user.user_id}'
						},
					dataType : 'json',
					success : function(res) {
						if (res == 1) {
							alert('추천이 취소 되었습니다.');
							showLikesCnt.innerHTML = parseInt(showLikesCnt.innerHTML) - 1;
						} else {
							alert('추천 완료');
							showLikesCnt.innerHTML = parseInt(showLikesCnt.innerHTML) + 1;
						}
					}, 
					error : function(res){
						console.log('게시글 좋아요 테이블 조회 실패');
						console.log(res);
					}
				})
			}
		});
		function loadCmt() {
			console.log(thisPostNum);
	    	$.ajax({
	    		url : "ComList.do",
	    		data : {thisPostNum : thisPostNum},
	    		dataType : "json",
	    		success : function(res) {
	    			if(res.length > 0){
	    				showCmtNum.innerHTML = res.length + "개의 댓글이 달려있습니다.";
	    			}
	    			for(let i = 0; i < res.length; i++) {
	    				var a = "";
	    				a += "<tr>";
	    				a += "<td class = \"cSect4TableWriter\">" + res[i].user_id + "</td>";
	    				a += "<td class = \"cSect4TableContent\"><pre>" + res[i].cmt_content + "</pre></td>";
	    				a += "<td class = \"cSect4TableDate\">" + res[i].created_at.slice(0,16) + "</td>";
	    				a += "<td class = \"cSect4Tablefavor\">" + res[i].cmt_likes + "<br>";
	    				a += "<button class= \"ddabong\"> 추천 </button></td>"; 
	    				a += "</tr>";
	    				$("#postReadSect4 table").append(a);
	    			}
	    		},
	    		error : function(res) {
	    			console.log('ajax 실패222222222222222');
	    		}
	    	});
		}
		loadCmt();
    </script>
</body>

</html>