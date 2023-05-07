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
        <title>게시글 보기</title>
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
			/* body{} */
			.footerMsg{
				display: block;
				color: white;
				font-size: 16px;
				font-style: italic;
			}
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
				font-size: 15px;
                color: #1369ba;
                display: block;
                text-align: left;
   				/* margin-left: 62px */
            }
			a{
				text-decoration: none;
			}
			
			form > .fields {
				text-align: left;
				padding: 
			}
			form > .fields > .field {
				padding: 1.5rem 0 0 4rem;
				width: calc(100% - 1.5rem);
				/* border: 1px solid ; */
				display:flex; 
				align-items:center;
			}

			form > .fields {
				width: calc(100% + 3rem);
				margin: -1.5rem 0 2rem -1.5rem;
				
			}
			
			.container {
				display: inline-block;
				width: 80%;
			}
	 	 	textarea.container {
				display: inline-block;
				width: 80%;
				border: 1.5px solid #DCEBEC;
				padding-left:0 10px;
			} 
			
			input.container {
				border: 1.5px solid #DCEBEC;
				padding: 8px;
				margin-left: 0;
			}
			
		
			
			
			
			ul.icons, ul.replies{
				cursor: default;
				list-style: none;
				padding-left: 0;
				color: #0B4274;
				text-align: left;
   			 	width: 90%;
    			display: block;
			}
	
			ul.icons li {
				display: block;
				padding: 0 1rem 0 0;
				color: #0B4274;
			}

			ul.icons li:last-child {
				padding-right: 0;
			}

			ul.icons li .icon:before {
				font-size: 1.75rem;
			}
			
			div.line {
				border-bottom: 1px solid #DCEBEC;
				margin-top: 3px;}
			
			img {
				width: 18px;
				padding-bottom: 5px;
				padding-right: 3px;
			}
			a.register{
				display: inline-block;
				font-size: 16px;
   			 	width: 100%;
			}
			.register-form {
				width: 80%;
				margin: 0 auto;
				display: flex;
    			flex-direction: column;
    			align-items: center;
			}
			.reply-container, #reply-container {
				display: inline-block;
				width: 100%;
				border: 1px solid #DCEBEC;
				text-align: left;
			
			}
			.reply-b {
				width: 50px;
    			font-size: 12px;
    			border: 0.8px solid;
			}
			.reply-f{
				/* text-align:left;  */
				/* padding-left:30px; */
				padding-bottom:12px;
				text-align: left;
				width: 80%;
			}
			#notice {
				display:inline-block;
				margin : 10px auto;
				padding: 10px auto;
				/* border: 1px solid gray; */
				color:  #043C73;
				font-size:  12px;
			}
	/* 		div.field{
				padding: 1.5rem 0 0 4rem;
				width: calc(100% - 1.5rem);
				boarder: 1px solid #043C73;
				display:flex; 
				align-items:center; 
			}*/
			
			
		/* 	textarea.container {
			    display: inline-block;
			    width: 80%;
			    border: 1.5px solid #DCEBEC;
			    padding-left: 0;
			    margin-left: 0;
			}   */ 
			
		/* 	div.register-form {
				display: inline-block;
				font-size: medium;
				color: #0B4274;
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
									<div class="field">
										<h4>이름</h4>
										<input class="container" type="text" name="name" value="${board.name}" readonly/>
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
								
								
								
									<div style="display:inline-block; text-align: left; margin-bottom: 8px; margin-top: 10px;">
											<c:if test="${!empty user}">
												<a class="btn btn-primary medieum register">댓글 등록</a>
											</c:if>
											<c:if test="${empty user}">
		                          				<div id="notice">* 댓글은 가입 회원만 작성 가능합니다 *</div>
		                          			</c:if>
									</div>
								</div>
								<ul class="icons" style="margin:0;">
									<li style="magin-top:5px;">
										<span class="icon solid fa-envelope"></span>
										<strong><img src="/resources/assets/img/comment01.png">댓글</strong>
									</li>						
								</ul>
								<div style="display:block; text-align:center;">
									<div class="register-form" style="display:none;">
										<div class="reply-f">
											<h5>작성자</h5>
											<input class="reply-container replyId" name="user_id" type="text" value="${user.id}" readonly>
										</div>
										<div class="reply-f">
											<h5>댓글</h5>
											<textarea class="reply-container" name="reply" rows="6" placeholder="comments" style="resize:none;"></textarea>
										</div>	
										<div class="field registerButtons">
											<a href="javascript:void(0)" class="btn btn-outline-primary reply-b finish">등록</a>
											<a href="javascript:void(0)" class="btn btn-outline-primary reply-b cancel">취소</a>
										</div>	
									</div> <!-- register-form -->
								</div>
								<ul class="replies"> </ul>
								<div class="paging" style="text-align: center;"></div>
								<input class="userId" type="hidden" value="${user.id}">
							</form>
						</div>
			
    
        </section>
      </header>
		
		<%-- <tiles:insertAttribute name="footer"> </tiles:insertAttribute> --%>
		<jsp:include page="/WEB-INF/views/tpl/footer.jsp"/>
			
        
    </body>
    
       <!-- Bootstrap core JS-->
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
       <!-- Core theme JS-->
       <!--  <script src="js/scripts.js"></script> -->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script src="/resources/js/reply.js"></script>
        
        <script>
        	let bno = "${board.bno}";
			let page = 1;
			
        	const repliesUL = $("ul.replies");
        	
        	showList(page);
        	
        	// 댓글 페이징 처리 
        	function showReplyPage(total){
        		
        		let endNum = Math.ceil(page / 10.0) * 10;
    			let startNum = endNum - 9;
    			let prev = startNum != 1;
    			let next = false;
    			let str = "";
        		
        		if(endNum * 10 >= total){
        			endNum = Math.ceil(total/10.0);
        		}
        		if(endNum * 10 < total){
        			next = true;
        		}
        		
        		if(prev){
        			str += `<a class='changePage' href=` + (startNum-1) + `><code>&lt;</code></a>`;
        		}
        		
        		for(let i = startNum; i <= endNum; i++){
    				if(page == i){
    					str += `<code style="display: inline-block; margin: 5px; font-size: 15px;">` + i + `</code>`;
    				}else{
    					str += `<a class='changePage' style="display: inline-block; margin: 5px; font-size: 15px;" href=` + i + `><code>` + i + `</code></a>`;
    				}
    			}
        		
        		if(next){
        			str += `<a class='changePage' href=` + (endNum+1) + `><code>&gt;</code></a>`;
        		}
        		$("div.paging").html(str);
        	}
        	
        	function showList(page){
        		replyService.getList({
        			bno: bno,
        			page: page,
        		},function(result){
        			let list = result.list;
        			let total = result.total;
        			let str="";
        			let date = "";
        			

        			for(let i=0; i<list.length;i++){
        				let check = false;
        				check = list[i].replyDate == list[i].updateDate;
        				date = check ? list[i].replyDate : list[i].updateDate;
        				// 댓글 작성자 아이디 
        				let replyId = list[i].user_id;
        				// 세션 로그인 아이디 
            			let userId = $("input.replyId").val();
        				// 출력해보기 
        				console.log("댓글작성자아이디: " + userId);
        				console.log("세션로그인아이디: " + replyId);

        		
						str += `<li id=` + list[i].rno + ` style="display: block;">`;	   
						str += `<div style="display:flex; justify-content:space-between;">`;
						str += `<strong style="display:block;" class="userId">`+ list[i].user_id +`</strong>`;
						str += `<div>`
						if(replyId == userId){
							str += `<a href= ` + list[i].rno + ` class="modify-ready" style="border:none;">수정</a>`;
							str += `<a href= ` + list[i].rno + ` class="modify-finish" style="display:none;">완료</a>`;
							str += `&nbsp;&nbsp;&nbsp;&nbsp;<a href= ` + list[i].rno + ` class="remove">삭제</a>`;
						}
						str += `</div>`;
						str += `</div>`;
						str += `<p style="margin-top: 5px;" class=` + list[i].rno + `>`+ list[i].reply + `</p>`;
						str += `<div style="display: block; text-align: right; font-size:small;">` + (check?"":"*") + replyService.displayTime(date) + `</div>`;
						str += `<div class="line"></div>`;
						str += `</li>`;
        			}
        			repliesUL.html(str);
        			showReplyPage(total);
        		});
        	}
        	
        	// 페이지 이동 
        	$("div.paging").on("click", "a.changePage", function(e){
        		e.preventDefault();
        		page = $(this).attr("href");
        		showList(page);
        	});
        	
        	
        	$("a.finish").on("click", function(e){
        		e.preventDefault();
        		replyService.add({
        			bno: bno,
        			reply: $("textarea[name='reply']").val(),
        			user_id: $("input[name='user_id']").val()
        		}, function(){
        			showList(page);
        			$("textarea[name='reply']").val("");
        			$("input[name='user_id']").val("");	
        		});
        	});
        	
        	$("a.register").on("click", function(e){
        		e.preventDefault();
        		$("div.register-form").show();
        		$(this).hide();
        	});
        	
        	$("a.cancel").on("click", function(e){
        		e.preventDefault();
        		$("div.register-form").hide();
        		$("a.register").show();
        	});
        	
        	//한 댓글 수정 시 다른 댓글 수정 막기 
        	let check = false;
        	
        	//수정 버튼 누르면 
        	$("ul.replies").on("click", "a.modify-ready", function(e){
        		e.preventDefault();
        		const remove = $("a.remove");
      
        		if(check){
        			alert("이미 수정중인 댓글이 있어요!!");
        			return;
        		}
        		let finish = $("a.modify-finish");
    			let rno = $(this).attr("href");
        		const p = $("li#" + rno).find("p." + rno);
        		
        		
        		$(this).hide();
        		for(let i=0; i<finish.length;i++){
        			if(finish[i].getAttribute("href")==rno){
        				$(finish[i]).show();
        				$(remove[i]).attr("class", "modify-cancel");
                		$(remove[i]).text("취소");
        				break;
        			}
        		}
        		p.html("<textarea id = 'reply-container' class=" + rno + " style='resize: none; border:none outline:none;'>" + p.text() + "</textarea>");
        		check = true;
        	}); 
        	
        	
        	
        	// 완료 
        	$("ul.replies").on("click","a.modify-finish",function(e){
        		e.preventDefault();
        		
        		let rno = $(this).attr("href");
        		const p = $("li#" + rno).find("p." + rno);
        		
        		replyService.modify({
    				reply:  $("textarea." + rno).val(),
    				rno: $(this).attr("href")
        		}, function(){
        			 p.html($("textarea." + rno).val());
        			 
        			 $(this).hide();
        			 $(this).prev().show();
        			 
        			 showList(page);
        			 check = false;
        		});
        	});
        	
        	// 수정취소 
        	$("ul.replies").on("click", "a.modify-cancel",function(e){
        		e.preventDefault();
        		let rno = $(this).attr("href");
        		const p = $("li#" + rno).find("p." + rno);
        		
        		p.html($("textarea." + rno).text());
        		
        		$(this).attr("class", "remove");
        		$(this).text("삭제");
        		$(this).prev().hide();
        		$(this).prev().prev().show();
        		check = false;
        	});
        	
        	//삭제 
        	$("ul.replies").on("click", "a.remove", function(e){
        		e.preventDefault();
        		
        		if(confirm("정말 삭제하시겠습니까?")){
	        		replyService.remove($(this).attr("href"),function(){
	        			showList(page);
	        		});
        		}
        	});
        	
        	
			/* 댓글 추가 */
        	/*
			replyService.add({
        		bno : bno,
        		reply : "모듈화 테스트.",
        		user_id : "nabi01"
        	}, function(result){
        		console.log(result);
        	});
			*/
			
			/* 목록보기  */
			/*
			replyService.getList({bno:bno, page:2}, function(list){
				console.log(list);
			});
			*/
			
			/* 댓글 삭제*/
			/*
			replyService.remove(30, function(result){
				alert(result);
			});
        	*/
        	
        	/* 댓글 수정 */
        	/*
        	replyService.modify({
        		reply: "댓글 수정 테스트.",
        		rno: "29",
        	}, function(result){
        		alert(result);
        	});
        	*/
        	
        	/* 댓글 1개 조회 */
        	/*
        	replyService.getReply(29, function(reply){
        		console.log(reply);
        	});
        	*/
        </script>
</html>