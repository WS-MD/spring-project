<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>게시판 목록</title>
</head>
<style>
  table {
    width: 100%;
    border: 1px solid #444444;
  }
  th, tr {
    border-bottom: 1px solid #444444;
  }
</style>
<body>
	<h1>Board List</h1>
	<table>
	  <thead>
	    <tr>
	      <td>번호</td>
	      <td>제목</td>
	      <td>등록일자</td>
	      <td>조회수</td>
	      <td>좋아요수</td>
	      <td>등록자 아이디</td>
	    </tr>
	  </thead>
	  <tbody>
	    <c:forEach var="board" items="${boardList}">
	    <tr>
	      <td>1</td>
	      <td><a href="/board/detail/${board.board_seq}">${board.title}</a></td>
	      <td>${board.reg_dt}</td>
	      <td>${board.view_cnt}</td>
	      <td>${board.like_cnt}</td>
	      <td>${board.reg_id}</td>
	    </tr>
	    </c:forEach>
	  </tbody>
	</table>
	<button onclick="location.href='/board/insert';">등록</button>
</body>
</html>