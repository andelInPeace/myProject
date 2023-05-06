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
		
		<style>
		
			.invalid {
				color: red;
				border-bottom: red;
				display: none;
			}	
		</style>
	
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
                            <div class="form-floating mb-3 name">
                                <input class="form-control" name="name" id="name" type="text" required/>
                                <label for="name" id="name" class="form-label">Full name</label>
                                <div class="name invalid">이름이 필요해요!! </div>
                            </div>
                             <div class="form-floating mb-3 id">
                                <input class="form-control" name="id" id="id" type="text"  required />
                                <label for="id" id="id" class="form-label">ID</label>
                                <div class="id invalid"> ID를 확인해주세요!!</div>
                            </div>
                             <div class="form-floating mb-3 pw">
                                <input class="form-control" name="pw" id="pw" type="password"  required />
                                <label for="pw" for="pw" class="form-label">Password(8~15자리)</label>
                                <div class="pw invalid"> 비번을 확인해주세요!! </div>
                            </div> 
                            <div class="form-floating mb-3 pw">
                                <input class="form-control" id="pw_check" type="password" required />
                                <label for="pw" for="pw" class="form-label">Password Confirm</label>
                                <div class="pw invalid"> 비번을 확인해주세요!!</div>
                            </div>   
                            <!-- Email address input-->
                            <div class="form-floating mb-3 email">
                                <input class="form-control" name="email" id="email" type="email" required />
                                <label for="email" id="email" class="form-label">Email(email@example.com)</label>
                                <div class="email invalid">Email가 필요해요!!</div>
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3 phone">
                                <input class="form-control" name="phone" id="phone" type="tel" required />
                                <label for="phone" id="phone" class="form-label">Phone number(010-0000-0000)</label>
                                <div class="phone invalid">연락처가 필요해요 !!</div>
                            </div>
                            
                   			<button class="btn btn-primary btn-xl" id="submit" type="submit">가입신청</button>
                           
                            
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
       	<script src="/resources/js/scripts.js"></script>

        
        <script>
        	
	     // Example starter JavaScript for disabling form submissions if there are invalid fields
	      //(function () {
	         //'use strict'
	
	          // Fetch all the forms we want to apply custom Bootstrap validation styles to
	          //var forms = document.querySelectorAll('.needs-validation');
	
	          // Loop over them and prevent submission
	         // Array.prototype.slice.call(forms)
	           // .forEach(function (form) {
	             // form.addEventListener('submit', function(event) {
	              // if (!form.checkValidity()) {
	               //  event.preventDefault()
	               //   event.stopPropagation()
	               // }
	
	               // form.classList.add('was-validated')
	               //}, false)
	           // })
	      //  })()
        	
        	
        	
        	
        	$(document).ready(function(e){
        		$("#submit").click(function(e){
            		e.preventDefault();
            		
           			var name = $("input[name='name']").val();
            		var id = $("input[name='id']").val();
            		var pw = $("input[name='pw']").val();
            		var email = $("input[name='email']").val();
            		var phone = $("input[name='phone']").val();
            		var number = pw.search(/[0-9]/g);
            	    var english = pw.search(/[a-z]/ig);
            	    var spece = pw.search(/[`~!@@#$%^&*|₩₩₩\'₩\";:₩/?]/gi);
            	               	   
            	    if(!name){
            	    	alert("이름을 넣어주세요.");
            	    	return false;
            	    } else if (id.length < 5 || id.length > 15){
            			alert("id는 5 ~ 15 이내로 입력해주세요.");
            			return false;
            		} else if(pw.length < 8 || pw.length > 15){
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
            			        alert('이메일 형식에 맞춰주세요.');
            			        return false; 
            			  	} 
            		}
            	    // 연락처 확인 
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
            		
            		 // 비번 중복 체크 및 아이디 중복 체크 
            		if($('#pw').val() != $('#pw_check').val()){
            			alert('비밀번호를 확인 해 주세요!');          			
            		}
            		else{
            			
            			var param = { 
            					name : $("#name").val(),
            					id : $("#id").val(),
            					pw : $("#pw").val(),
            					email : $("#email").val(),
            					phone : $("#phone").val()
            				}
                		
                		$.ajax({
            				url: '/member/register',
            				processData: false,
            				contentType: "application/json; charset=utf-8",
            				data: JSON.stringify(param),
            				type: "post",
            				dataType: "text",
            				success: function(result){
            					console.log(result);
            					if(result == "idDuple"){
            						alert("중복된 ID 입니다.");
            						return;
            					}else{
            						alert("가입을 축하드립니다 𖤐 ");
            						location.href = "/";    						
            					} 
            				},
                			error:function(error){
                			console.log("error: ", error);
                		}
            			});
            		}
            	
            	});
        		
        		
        	});
        
 	
        </script>

</body>
</html>