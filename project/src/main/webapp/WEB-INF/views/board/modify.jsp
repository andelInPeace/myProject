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
        <title>게시글 수정</title>
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
			body{}
			 #submitButton, #deleteButton {
			 	 display: inline-block;
			 	 /* float: left; */
				 margin: 0 auto;
				 padding: 0.8rem 1.5rem; 
	
			} 
			
			.readform {}
			form {
			margin: 0 0 2rem 0;
			}

			form > :last-child {
				margin-bottom: 0;
			}
	
			form > .fields {
				/* display: -moz-flex;
				display: -webkit-flex;
				display: -ms-flex;
				display: flex;
				-moz-flex-wrap: wrap;
				-webkit-flex-wrap: wrap;
				-ms-flex-wrap: wrap;
				flex-wrap: wrap; */
				width: calc(100% + 3rem);
				margin: -1.5rem 0 2rem -1.5rem;
				
			}

			form > .fields > .field {
				/* -moz-flex-grow: 0;
				-webkit-flex-grow: 0;
				-ms-flex-grow: 0;
				flex-grow: 0;
				-moz-flex-shrink: 0;
				-webkit-flex-shrink: 0;
				-ms-flex-shrink: 0;
				flex-shrink: 0; */
				padding: 1.5rem 0 0 1.5rem;
				width: calc(100% - 1.5rem);
			}

			form > .fields > .field.half {
				width: calc(50% - 0.75rem);
			}

			form > .fields > .field.third {
				width: calc(100%/3 - 0.5rem);
			}

			form > .fields > .field.quarter {
				width: calc(25% - 0.375rem);
			} 
			h4 {
			display: inline-block;
			color: gray;}
		</style>
    </head>
	<body>

		<%-- <tiles:insertAttribute name="header"> </tiles:insertAttribute> --%>
		<jsp:include page="/WEB-INF/views/tpl/header.jsp"/>

	 <header class="masthead text-white text-center">
	 <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Board Modification</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
             <!--    <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7"> -->
                      
          
						
						<div class="readform">
							<form method="post" action="/board/modify" id="registForm" name="registForm">
								<div class="fields">
									<div class="field">
										<h4>번호</h4>
										<br>
										<input type="text" name="bno" value="${board.bno}" readonly />
							 		</div>
									<div class="field">
										<h4>* 제목</h4>
										<br>
										<input type="text" name="title" value="${board.title}" />
							 		</div>
									<div class="field">
										<h4>* 내용</h4>
										<br>
										<textarea name="content" rows="6" placeholder="Content" style="resize:none">${board.content}</textarea>
									</div>
									<div class="field">
										<h4>작성자</h4>
										<br>
										<input type="text" name="user_id" value="${board.user_id}" readonly/>
									</div>
									<input type="hidden" name="secret" value="0"/>
								</div>
								<div class="field registerButtons" style="text-align: center">
									<input type="button" class="btn btn-primary finish"  value="목룍" onclick="location.href='/board/list'"/>
									<input type="submit" class="btn btn-primary finish" value="수정완료"/> 
								</div>
							</form>
						</div>
					</div>
                            
                         <!-- <a href="/board/register"><button class="btn btn-primary" id="submitButton" type="submit">게시글 등록</button></a> -->
                        
                    <!-- </div> -->
           <!--      </div> -->
           <!--  </div> -->
        </section>
      </header>
		
			<%-- <tiles:insertAttribute name="footer"> </tiles:insertAttribute> --%>
			<jsp:include page="/WEB-INF/views/tpl/footer.jsp"/>
			
		 <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
       <!--  <script src="js/scripts.js"></script> -->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>