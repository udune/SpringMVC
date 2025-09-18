<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Spring MVC02</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            loadList();
        });
        function loadList() {
            // 서버와 통신 : 게시판 리스트 가져오기
            $.ajax({
                url: "boardList.do",
                type: "get",
                dataType: "json",
                success: makeView,
                error: function() { alert("error"); }
            });
        }

        function makeView(data) {
            var listHtml = "<table class='table table-bordered'>";
            listHtml += "<tr>";
            listHtml += "<td>번호</td>";
            listHtml += "<td>제목</td>";
            listHtml += "<td>작성자</td>";
            listHtml += "<td>작성일</td>";
            listHtml += "<td>조회수</td>";
            listHtml += "</tr>";
            $.each(data, function(index, obj) {
                listHtml += "<tr>";
                listHtml += "<td>"+obj.idx+"</td>";
                listHtml += "<td>"+obj.title+"</td>";
                listHtml += "<td>"+obj.writer+"</td>";
                listHtml += "<td>"+obj.indate+"</td>";
                listHtml += "<td>"+obj.count+"</td>";
                listHtml += "</tr>";
            });
            listHtml += "</table>";
            $("#view").html(listHtml);
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Spring MVC02</h2>
        <div class="card">
            <div class="card-header">BOARD</div>
            <div class="card-body" id="view">Panel Body</div>
            <div class="card-footer">Panel Footer</div>
        </div>
    </div>
</body>
</html>