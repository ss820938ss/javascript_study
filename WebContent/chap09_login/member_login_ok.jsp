<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//클라이언트로부터 요청한 값 확인
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("user_id");
	String userPwd = request.getParameter("user_pw");
	
	System.out.printf("userId : %s userPwd : %s", userId, userPwd);
	
	String name = null;
	if (userId.equals("korean") && userPwd.equals("12345")) {
		name = "박부장";
	} else if (userId.equals("seoul") && userPwd.equals("56789")) {
		name = "홍대리";
	}
	String msg = String.format("{\"user_id\":\"%s\", \"user_name\":\"%s\"}", userId, name);
	System.out.println(msg);
	
	//클라이언트로 응답 전송
	out.print(msg);

%>