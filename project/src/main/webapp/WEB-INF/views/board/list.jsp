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
        <title>게시판 보기</title>
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
				/* .btn {
				float: left;
				margin : 20px 30px; */
				/* font-size: 0.8rem;
				height: 2.4375rem;
				line-height: 2.4375rem;
				padding: 0 1.5rem; */
				/* } */
				#submitButton {
					display : inline-block;
					margin: 10px auto;
					padding: 0.8rem 1.5rem; 

				}
				a {text-decoration: none;}
				#notice {
				display:inline-block;
				margin : 10px auto;
				padding: 10px auto;
				/* border: 1px solid gray; */
				color:  #043C73;
				font-size: 1 rem;
				}
				@media(max-width: 860px){
					body{transform: scale(1); over-flow-x:hidden;}
					.regDate {display: none;}
					.updateDate{display: none;}
				}
		</style>
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
                      
                    <!--   <a href="/board/register"><button type="button" class="btn btn-outline-dark">글 등록</button></a> -->
                      <!-- <a class="btn btn-outline-dark" href="/board/register" role="button">글 등록</a> -->
                       <table class="table">
						  <thead>
						    <tr class="tHead">
						      <th scope="col">#</th>
						      <th scope="col">제목</th>
						      <th scope="col" class="user_id">작성자</th>
						      <th scope="col" class="regDate">작성일</th>
						      <th scope="col" class="updateDate">수정일</th>
						    </tr>
						  </thead>
						  <tbody>
						  	<c:forEach var="board" items="${boardList}">
						  	<!-- val 은 선언 해 준거고 Items 가 전달 받은 서   -->
						  		<tr class="tBody">
						  			<td class="bno">${board.bno}</td>
						  			<td class="title"><a href="/board/read?bno=${board.bno}">${board.title}</a></td>
						  			<td class="user_id">${board.user_id}</td>
						  			<td class="regDate">${board.regDate}</td>
						  			<td class="updateDate">${board.updateDate}</td>
						  		</tr>
						  	</c:forEach>
						  </tbody>
					</table>
					<div style="margin: 10px auto;">
						
						<c:if test="${pageDTO.prev}">
							<a class="changePage" href="${pageDTO.startPage-1}"><code>&lt;</code></a>
						</c:if>
						
						<c:forEach var="num" begin="${pageDTO.startPage}" end="${pageDTO.endPage}">
							<c:choose> 
								<c:when test="${pageDTO.criteria.pageNum == num}">
									<code><c:out value="${num}"></c:out></code>
								</c:when>
								<c:otherwise>
								<!-- 현재 페이지가 아닐 때 : a 태그  -->
									<a class="changePage" href="${num}"><code><c:out value="${num}"></c:out></code></a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${pageDTO.next}">
							<a class="changePage" href="${pageDTO.endPage+1}"><code>&gt;</code></a>
						</c:if>
					</div>
					<form name="pageForm" action="/board/list">
						<input type="hidden" name="pageNum" value="${pageDTO.criteria.pageNum}">
					</form>
                    
                          <c:if test="${!empty user}">
                        	 <a href="/board/register"><button class="btn btn-primary" id="submitButton" type="submit">게시글 등록</button></a>
                          </c:if>
                          <c:if test="${empty user}">
                          	<div id="notice">* 게시글은 가입 회원만 작성 가능합니다 *</div>
                          </c:if>
                          
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
        <script>
        	$("a.changePage").on("click", function(e){
        		e.preventDefault();
        		console.log("페이지 이동");
        		let $form = $(document.pageForm);
        		//form 태그 자식 요소중 name = pageNum 요소 가져오기  
        		$form.find("input[name='pageNum']").val($(this).attr("href")); /* jQuery 객체라 앞에 $  */
        		$form.submit();
        		/* $(this) 에 있는 속성 중, Href 값이 내가 이동하고자 하는 페이지  */
        		/* 이것이 Input 태그 값의 벨류 값으로 변경이 되니까 그 값으로 이동   */
        	});
        </script>
       