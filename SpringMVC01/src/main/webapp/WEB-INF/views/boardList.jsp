<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
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
                            <td><a href="boardContent.do?idx=${vo.idx}">${vo.title}</a></td>
                            <td>${vo.writer}</td>
                            <td>${fn:split(vo.indate, " ")[0]}</td>
                            <td>${vo.count}</td>
                        </tr>
                    </c:forEach>
                </table>
                <a href="boardForm.do" class="btn btn-primary btn-sm">글쓰기</a>
            </div>
            <div class="panel-footer">Panel Footer</div>
        </div>
    </div>
</body>
</html>