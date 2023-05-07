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
        <title>내 정보 수정</title>
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
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Info Update</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                       
                        <form method="POST" action="/member/update" id="contactForm">
                        
                            
                           <!-- user_no input--> 
                           <input type="hidden" name="user_no" id="user_no" value="${member.user_no}" /> 
                       
                            <div class="form-floating mb-3">
                                <input class="form-control" type="text" name="name" id="name" value="${member.name}" required />
                                <label for="name" id="name">*name</label>
                               <!--  <div class="invalid-feedback">이름을 적어주세요!!</div>  -->
                            </div>
                             <div class="form-floating mb-3">
                                <input class="form-control" type="text" name="id" id="id" value="${member.id}" readonly />
                                <label for="id">ID</label>
                                <div class="invalid-feedback"> ID를 적어주세요!!</div> -->
                            </div>
                           
                             <div class="form-floating mb-3">
                                <input class="form-control" type="password" name="pw" id="pw"  placeholder="Enter your pw..." required />
                                <label for="pw" for="pw" class="form-label">*New Password</label>
                                <div class="invalid-feedback"> 비번이 필요해요!!</div>
                            </div> 
                            <div class="form-floating mb-3">
                                <input class="form-control" id="pw_check" type="password" placeholder="Enter your pw..." required />
                                <label for="pw" for="pw" class="form-label">*Password Confirm</label>
                                <div class="invalid-feedback"> 비번을 확인해주세요!!</div>
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="email" name="email" id="email" value="${member.email}" required />
                                <label for="email">*Email address</label>
                                <div class="invalid-feedback">Email 을 적어주세요!!</div>
                                <div class="invalid-feedback">Email이 유효하지 않아요...</div> 
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" type="tel" name="phone" id="phone" value="${member.phone}" required />
	                              <label for="phone">*Phone number</label>
                                <div class="invalid-feedback">연락처를 적어주세요!!</div> 
                            </div>
                            
                   			<button class="btn btn-primary btn-xl" id="submitButton" type="submit">수정 완료</button>
                   		
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
       
        <script>
        	
        	// Example starter JavaScript for disabling form submissions if there are invalid fields
        	(function () {
        	  'use strict'

        	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
        	  var forms = document.querySelectorAll('.needs-validation')

        	  // Loop over them and prevent submission
        	  Array.prototype.slice.call(forms)
        	    .forEach(function (form) {
        	      form.addEventListener('submit', function (event) {
        	        if (!form.checkValidity()) {
        	          event.preventDefault()
        	          event.stopPropagation()
        	        }

        	        form.classList.add('was-validated')
        	      }, false)
        	    })
        	})()
        	
       
        	$(document).ready(function(e){
        		$("#submitButton").click(function(e){
            		e.preventDefault();
            		
            		let id = $("input[name='id']").val();
            		let pw = $("input[name='pw']").val();
            		let email = $("input[name='email']").val();
            		let phone = $("input[name='phone']").val();
            		let number = pw.search(/[0-9]/g);
            	    let english = pw.search(/[a-z]/ig);
            	    let spece = pw.search(/[`~!@@#$%^&*|₩₩₩\'₩\";:₩/?]/gi);
            	               	   
            	   
            	    
            		if(pw.length < 8 || pw.length > 15){
            			alert("pw는 8 ~ 15 이내로 입력해주세요.");            			
            			return false;
            		 } else if (pw.search(/\s/) != -1) {
            	        alert("비밀번호는 공백 없이 입력해주세요.");           	       
            	        return false;
            		} else if (!email){
            			alert("email을 확인 해 주세요."); 
            			return false;
            		} else if(email){
            			var regEmail = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;	
            				if (!regEmail.test(email)) {	
            			        alert('email 형식에 맞춰서 작성 해주세요.');
            			        return true; 
            			  	} 
            		}
            	   
            	    if(!phone){
            			alert("연락처를 확인 해 주세요.");
            			return false;
            		} else if (phone){
            			var regPhone =  /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/;
            				if(!regPhone.test(phone)){
        						alert("연락처 형식을 확인 해 주세요.");          			
        						return true;
        					}	
            		}
            		
            		if($('#pw').val() != $('#pw_check').val()){
            			alert('비밀번호를 다시 확인해주세요!!');
            			return;
            		}else{
            			$.post("/member/update", $("#contactForm").serialize(), 
            					function(date){
            					alert('회원 정보가 수정되었습니다 :)');
            					location.href = "/member/viewmember"; 
            			});
            		}	
            			/* var param = { 
            					/* user_no : $("#user_no").val(), */
            			/*		name : $("#name").val(),
            					id : $("#id").val(),
        	  					pw : $("#pw").val(),
            					email : $("#email").val(),
            					phone : $("#phone").val()
            				}
            			$.post("/member/update",
            			 		{param},
            			 		function(data){
            			 			alert('회원 정보가 수정되었습니다 :)');
            			 		});
            		}
            	*/
            	});
        	});
        	
        	

        </script>
        
	</body>
</html>
