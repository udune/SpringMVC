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
                <table class="table table-bordered table-hover">
                    <tr>
                        <td>번호</td>
                        <td>제목</td>
                        <td>작성자</td>
                        <td>작성일</td>
                        <td>조회수</td>
                    </tr>
                    <c:forEach items="${list}" var="vo">
                        <tr>
                            <td>${vo.idx}</td>
                            <td>${vo.title}</td>
                            <td>${vo.writer}</td>
                            <td>${vo.indate}</td>
                            <td>${vo.count}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="panel-footer">Panel Footer</div>
        </div>
    </div>
</body>
</html>