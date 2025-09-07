<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Spring MVC01</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container">
        <h2>Spring MVC01</h2>
        <div class="panel panel-default">
            <div class="panel-heading">BOARD</div>
            <div class="panel-body">
                <table class="table">
                    <tr>
                        <td>제목</td>
                        <td>${vo.title}</td>
                    </tr>
                    <tr>
                        <td>내용</td>
                        <td>${vo.content}</td>
                    </tr>
                    <tr>
                        <td>작성자</td>
                        <td>${vo.writer}</td>
                    </tr>
                    <tr>
                        <td>작성일</td>
                        <td>${vo.indate}</td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <button class="btn btn-primary btn-sm">수정화면</button>
                            <button class="btn btn-warning btn-sm">삭제</button>
                            <button class="btn btn-info btn-sm">목록</button>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="panel-footer">Panel Footer</div>
        </div>
    </div>
</body>
</html>