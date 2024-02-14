<%@page import="vo.Community"%>
<%@page import="dao.CommunityDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	// 요청 파라미터 값 조회
	int no = Integer.parseInt(request.getParameter("no"));
	int pageNo = Integer.parseInt(request.getParameter("page"));
	
	// 저장된 커뮤니티글 커뮤니티 번호로 조회
	CommunityDao commDao = new CommunityDao();
	Community savedCommunity = commDao.getCommunityByNo(no);
	
	// 조회된 커뮤니티글의 삭제여부를 'Y'로 변경하여 저장
	savedCommunity.setDeleted("Y");
	commDao.updateCommunity(savedCommunity);
	
	// 커뮤니티 목록을 재요청하는 URL을 응답으로 보낸다
	response.sendRedirect("list.jsp?page=" + pageNo);
	
%>