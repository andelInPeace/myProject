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
        <title>게시글 작성</title>
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
			#bno {
				margin: 0 auto;
				display:inline-block;
				text-align: left; 
				display: inline-block;
				font-size: 1.4rem;
			}
			h4 {
				display: inline-block;
				color: #0B4274 ;
				font-size: 1.2rem;
				width: 80px;
			}
			h5 {
				display: inline-block;
				color: #0B4274;
				font-size: 1rem;
				margin-bottom: 0;
			}	
	
			form > .fields {
				text-align: left;
				padding: 
			}
			form > .fields > .field {
				padding: 1.5rem 0 0 4rem;
				width: calc(100% - 1.5rem);
				boarder: 1px solid #043C73;
				display:flex; 
				align-items:center;
			}

			form > .fields {
				width: calc(100% + 3rem);
				margin: -1.5rem 0 2rem -1.5rem;
				
			}
	 	 	textarea.container {
				display: inline-block;
				width: 80%;
				border: 1.5px solid #DCEBEC;
				padding: 8px;
			} 
			.container {
				display: inline-block;
				width: 80%;
			}
			input.container {
				border: 1.5px solid #DCEBEC;
				padding: 8px;
				margin-left: 0;
			}
			/*
			form { margin: 0 0 2rem 0;}

			form > :last-child {
				margin-bottom: 0;
			}
	
			form > .fields {
				width: calc(100% + 3rem);
				margin: -1.5rem 0 2rem -1.5rem;
			}

			form > .fields > .field {
				padding: 1.5rem 0 0 1.5rem;
				width: calc(100% - 1.5rem);
				boarder: 1px solid #043C73;
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
			color: gray;
			}
			*/
		</style>
    </head>
	<body>

		<tiles:insertAttribute name="header"> </tiles:insertAttribute>

	 <header class="masthead text-white text-center">
	 <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Board Register</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
               <!--  <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                     <div class="readform"> -->
                     
							<form method="post" action="/board/register" id="registForm" name="registForm" enctype="multipart/form-data">
								<div class="fields">
									
									<div class="field" id="title">
										 <h4>제목</h4> 
										<input id="title" class="container" name="title" placeholder="Title" type="text" />
							 		</div>
									<div class="field" style="display:flex;  align-items:center;">
											<h4>내용</h4>
										<textarea class="container" name="content" rows="8" placeholder="Content" style="resize:none; margin-left:0;">${board.content}</textarea>
									</div>
									<div class="field" id="secret" style="display:flex;  align-items:center;">
   										<h5>*비밀글</h5>
   										<input id="secret" type="checkbox" name="secret" value="1" style="display: inline-block; margin-left: 30px;" />
									</div>
									<div class="field">
										<h4>작성자</h4>
										<input class="container" name="user_id" value="${user_id}" type="text" readonly/>
									</div>
								</div>
								<div class="field registerButtons" style="text-align: center">
										<input type="button" class="btn btn-primary finish"  value="이전" onclick="location.href='/board/list'"/>
										<input type="submit" class="btn btn-primary finish" value="등록"/> 
								</div>
							</form>
						</div>
					</div>
                       
                        
                    <!-- </div>
                </div>
            </div> -->
        </section>
      </header>
		
		<tiles:insertAttribute name="footer"> </tiles:insertAttribute>
		
		 <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
       <!--  <script src="js/scripts.js"></script> -->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    