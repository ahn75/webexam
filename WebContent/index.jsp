<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<script src="js/jquery-1.11.0.min.js"></script>
<script src="page/login.js"></script>

<%
String id ="";
try{
	//id세션 속성의 값을 얻어내서 id변수에 저장

	id = (String)session.getAttribute("id");
%>

<%if(id == null || id.equals("")){ //인증되지 않은 사용자 영역%>

  <div id="status">
		<h3> 20180813 테스트 진행 메인 페이지</h3>

		<ul>
        <li><label for="id">아이디</label>
            <input id="id" name="id" type="email" size="20" 
              maxlength="50" placeholder="이메일아이디입력">
        <li><label for="passwd">비밀번호</label>
            <input id="passwd" name="passwd" type="password" 
              size="20" placeholder="6~16자 숫자/문자" maxlength="16">
        <li class="label2">
            <button id="login">로그인</button>
            <button id="register">회원가입</button>
     </ul>
  </div>

	<div>		
		<ul>
			<li> 회원은 로그인 후 회원정보 조회를 할 수 있습니다. </li>
			<li> 비회원은 회원 등록을 해주세요. </li>
		</ul>
		
	</div>



<%}else{//인증된 사용자 영역%>
  <div id="status">
     <ul>
        <li><b><%=id %></b>님이 로그인 하셨습니다.
        <li class="label2"><button id="logout">로그아웃</button>
           <button id="update">회원 정보 변경</button>
     </ul>
  </div>
<%}}catch(Exception e){e.printStackTrace();}%>