<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.example.springbootdeveloper.dto.ArticleListViewResponse"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>블로그 글 목록</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
    <div class="p-5 mb-5 text-center</> bg-light">
        <h1 class="mb-3">My Blog</h1>
        <h4 class="mb-3">블로그에 오신 것을 환영합니다.</h4>
    </div>

    <div class="container">
        <button type="button" id="create-btn"
                onclick="location.href='/new-article?id='"
                class="btn btn-secondary btn-sm mb-3">글 등록</button>
        <div class="row-6">
        <c:forEach var="item" items="${articles}" varStatus="loop">
            <div class="card">
                <div class="card-header" >${item.id}
                </div>
                <div class="card-body">
                    <h5 class="card-title" >${item.title}</h5>
                    <p class="card-text">${item.content}</p>
                    <a href="/articles/${item.id}" class="btn btn-primary">보러가기</a>
                </div>
            </div>
            <br>
        </c:forEach>
        </div>
    </div>

    <script src="/js/article.js"></script>
</body>
</html>