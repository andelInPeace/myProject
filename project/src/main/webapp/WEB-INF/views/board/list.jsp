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
        <title>게시판</title>
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
				/* body{transform: scale(0.8);} */
				.small-width{display: none;}
				.big-width {display:block;}
				.table-wrapper {overflow-x: hidden;}
				select{
					width: 20%;
					display: inline;
				}
				
				input[name='keyword']{
					display: inline;
					width: 80%;
					margin-left: 20px;
				}
				
				.search {
					border: 1px solid ;
					width: 15%;
					margin-left: 20px;
				}
					
				@media(max-width: 860px){
					body{transform: scale(1); over-flow-x:hidden;}
					.big-width {display:none;}
					.small-width {display: block;}
					.regDate {display: none;}
					.updateDate{display: none;}
				}
				
				#submitButton {
					display : inline-block;
					margin: 10px auto;
					padding: 0.8rem 1.5rem; 
				}
				
				a {text-decoration: none;}
				
				form > .fields {
					width: calc(100% + 3rem);
					margin: -1.5rem 0 2rem -1.5rem;
					text-align: left;
				}
				
				form > .fields > .field {
					padding: 1.5rem 0 0 4rem;
					width: calc(100% - 1.5rem);
					boarder: 1px solid #043C73;
					display:flex; 
					align-items:center;
				}
				form > .fields > .field01 {
					padding: 2rem 0 0 1.5rem;
					width: calc(100% - 1.5rem);
					display:flex; 
					align-items:center;
				}

				
				#notice {
				display:inline-block;
				margin : 10px auto;
				padding: 10px auto;
				/* border: 1px solid gray; */
				color:  #043C73;
				font-size: 1 rem;
				}
				
				code {
					border-radius: 2px;
					border: 1px solid #DCEBEC;
					font-family: "Courier New", monospace;
					font-size: 0.8rem;
					margin: 0 0.2rem;
					padding: 0.2rem 0.6rem;
				}
				img {
					width: 17px;
				    padding-bottom: 5px;
				    padding-right: 1px;
				}
		</style>
    </head>
<body>
	

		<jsp:include page="/WEB-INF/views/tpl/header.jsp"/>

	
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
                    <div class="col-lg-8 col-xl-7" style="width: 90%">
                      
                    <!--   <a href="/board/register"><button type="button" class="btn btn-outline-dark">글 등록</button></a> -->
                      <!-- <a class="btn btn-outline-dark" href="/board/register" role="button">글 등록</a> -->
                       <table class="table">
						  <thead>
						    <tr class="tHead">
						      <th scope="col" class="bno">#</th>
						      <th scope="col" class="title" style="width: 40%">제목</th>
						      <th scope="col" class="user_id">작성자</th>
						      <th scope="col" class="regDate">작성일</th>
						      <th scope="col" class="updateDate">수정일</th>
						    </tr>
						  </thead>
						  <tbody>
						  	<c:forEach var="board" items="${boardList}">
						  	<!-- val 은 (변수로) 선언 해 준거고 Items 가 전달 받은 서   -->
						  		
							  		<tr class="tBody">
							  			<td class="bno">${board.bno}</td>
							  			<!-- 비밀글이 아닌 경우  -->
							  			<c:if test="${board.secret eq 0}">
								  			<td ><a href="/board/read${pageDTO.criteria.params}&bno=${board.bno}">${board.title}</a></td>
								  		</c:if>
								  		<!--  비밀글인 경우 -->
								  		<c:if test="${board.secret eq 1}">
								  			<!-- 관리자 or  로그인 당사자   -->
								  			<c:if test="${user.id eq board.user_id || user.admin eq '1'}">
								  				<td ><a href="/board/read${pageDTO.criteria.params}&bno=${board.bno}"><img src="/resources/assets/img/lock.png">${board.title}</a></td>
								  			</c:if>
								  			<!-- 관리자 X and 로그인 당사자 X -->
								  			<c:if test="${user.id ne board.user_id && user.admin ne '1'}">
								  				<td><img src="/resources/assets/img/lock.png">비밀글입니다.</td>
								  			</c:if>
								  		</c:if>	
							  			<td class="user_id">${board.user_id}</td>
							  			<td class="regDate">${board.regDate}</td>
							  			<td class="updateDate">${board.updateDate}</td>
							  		</tr>
						  		
						  	</c:forEach>
						  </tbody>
					</table>
					
					<!-- 검색란  -->
					<form action="/board/list" name="searchForm">
						<div class="fields">
							<div class="field01" style="text-aling: center;">
							<!-- name 은 파라미터 이름과 맞춰주기  -->
								<select name="type">
								
									<option value="" ${pageDTO.criteria.type == null? 'selected' : ''}>검색기준</option>
									<!-- 사용자가 이전에 뭘 선택했는지를 알기 위해 criteria 객체를 가져옴  -->
									<option value="TCU" ${pageDTO.criteria.type == 'TCW' ? 'selected' : ''}>전체</option>
									<option value="T" ${pageDTO.criteria.type == 'T' ? 'selected' : ''}>제목</option>
									<!-- 사용자가 이전에 '제목'을 선택했을 경우 ? 참이면 selected 거짓이면 ' ' -->
									<option value="C" ${pageDTO.criteria.type == 'C' ? 'selected' : ''}>내용</option>
									<option value="U" ${pageDTO.criteria.type == 'U' ? 'selected' : ''}>작성자</option>
									<option value="TC" ${pageDTO.criteria.type == 'TU' ? 'selected' : ''}>제목 또는 내용</option>
									<option value="TU" ${pageDTO.criteria.type == 'TC' ? 'selected' : ''}>제목 또는 작성자</option>
								</select>
								<input type="text" name="keyword" value="${pageDTO.criteria.keyword}">
								<input type="hidden" name="pageNum" value="${pageDTO.criteria.pageNum}">
								<a href="javascript:send()" class="search button primary icon solid fa-search" style="text-align: center">검색</a>
							</div>
						</div>
					</form>
					
					<!-- 페이징처리 -->
					<div style="margin: 10px auto; text-align: center;" class="big-width">
						
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
					<!-- 휴대폰 페이지 -->
					<div style="text-align: center;" class="small-width">
						<!-- 이전 페이지  -->
						<c:if test="${pageDTO.criteria.pageNum > 1}">
							<a class="changePage" href="${pageDTO.criteria.pageNum - 1}"><code>&lt;</code></a>
						</c:if>
						<!-- 현재 페이지만 나오면 돼서 반복문 필요 없음 -->
						<code><c:out value="${pageDTO.criteria.pageNum}"></c:out></code>
						<!-- 다음 페이지  -->
						<c:if test="${pageDTO.realEnd > pageDTO.criteria.pageNum}">
							<a class="changePage" href="${pageDTO.criteria.pageNum + 1}"><code>&gt;</code></a>
						</c:if>
					</div>
					
					<form name="pageForm" action="/board/list">
						<input type="hidden" name="pageNum" value="${pageDTO.criteria.pageNum}">
						<input type="hidden" name="keyword" value="${pageDTO.criteria.keyword}">
						<input type="hidden" name="type" value="${pageDTO.criteria.type}">
					</form>
                    
                          <c:if test="${!empty user}">
                        	 <a href="/board/register${criteria.params}"><button class="btn btn-primary" id="submitButton" type="submit">게시글 등록</button></a>
                          </c:if>
                          <c:if test="${empty user}">
                          	<div id="notice">* 게시글은 가입 회원만 작성 가능합니다 *</div>
                          </c:if>
                          
                    </div>
                </div>
            </div>
        </section>
      </header>
		
		<jsp:include page="/WEB-INF/views/tpl/footer.jsp"/>
		
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
        	
        	function send(){
    
        		let $form = $(document.searchForm);
        		// option 태그에서 Selected 된 것만 가져오기 
        		if(!$form.find("option:selected").val()){
        			alert("검색 종류를 선택하세요.");
        			return;
        		}
        		if(!$form.find("input[name='keyword']").val()){
        			alert("키워드를 입력하세요.");
        			return;
        		}
        		
        		$form.submit();
        	}
        	
        </script>
       