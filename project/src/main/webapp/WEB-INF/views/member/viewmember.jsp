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
        <title>내 정보 조회</title>
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
	
	<<tiles:insertAttribute name="header"> </tiles:insertAttribute> 
	
	 <header class="masthead text-white text-center">
	 <section class="page-section" id="register">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">My Info</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                       
                        <form method="GET" action="/member/remove" id="contactForm">
                        
                        	 <!-- user_no input--> 
                           <input type="hidden" name="user_no" id="user_no" value="${member.user_no}" /> 
                           
                            <!-- Name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="text" name="name" id="name" value="${member.name}"  readonly/>
                                <label for="name" id="name">name</label>
                             <!--    <div class="invalid-feedback">이름을 적어주세요!!</div> -->
                            </div>
                             <div class="form-floating mb-3">
                                <input class="form-control" type="text" name="id" id="id" value="${member.id}" readonly />
                                 <label for="id">ID</label>
                                <!-- <label for="id">ID</label>
                                <div class="invalid-feedback"> ID를 적어주세요!!</div> -->
                            </div>
                             <div class="form-floating mb-3">
                                <input class="form-control" type="password" name="pw" id="pw" value="${member.pw}" readonly/>
                       		    <label for="id">Password</label>
                                <!-- <div class="invalid-feedback"> 비번을 적어주세요!!</div> -->
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="email" name="email" id="email" value="${member.email}" readonly />
                 				<label for="email">Email address</label>
                               <!--  <div class="invalid-feedback">Email 을 적어주세요!!</div> --> 
                               <!-- <div class="invalid-feedback">Email이 유효하지 않아요...</div> -->
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="tel" name="phone" id="phone" value="${member.phone}" readonly />
	                            <label for="phone">Phone number</label>
                                <!-- <div class="invalid-feedback">연락처를 적어주세요!!</div> -->
                            </div>
                            
                   			<button class="btn btn-primary btn-xl" id="buttonButton" type="button" onclick="location.href='/member/update'">정보 수정</button>
                   			<button class="btn btn-primary btn-xl" id="submitButton" type="submit" onclick="return confirm('이렇게 떠나시나요');">회원 탈퇴</button>
                           
                        </form>
                    </div>
                </div>
            </div>
        </section>
      </header>
		
		<tiles:insertAttribute name="footer"> </tiles:insertAttribute>
		
		 <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
       
       
</body>
</html>