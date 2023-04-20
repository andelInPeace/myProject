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
        <title>게시판: 보기</title>
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
    </head>
<body>
	

		<tiles:insertAttribute name="header"> </tiles:insertAttribute>

	
	 <header class="masthead text-white text-center">
	 <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Board</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                       
                       <table class="table">
						  <thead>
						    <tr>
						      <th scope="col">#</th>
						      <th scope="col">제목</th>
						      <th scope="col">작성자</th>
						      <th scope="col">작성일</th>
						      <th scope="col">수정일</th>
						    </tr>
						  </thead>
						  <tbody>
						  	<c:forEach var="board" items="${boardList}">
						  	<!-- val 은 선언 해 준거고 Items 가 전달 받은 서   -->
						  	</c:forEach>
						    <tr>				
						      <th scope="row">1</th>
						      <td>Mark</td>
						      <td>Otto</td>
						      <td>@mdo</td>
						      <td>@mdo</td>
						    </tr>
						  </tbody>
					</table>
                            
                        
                    </div>
                </div>
            </div>
        </section>
      </header>
		
		<tiles:insertAttribute name="footer"> </tiles:insertAttribute>
		
		 <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
       <!--  <script src="js/scripts.js"></script> -->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
       