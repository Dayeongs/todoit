<%@page import="dao.CommReplyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 요청파라미터값 조회
	int reReplyNo = Integer.parseInt(request.getParameter("reReplyNo"));	
	int no = Integer.parseInt(request.getParameter("no"));	
	int pageNo = Integer.parseInt(request.getParameter("page"));
	
	// 대댓글을 삭제한다.
	CommReplyDao replyDao = new CommReplyDao();
	replyDao.deleteCommReply(reReplyNo);
	
	// 커뮤니티 상세페이지를 재요청하는 URL을 응답으로 보낸다.
	response.sendRedirect("detail.jsp?no=" + no + "&page=" + pageNo);
%>