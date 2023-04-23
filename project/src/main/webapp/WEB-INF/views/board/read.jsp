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
				padding-left:0 10px;
			} 
			.container {
				display: inline-block;
				width: 80%;
			}
			input.container {
				border: 1.5px solid #DCEBEC;
				padding: 8px;
				margin-left: 0;
				/* border-left-width: 0; 
			   	border-right-width: 0;
			   	border-top-width: 0; 
			   	border-bottom-width: 0; */
			   	/* 1 solid #0EC9D5 */
			}
		
			/* form {
				margin: 0 0 2rem 0;
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
			}  */
			
		</style>
    </head>
	<body>

		<%-- <tiles:insertAttribute name="header"> </tiles:insertAttribute> --%>
		<jsp:include page="/WEB-INF/views/tpl/header.jsp"/>

	 <header class="masthead text-white text-center">
	 <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Board Read</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
             <!--    <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7"> -->
                     
						
			
							<form method="get" action="/board/remove" id="registForm" name="registForm">
								<div class="fields">
									<div class="field">
										<h4>번호</h4>						
										<input class="container" id="bno" type="text" name="bno" value="${board.bno}" style="border:none;" readonly />
							 		</div>
									<div class="field">
										<h4>제목</h4>	
										<input class="container" type="text" name="title" value="${board.title}" readonly  />
							 		</div>
							 		
									<div class="field" style="display:flex; align-items:center;">
											<h4>내용</h4>
										<textarea class="container" name="content" rows="8" placeholder="Content" style="resize:none; margin-left:0;" readonly>${board.content}</textarea>
									</div>
									
									<div class="field">
										<h4>작성자</h4>
										<input class="container" type="text" name="writer" value="${board.user_id}" readonly/>
									</div>
								</div>
								<div class="field registerButtons" style="text-align: center">
									<input type="button" class="btn btn-primary finish"  value="이전" onclick="location.href='/board/list${criteria.params}'"/>
									<c:if test="${userId eq board.user_id}">
										<input type="button" id="modifyButton" class="btn btn-primary finish"  value="수정" onclick="location.href='/board/modify${criteria.params}&bno=${board.bno}'"/> 
										<input type="submit" class="btn btn-primary finish"  value="삭제"/> 
									</c:if>
										<!-- <a href="/board/list" class="btn btn-primary finish">이전</a> -->
										<!-- <a href="javascript:void(0)" class="btn btn-primary finish">수정</a>
										<a href="javascript:void(0)" class="btn btn-primary cancel">삭제</a> -->
								</div>
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
        
<!--         <script>
	        $(document).ready(function(e){
	    		$("#submitButton").click(function(e){
	        		e.preventDefault();
	        		if($('#pw').val() != $('#pw_check').val()){
	        			alert('비밀번호를 다시 확인해주세요!!');
	        			return;
	        		}else{
	        			$.post("/member/update", $("#registForm").serialize(), 
	        					function(date){
	        					alert('회원 정보가 수정되었습니다 :)');
	        					location.href = "/member/viewmember"; 
	        			});
	        		
	  				}
	          	});
	    	});	
        </script> -->