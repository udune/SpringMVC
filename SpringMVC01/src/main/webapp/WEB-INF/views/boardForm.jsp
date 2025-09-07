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
                <form action="boardInsert.do" method="post">
                    <table class="table">
                        <tr>
                            <td>제목</td>
                            <td><input type="text" name="title" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td><textarea rows="7" class="form-control" name="content"></textarea></td>
                        </tr>
                        <tr>
                            <td>작성자</td>
                            <td><input type="text" name="writer" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <button type="submit" class="btn btn-success btn-sm">등록</button>
                                <button type="reset" class="btn btn-warning btn-sm">취소</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="panel-footer">Panel Footer</div>
        </div>
    </div>
</body>
</html>