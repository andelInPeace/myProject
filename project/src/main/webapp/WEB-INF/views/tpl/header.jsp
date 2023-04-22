<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<header class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
	
	            <div class="container">
                <a class="navbar-brand" href="#page-top">혼자서 개발 공부하는 사람들 모임</a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                    
                    <c:if test="${empty user}">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/member/register">가입하기</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/member/login">로그인</a></li>
                    </c:if>
                     <c:if test="${!empty user}">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/member/viewmember">내 정보 조회 </a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/member/logOut" onclick="return confirm('로그아웃 하시겠습니까 ??');">로그아웃</a></li>            
                    </c:if>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/board/list">게시판</a></li>
                    </ul>
                </div>
            </div>
        
	</header>