<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>게시글 수정</title>
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
	<h1>Board Update</h1>
	<table>
    <tr>
      <th></th>
      <th></th>
    </tr>
    <tr>
      <td>제목</td>
      <td><input type="text" id="title" name="title" value="${boardDetail.title}"></td>
    </tr>
    <tr>
      <td>내용</td>
      <td><textarea id="content" name="content">${boardDetail.content}</textarea></td>
    </tr>
    <tr>
      <button onclick="boardUpdate()">수정</button>
      <button onclick="location.href='/board/detail/${boardDetail.board_seq}';">취소</button>
    </tr>
	</table>

<script>
function boardUpdate() {
  const data = {
    title: document.getElementById('title').value,
    content: document.getElementById('content').value
    };
  const result = fetch('/api/board/update/${boardDetail.board_seq}', {
    method: 'PUT', // GET, POST, PUT, DELETE
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(data)})
    .then(response => {
      console.log(response);
      location.href = "/board/detail/${boardDetail.board_seq}";
    });
    //alert("Success");
}
</script>
</body>
</html>