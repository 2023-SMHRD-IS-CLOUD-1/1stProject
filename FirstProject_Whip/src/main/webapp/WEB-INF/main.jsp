<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.UserVO"%>
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

	<li><h5>로그인</h5></li>
	<form action="Login.do" method="post">
		<li><input type="text" name="user_id" placeholder="id를 입력하세요"></li>
		<li><input type="password" name="user_pw" placeholder="PW를 입력하세요"></li>
		<li><input type="submit" value="LogIn" class="button fit"></li>
	</form>
	</ul>
	<ul class="actions vertical">
		<li><h5>회원가입</h5></li>
		<form action="Join.do" method="post">
			<li><input type="text" name="user_id" placeholder="id을 입력하세요"></li>
			<li><input type="password" name="user_pw"
				placeholder="PW를 입력하세요"></li>
			<li><input type="text" name="user_name" placeholder="이름을 입력하세요"></li>
		<li><input type="text" name="user_nick" placeholder="닉네임을 입력하세요"></li>
			<label for="gender">성별:</label>
        <select name="user_gender" required>
            <option value="남">남</option>
            <option value="여">여</option>
        </select><br>
 <label for="birthdate">생년월일:</label>
        <input type="date" name="user_birthdate" required><br>
			<li><input type="text" name="user_phone"
				placeholder="전화번호를 입력하세요"></li>
			<li><input type="text" name="user_addr1"
				placeholder="집주소를 입력하세요"></li>
			<li><input type="text" name="user_jumin" placeholder="주민등록번호를 입력하세요"></li>
			<li><input type="submit" value="JoinUs" class="button fit"></li>
		</form>

		</script>
		
		<body>
    <h2>회원 정보 수정</h2>
    
    <form action="Update.do" method="post">
    	<li><input type="text" name="user_id" placeholder="id를 입력하세요"></li>
        <label for="user_pw">새로운 비밀번호:</label>
        <input type="password" name="user_pw" required><br>

        <label for="user_name">이름:</label>
        <input type="text" name="user_name" required><br>

        <label for="user_nick">닉네임:</label>
        <input type="text" name="user_nick" required><br>

        <label for="user_phone">핸드폰 번호:</label>
        <input type="text" name="user_phone" required><br>

        <label for="user_addr1">주소:</label>
        <input type="text" name="user_addr1" required><br>

        <input type="submit" value="수정">
    </form>
    
    <form action="delete.do"><input type="submit" value="삭제"></form>
</body>
</body>
</html>

