<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.MemberVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt"> <a href="index.html"
			class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a> <nav>
		<!-- 조건작성시 EL표기식을 써야함 --> <c:if test="${member == null }">
			<a href="#menu">로그인</a>
		</c:if> <c:if test="${member != null }">
			<c:if test="${member.email == 'admin'}">
				<a href="SelectAll.do">전체회원조회</a>
			</c:if>
			<c:if test="${member.email != 'admin'}">
				<a href="Goupdate.do">개인정보수정</a>
			</c:if>
			<a href="Logout.do">로그아웃</a>
		</c:if> </nav> </header>

		<!-- Menu -->
		<nav id="menu">
		<ul class="links">
			<li><h5>로그인</h5></li>
			<form action="Login.do" method="post">
				<li><input type="text" name="email" placeholder="Email을 입력하세요"></li>
				<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
				<li><input type="submit" value="LogIn" class="button fit"></li>
			</form>
		</ul>
		<ul class="actions vertical">
			<li><h5>회원가입</h5></li>
			<form action="Join.do" method="post">
				<li><input type="text" name="email" placeholder="Email을 입력하세요"></li>
				<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
				<li><input type="text" name="tel" placeholder="전화번호를 입력하세요"></li>
				<li><input type="text" name="address" placeholder="집주소를 입력하세요"></li>
				<li><input type="submit" value="JoinUs" class="button fit"></li>
			</form>
		</ul>
		</nav>
		<!-- Banner -->
		<section id="banner" class="major">
		<div class="inner">
			<header class="major"> <c:if test="${member == null }">
				<h1>로그인 한 세션아이디를 출력해주세요</h1>
			</c:if> <c:if test="${member != null }">
				<h1>${member.email}님환영합니다.</h1>
			</c:if> <!-- 로그인 후 로그인 한 사용자의 세션아이디로 바꾸시오.
									 ex)smart님 환영합니다 --> </header>
			<div class="content">
				<p>
					아래는 지금까지 배운 웹 기술들입니다.<br>
				</p>
				<ul class="actions">
					<li><a href="#one" class="button next scrolly">확인하기</a></li>
				</ul>
			</div>
		</div>
		</section>

		<!-- Main -->
		<div id="main">

			<!-- One -->
			<section id="one" class="tiles"> <article> <span
				class="image"> <img src="images/pic01.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">HTML</a>
			</h3>
			<p>홈페이지를 만드는 기초 언어</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic02.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">CSS</a>
			</h3>
			<p>HTML을 디자인해주는 언어</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic03.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">Servlet/JSP</a>
			</h3>
			<p>Java를 기본으로 한 웹 프로그래밍 언어/스크립트 언어</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic04.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">JavaScript</a>
			</h3>
			<p>HTML에 기본적인 로직을 정의할 수 있는 언어</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic05.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">MVC</a>
			</h3>
			<p>웹 프로젝트 중 가장 많이 사용하는 디자인패턴</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic06.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">Web Project</a>
			</h3>
			<p>여러분의 최종프로젝트에 웹 기술을 활용하세요!</p>
			</header> </article> </section>
			<!-- Two -->
			<section id="two">
			<div class="inner">
				<header class="major">
				<h2>나에게 온 메세지 확인하기</h2>
				</header>
				<p></p>
				<ul class="actions">
					<li>로그인을 하세요.</li>
					<li><a href="#" class="button next scrolly">전체삭제하기</a></li>
				</ul>
			</div>
			</section>

		</div>

		<!-- Contact -->
		<section id="contact">
		<div class="inner">
			<section>
			<form onsubmit="return false">
				<div class="field half first">
					<label for="name">Name</label> <input type="text" id="name"
						placeholder="보내는 사람 이름" />
				</div>
				<div class="field half">
					<label for="email">Email</label> <input type="text" id="email"
						placeholder="보낼 사람 이메일" />
					<ul>

					</ul>
				</div>

				<div class="field">
					<label for="message">Message</label>
					<textarea id="message" rows="6"></textarea>
				</div>
				<ul class="actions">
					<li><input disabled="disabled" type="submit"
						value="Send Message" class="special" /></li>
					<li><input type="reset" value="Clear" /></li>
				</ul>
			</form>
			</section>

			<section class="split"> <section>
			<div class="contact-method">
				<span class="icon alt fa-envelope"></span>
				<h3>Email</h3>
				<c:if test="${member != null }">
					<a href="#">${member.email}</a>
				</c:if>
				<!-- 로그인 한 사용자의 이메일을 출력하시오 -->
			</div>
			</section> <section>
			<div class="contact-method">
				<span class="icon alt fa-phone"></span>
				<h3>Tel</h3>
				<c:if test="${member != null }">
					<span>${member.tel}</span>
				</c:if>
				<!-- 로그인 한 사용자의 전화번호를 출력하시오 -->
			</div>
			</section> <section>
			<div class="contact-method">
				<span class="icon alt fa-home"></span>
				<h3>Address</h3>
				<c:if test="${member != null }">
					<span>${member.address}</span>
				</c:if>
				<span></span>
				<!-- 로그인 한 사용자의 집주소를 출력하시오 -->
			</div>
			</section> </section>
		</div>
		</section>

		<!-- Footer -->
		<footer id="footer">
		<div class="inner">
			<ul class="icons">
				<li><a href="#" class="icon alt fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon alt fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon alt fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon alt fa-github"><span
						class="label">GitHub</span></a></li>
				<li><a href="#" class="icon alt fa-linkedin"><span
						class="label">LinkedIn</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

	<script type="text/javascript">
		// 1. jquery 라이브러리 로딩되어있는 지 확인
		// ----> 라이브러리 로드하고 있는 코드보다 아래쪽에 script 태그 열어줌

		// 2. 필요한 태그 가져오기
		// ---> id값이 email인 input태그
		// 3. 키보드를 눌렀을 때에 대한 이벤트 처리

		$("#email")
				.on(
						"keyup",
						function() {
							// 4. input태그 안에 입력값 가져오기
							var inputData = $(this).val();
							// 5. 전송이 편한 객체 형식으로 만들기
							var obj = {
								recieve_email : inputData
							};
							// 6. 비동기 통신 방식으로 servlet 데이터 보내기
							// --> 이메일 존재하는 지 여부를 db에서 체크
							$
									.ajax({
										url : "EmailCheck.do",
										data : obj,
										success : function(result) {
											console.log("요청성공", result)
											$("#email+ul").empty();
											if (result == "true") {
												// 1. result 값이 true라면 li태그 초록색 "일치하는 이메일입니다."
												$("#email+ul")
														.append(
																"<li style = 'color:green;' >일치하는 이메일 입니다.</li>");
												// 버튼 활성화 
												$(".actions .special")
														.removeAttr("disabled")
											} else {
												// 2. result 값이 false라면 li태그 빨간색 "일치하지 않습니다."
												$("#email+ul")
														.append(
																"<li style = 'color:red;' >일치하지 않는 이메일 입니다.</li>");
												// 버튼 비활성화
												$(".actions .special").attr(
														"disabled", "disabled")
											}
											if ($("input#email").val() == "") {
												$("div.field.half > ul li")
														.remove();
											}
										}
									})
						})
				// 1. sendMessage 버튼을 클릭했을때 이벤트 등록
				$(".actions .special").on("click", function() {
					
				 
					// 2. textarea영역에 있는 데이터를 가져와서 객체 형태로 만들기
					var textData = $("#message").val();
					var obj2 = {
							message : textData
					}
					console.log(obj2);
					
					// 3. 비동기 통신 방식을 사용해서 데이터 요청
					// ---> url은 그냥 "" 값으로 지정 >> python flask server보냄
					$.ajax({
					url:"http://127.0.0.1:9000/",
					data : obj2,
					success : function(res) {
						console.log("flask 통신 성공");
						console.log("결과값>>", res);
						
					$("#contact > div > section.split > section:nth-child(1) > div > h3").append(`<img src = '$("res")'`)
					}
					})
					
					// * 성공했을 때 실행할 함수까지 잡아주기

				})
	</script>

</body>
</html>

