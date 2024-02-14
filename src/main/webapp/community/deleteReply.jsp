<%@page import="dao.CommReplyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 요청파라미터값 조회
	int replyNo = Integer.parseInt(request.getParameter("replyNo"));	
	int no = Integer.parseInt(request.getParameter("no"));	
	int pageNo = Integer.parseInt(request.getParameter("page"));	
	
	// 댓글 번호로 댓글 삭제
	CommReplyDao replyDao = new CommReplyDao();
	replyDao.deleteCommReply(replyNo);
	
	// 커뮤니티 상세페이지를 재요청하는 URL을 응답으로 보낸다.
	response.sendRedirect("detail.jsp?no=" + no + "&page=" + pageNo);
%>