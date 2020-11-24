<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>게시글 등록</title>
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
	<h1>Board Insert</h1>
	<table>
    <tr>
      <th></th>
      <th></th>
    </tr>
    <tr>
      <td>제목</td>
      <td><input type="text" id="title" name="title"></td>
    </tr>
    <tr>
      <td>내용</td>
      <td><textarea id="content" name="content"></textarea></td>
    </tr>
    <tr>
      <button onclick="boardInsert()">등록</button>
      <button onclick="location.href='/board/list';">취소</button>
    </tr>
	</table>

<script>
function boardInsert() {
  const data = {
    title: document.getElementById('title').value,
    content: document.getElementById('content').value
    };
  const result = fetch('/api/board/insert', {
    method: 'POST', // GET, POST, PUT, DELETE
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(data)})
    .then(response => {
      console.log(response);
      location.href = "/board/list";
    });
    // alert("Success");
}
</script>
</body>
</html>