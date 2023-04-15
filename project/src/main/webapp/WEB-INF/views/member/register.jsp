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
        <title>함께해요</title>
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
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">참전신청서</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <form method="post" id="contactForm" class="needs-validation" novalidate>
                            <!-- Name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" name="name" id="name" type="text" placeholder="Enter your name..." required/>
                                <label for="name" id="name" class="form-label">Full name</label>
                                <div class="invalid-feedback">이름이 필요해요!! </div>
                            </div>
                             <div class="form-floating mb-3">
                                <input class="form-control" name="id" id="id" type="text" placeholder="Enter your name..." required />
                                <label for="id" for="id" class="form-label">ID</label>
                                <div class="invalid-feedback"> ID가 필요해요!!</div>
                            </div>
                             <div class="form-floating mb-3">
                                <input class="form-control" name="pw" id="pw" type="password" placeholder="Enter your pw..." required />
                                <label for="pw" for="pw" class="form-label">Password</label>
                                <div class="invalid-feedback"> 비번이 필요해요!!</div>
                            </div> 
                            <div class="form-floating mb-3">
                                <input class="form-control" id="pw_check" type="password" placeholder="Enter your pw..." required />
                                <label for="pw" for="pw" class="form-label">Password Confirm</label>
                                <div class="invalid-feedback"> 비번을 확인해주세요!!</div>
                            </div>   
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" name="email" id="email" type="email" placeholder="name@example.com" required />
                                <label for="email" id="email" class="form-label">Email address</label>
                                <div class="invalid-feedback">Email가 필요해요!!</div>
                                <div class="invalid-feedback">Email이 유효하지 않아요...</div>
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" name="phone" id="phone" type="tel" placeholder="(123) 456-7890" required />
                                <label for="phone" id="phone" class="form-label">Phone number</label>
                                <div class="invalid-feedback">연락처가 필요해요 !!</div>
                            </div>
                            
                   			<button class="btn btn-primary btn-xl" id="submitButton" type="submit">가입신청</button>
                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                         <!--  <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder">가입 신청이 완료되었습니다!</div>
                                    <br />
                                </div>
                            </div> -->
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                           <!--  <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div> -->
                            <!-- Submit Button-->
                            
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
       <!--  <script src="js/scripts.js"></script> -->
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
        	
        	
        	// 

        	
        	
        	
        	$(document).ready(function(e){
        		$("#submitButton").click(function(e){
            		e.preventDefault();
            		if($('#pw').val() != $('#pw_check').val()){
            			alert('check your password!');
            		}else{
            			
            			var param = { 
            					name : $("#name").val(),
            					id : $("#id").val(),
            					pw : $("#pw").val(),
            					email : $("#email").val(),
            					phone : $("#phone").val()
            				}
                		
                		$.ajax({
            				url: "/member/register",
            				processData: false,
            				contentType: "application/json; charset=utf-8",
            				data: JSON.stringify(param),
            				type: "post",
            				dataType: "json",
            				success: function(result){
            					alert(result);
            					if(result == "idDuple"){
            						alert("중복된 ID 입니다.");
            						return;
            					}else{
            						alert("가입을 축하드립니다 𖤐 ");
            						location.href = "/";    						
            					}    					
            				}
            			});
            		}
            	
            	});
        		
        		
        	});
        	
        	
        
        	
        </script>
        
        <script th:src="@{/js/jquery-3.6.0.min.js}" type="text/javascript"></script>
        <script th:src="@{/js/jquery.serialize-object.min.js}"></script>

</body>
</html>