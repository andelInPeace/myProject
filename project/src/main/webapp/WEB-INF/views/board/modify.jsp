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
			input:focus{outline: none;}
			textarea.container:focus{outline: none;}
			#bno {
				display:inline-block;
				text-align: left;
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
				/* padding-left:0 10px; */
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
                      
          
							<form method="post" id="registForm" name="registForm">
								<input type="hidden" name="pageNum" value="${criteria.pageNum}">
								<input type="hidden" name="keyword" value="${criteria.keyword}">
								<input type="hidden" name="type" value="${criteria.type}">
								<div class="fields">
									<!-- 등록일 때 -->
									<c:if test="${board.register ne 1}">
										<div class="field">
											<h4>번호</h4>
											<input type="text" class="container" name="bno" value="${board.bno}" readonly />
								 		</div>
							 		</c:if>
									<div class="field">
										<h4>* 제목</h4>
										<input type="text" class="container" name="title" value="${board.title}" />
							 		</div>
									<div class="field" style="display:flex; align-items:center;">
										<h4>* 내용</h4>
										<textarea name="content" class="container" rows="8" placeholder="Content" style="resize:none; margin-left:0;">${board.content}</textarea>
									</div>
								
									 <div class="field" id="secret" style="display:flex;  align-items:center;">
	   									<h5>*비밀글</h5>
	   									<input id="secret" type="checkbox" name="secret" value="${board.secret}" style="display: inline-block; margin-left: 30px;" />
									</div>
								
									<div class="field">
										<h4>작성자</h4>
										<br>
										<input type="text" class="container" name="user_id" value="${board.user_id}" readonly/>
									</div>
									<div class="field">
										<h4>이름</h4>
										<input class="container" type="text" name="name" value="${board.name}" readonly/>
									</div>									
								     <input type="hidden" name="register" value="${board.register}" />
								</div>
								<c:if test="${board.register eq 1}">
									<div class="field registerButtons" style="text-align: center">
										<input type="button" class="btn btn-primary finish"  value="이전" onclick="location.href='/board/list${criteria.params}'"/>
										<input type="submit" class="btn btn-primary finish" value="등록"/> 
									</div>
								</c:if>
								<c:if test="${board.register ne 1}">
									<div class="field registerButtons" style="text-align: center">
										<input type="button" class="btn btn-primary finish"  value="목룍보기" onclick="location.href='/board/list${criteria.params}'"/>
										<input type="submit" class="btn btn-primary finish" value="수정완료" /> 
									</div>
								</c:if>	
							</form>
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
        
        <script>
        
        	$(document).ready(function(){
        		let secretVal = $('input:checkbox[name="secret"]').val();
        		console.log(secretVal);
        		
        		if(secretVal == '1'){
    				$('input:checkbox[name="secret"]').attr("checked",true);
    			}
        		
        		
        		$('input[type=checkbox][name=secret]').change(function() {
        	        if ($(this).is(':checked')) {
        	        	$('input:checkbox[name="secret"]').val(1);
        	        }else {
        	        	$('input:checkbox[name="secret"]').val(0);
        	        }
        	    });
        		
        		
        	})
			
			
			

        </script>