<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>게시글 상세</title>
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
	<h1>Board Detail</h1>
	<table>
    <tr>
      <th></th>
      <th></th>
    </tr>
    <tr>
      <td>제목</td>
      <td>${boardDetail.title}</td>
    </tr>
    <tr>
      <td>내용</td>
      <td>${boardDetail.content}</td>
    </tr>
    <tr>
      <td>등록일자</td>
      <td>${boardDetail.reg_dt}</td>
    </tr>
    <tr>
      <td>조회수</td>
      <td>${boardDetail.view_cnt}</td>
    </tr>
    <tr>
      <td>좋아요수</td>
      <td>${boardDetail.like_cnt}</td>
    </tr>
    <tr>
      <td>등록자아이디</td>
      <td>${boardDetail.reg_id}</td>
    </tr>
	</table>
	<button onclick="location.href='/board/update/${boardDetail.board_seq}';">수정</button>
	<button onclick="location.href='/board/list';">목록</button>
</body>
</html>