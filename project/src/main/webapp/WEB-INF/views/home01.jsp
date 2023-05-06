<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
 <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>GaBoZaGu</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>	
        
        <style>
        	img {
        		width: 25px;
        		margin: 5px;
        	}
        </style>
    </head>
	<body>

	<tiles:insertAttribute name="header"> </tiles:insertAttribute>
	
	 <header class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">
                <!-- Masthead Avatar Image-->
                <img class="masthead-avatar mb-5" src="/resources/assets/img/avataaars.svg" alt="..." />
                <!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">오류와의 전쟁. 함께할 아군 모집 중.</h1>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Masthead Subheading-->
                <%-- <p class="masthead-subheading font-weight-light mb-0"> 정신병 걸리기 좋은 시간 ${serverTime} .</p> --%>
                <p class="masthead-subheading font-weight-light mb-0"> 이런 분들 언제나 <img src="resources/assets/img/part01.png">환영<img src="resources/assets/img/part01.png" width="10px"></p>
                <br>
           		 <p class="masthead-subheading font-weight-light mb-0"><img src="resources/assets/img/cat01.png"> 인강에서 강사님이 시키는 대로 했는데 안돼서 머리 싸매고 계신 분</p>
           		 <p class="masthead-subheading font-weight-light mb-0"><img src="resources/assets/img/cat01.png"> 교재에 적혀있는 대로 했는데 안돼서 머리 싸매고 계신 분</p>
           		 <p class="masthead-subheading font-weight-light mb-0"><img src="resources/assets/img/cat01.png"> 인터넷 검색해도 딱 맞는 해결법이 나와서 머리 싸매고 계신 분</p>
           		 <p class="masthead-subheading font-weight-light mb-0"></p>
            </div>
		</header>
		
		<tiles:insertAttribute name="footer"> </tiles:insertAttribute>
	
	</body>
	
		<!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <!--  <script src="js/scripts.js"></script> -->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</html>
