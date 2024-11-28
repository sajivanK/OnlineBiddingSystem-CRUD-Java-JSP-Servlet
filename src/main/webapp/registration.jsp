<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <!-- <link rel="stylesheet" href="css/registor.css">  -->
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    
    <style>
    	
		* {
		    margin: 0;
		    padding: 0;
		    box-sizing: border-box;
		    font-family: "Poppins", "sans-serif";
		}
		body{
		    min-height: 100vh;
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    padding: 20px;
		    background: rgb(130,106,251);
		}
		
		.regcontainer{
		    position: relative;
		    max-width: 700px;
		    width: 100%;
		    background: #fff;
		    padding: 25px;
		    border-radius: 8px;
		    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
		}
		
		.regcontainer header{
		    font-size: 1.5rem;
		    color: #333;
		    font-weight: 500;
		    text-align: center;
		}
		
		.regcontainer .form{
		    margin-top: 30px;
		}
		
		.form .input-box{
		    width: 100%;
		    margin-top: 20px;
		}
		
		.input-box label{
		    color: #333;
		
		}
		
		.form :where(.input-box input, .select-box){
		    position: relative;
		    height: 50px;
		    width: 100%;
		    outline: none;
		    border: 1px solid #ddd;
		    border-radius: 6px;
		    padding: 0 15px;
		    font-size: 1rem;
		    color: #707070;
		    margin-top: 8px;
		    padding: 0 15px;
		}
		.input-box input:focus{
		    box-shadow: 0 1px 0 rgba(0,0,0,0.1);
		}
		.form .column{
		    display: flex;
		    column-gap: 15px;
		}
		
		.form .gender-box{
		    margin-top: 20px;
		}
		.gender-box h3{
		    color: #333;
		    font-size: 1rem;
		    font-weight: 400;
		    margin-bottom: 8px;
		}
		.form .gender{
		    column-gap: 5px;
		}
		
		.gender input{
		    accent-color: rgb(130,106,251);
		}
		.form :where(.gender-option, .gender) {
		    display: flex;
		    align-items: center;
		    column-gap: 50px;
		    flex-wrap: wrap;
		}
		
		.form :where(.gender input , .gender label){
		    cursor: pointer;
		}
		
		.gender label{
		    color: #707070; 
		}
		.address :where(input, .select-box select){
		    margin-top: 15px;
		}
		.select-box select{
		    height: 100%;
		    width: 100%;
		    outline: none;
		    border: none;
		    color: #707070;
		    font-size: 1rem;
		}
		
		.form .button{
		    height: 55px;
		    width: 100%;
		    color: #fff;
		    font-size: 1rem;
		    border: none;
		    margin-top: 30px;
		    cursor: pointer;
		    border-radius: 6px;
		    transition: all 0.2s ease;
		    background-color: rgb(130,106,251);
		}
		
		.form .button:hover{
		    background-color: rgb(88,56,250);
		}
		
		input[type=number]::-webkit-outer-spin-button,
		input[type=number]::-webkit-inner-spin-button {
		    -webkit-appearance: none;
		    margin: 0;
		}
		
		
		@media screen and (max-width: 500px){
		    .form .column {
		        flex-wrap: wrap;
		    }
		
		    .form :where(.gender-option, .gender) {
		        row-gap: 15px;
		    }
		}
    </style>
</head>
<body>
	<input type="hidden" id="status" value ="<%=request.getAttribute("status") %>">
    <section class="regcontainer">
        <header>Registration Form</header>
        
        <c:if test="${user != null }">
        	<form action="update" method="post" class="form">
        	
        </c:if>
        <c:if test="${user == null }">
        	<form action="insert" method="post" class="form">
        	
        </c:if>
        
        <caption>
        	<h2>
        		<c:if test="${user != null }">
        			Edit User
        		</c:if>
        		
        		<c:if test="${user == null }">
        			Add New User
        		</c:if>
        	</h2>
        </caption>
        
        <c:if test="${user != null }">
        	<input type="hidden" name="id" value="<c:out value='${user.id}'/> "/>
        </c:if>
        
        
            <div class="column">
                <div class="input-box">
                    <label for="firstName">First Name</label>
                    <input type="text" value="<c:out value='${user.firstName}'/> "  id="firstName" name="firstName" placeholder="Enter first name" required>
                </div>
    
                <div class="input-box">
                    <label for="lastName">Last Name</label>
                    <input type="text" value="<c:out value='${user.lastName}'/> " id="lastName" name="lastName" placeholder="Enter last name" required>
                </div>
            </div>
            
            <div class="input-box">
                <label for="email">Email Address</label>
                <input type="email" value="<c:out value='${user.email}'/> " id="email" name="email" placeholder="Enter email address" required>
            </div>

            <div class="input-box">
                <label for="password">Password</label>
                <input type="password" value="<c:out value='${user.password}'/> " id="password" name="password" placeholder="Enter password" required>
            </div>

            <div class="column">
                <div class="input-box">
                    <label for="phoneNumber">Phone Number</label>
                    <input type="number" value="<c:out value='${user.phoneNumber}'/> " id="phoneNumber" name="phoneNumber" placeholder="Enter phone number" required>
                </div>

                <div class="input-box">
                    <label for="dob">Birth Date</label>
                    <input type="date" value="<c:out value='${user.dob}'/> " id="dob" name="dob" placeholder="Enter birth date" required>
                </div>
            </div>

            <div class="gender-box">
                <h3>Gender</h3>
                <div class="gender-option">
                    <div class="gender">
                        <input type="radio" id="check-male" name="gender" value="Male">
                        <label for="check-male">Male</label>
                    </div>
                    <div class="gender">
                        <input type="radio" id="check-female" name="gender" value="Female">
                        <label for="check-female">Female</label>
                    </div>
                    <div class="gender">
                        <input type="radio" id="check-other" name="gender" value="Other">
                        <label for="check-other">Prefer not to say</label>
                    </div>
                </div>
            </div>

            <div class="input-box">
                <label for="streetAddress1">Address</label>
                <input type="text" value="<c:out value='${user.streetAddress1}'/> " name="streetAddress1" placeholder="Enter street address" required>
                <input type="text" value="<c:out value='${user.streetAddress2}'/> " name="streetAddress2" placeholder="Enter street address line 2">
                
                <div class="column">
                    <div class="select-box">
                        <select id="country" name="country">
                            <option hidden value="">Country</option>
                            <option value="America">America</option>
                            <option value="Japan">Japan</option>
                            <option value="India">India</option>
                            <option value="Sri Lanka">Sri Lanka</option>
                            <option value="England">England</option>
                        </select>
                    </div>
                    <input type="text" id="city" value="<c:out value='${user.city}'/> " name="city" placeholder="Enter your city" required>
                </div>

                <div class="column">
                    <input type="text" value="<c:out value='${user.region}'/> " id="region" name="region" placeholder="Enter your region" required>
                    <input type="number" value="<c:out value='${user.postalCode}'/> " id="postalCode" name="postalCode" placeholder="Enter postal code" required>
                </div>
            </div>
			<input type="submit" id="submit" class="button">
        </form>
    </section>

    <script src="js/registrationValidate.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!--  
	<script type="text/javascript">
	    var status = document.getElementById("status").value;
	    if (status && status === "success") {
	        Swal.fire({
	            icon: 'success',
	            title: 'Congrats...',
	            text: 'Account created successfully!',
	        });
	    } else if (status && status === "failed") {
	        Swal.fire({
	            icon: 'error',
	            title: 'Oops...',
	            text: 'Failed to create account. Please try again.',
	        });
	    }
	</script> -->
		
    
</body>
</html>