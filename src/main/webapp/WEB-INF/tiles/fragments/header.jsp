<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="realURL" value="${requestScope['javax.servlet.forward.request_uri']}"/>

<div class="header">
    <div class="logo">
        <a href="/"><strong>LOGO</strong></a>
    </div>

    <div class="header-user-info">
        <sec:authorize access="!isAuthenticated()">
            <a href="/user/login"><strong>로그인</strong></a>
            <a href="/user/join"><strong>회원가입</strong></a>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <a href="/user/logout"><strong>로그아웃</strong></a>
            <a href="#"><strong>마이페이지</strong></a>
        </sec:authorize>
    </div>
</div>

<c:if test="${fn:substring(realURL, 1, 5) != 'user'}">
<div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <span class="navbar-brand" href="#">Menu</span>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">히스토리</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">일기</a>
                    </li>
                </ul>
                <span class="navbar-text">

                </span>
            </div>
        </div>
    </nav>
</div>
</c:if>