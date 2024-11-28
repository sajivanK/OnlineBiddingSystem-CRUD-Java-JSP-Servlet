<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bidder Dashboard</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp"
      rel="stylesheet"
    />
    <!--  <link rel="stylesheet" href="css/bidderDashboard.css" /> -->
    
    <style>
    	
    	@charset "UTF-8";
 
		 
		 /* DECLARATIONS */
		 @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap");
		
		 /* ROOT VARIABLES */
		 :root {
		   --color-primary: #7380ec;
		   --color-danger: #ff7782;
		   --color-success: #41f1b6;
		   --color-warning: #ffbb55;
		   --color-white: #fff;
		   --color-info-dark: #7d8da1;
		   --color-info-light: #dce1eb;
		   --color-dark: #363949;
		   --color-light: rgba(132, 139, 200, 0.18);
		   --color-primary-variant: #111e88;
		   --color-dark-variant: #677483;
		   --color-background: #f6f6f9;
		
		   --card-border-radius: 2rem;
		   --border-radius-1: 0.4rem;
		   --border-radius-2: 0.8rem;
		   --border-radius-3: 1.2rem;
		
		   --card-padding: 1.8rem;
		   --padding-1: 1.2rem;
		
		   --box-shadow: 0 2rem 3rem var(--color-light);
		 }
		
		 /* DARK THEME VARIABLES */
		 .dark-theme-variables {
		   --color-background: #181a1e;
		   --color-white: #202528;
		   --color-dark: #edeffd;
		   --color-dark-variant: #a3bdcc;
		   --color-light: rgba(0, 0, 0, 0.4);
		   --box-shadow: 0 2rem 3rem var(--color-light);
		 }
		
		 /* STYLES */
		 * {
		   margin: 0;
		   padding: 0;
		   outline: 0;
		   border: 0;
		   text-decoration: none;
		   box-sizing: border-box;
		 }
		 html {
		   font-size: 14px;
		 }
		 body {
		   width: 100vw;
		   height: 100vh;
		   font-family: poppins, sans-serif;
		   font-size: 0.88rem;
		   background: var(--color-background);
		   user-select: none;
		   overflow-x: hidden;
		   color: var(--color-dark);
		 }
		 .container {
		   display: grid;
		   width: 96%;
		   margin: 0 auto;
		   gap: 1.8rem;
		   grid-template-columns: 14rem auto 23rem;
		 }
		 a {
		   color: var(--color-dark);
		 }
		 img {
		   display: block;
		   width: 100%;
		 }
		 h1 {
		   font-weight: 800;
		   font-size: 1.8rem;
		 }
		 h2 {
		   font-size: 1.4rem;
		 }
		 h3 {
		   font-size: 0.87rem;
		 }
		 h4 {
		   font-size: 0.8rem;
		 }
		 h5 {
		   font-family: 0.77rem;
		 }
		 small {
		   font-size: 0.75rem;
		 }
		 .profile-photo {
		   width: 2.8rem;
		   height: 2.8rem;
		   border-radius: 50%;
		   overflow: hidden;
		 }
		 .text-muted {
		   color: var(--color-info-dark);
		 }
		 p {
		   color: var(--color-dark-variant);
		 }
		 b {
		   color: var(--color-dark);
		 }
		 .primary {
		   color: var(--color-primary);
		 }
		 .danger {
		   color: var(--color-danger);
		 }
		 .success {
		   color: var(--color-success);
		 }
		 .warning {
		   color: var(--color-warning);
		 }
		
		 /* START ASIDE */
		 aside {
		   height: 100vh;
		 }
		 aside .top {
		   display: flex;
		   align-items: center;
		   justify-content: space-between;
		   margin-top: 1.4rem;
		 }
		 aside .logo {
		   display: flex;
		   gap: 0.8rem;
		 }
		 aside .logo img {
		   width: 2rem;
		   height: 2rem;
		 }
		 aside .close {
		   display: none;
		 }
		
		 /* START SIDEBAR */
		 aside .sidebar {
		   display: flex;
		   flex-direction: column;
		   height: 86vh;
		   position: relative;
		   top: 3rem;
		 }
		 aside h3 {
		   font-weight: 500;
		 }
		 aside .sidebar a {
		   display: flex;
		   color: var(--color-info-dark);
		   margin-left: 2rem;
		   gap: 1rem;
		   align-items: center;
		   position: relative;
		   height: 3.7rem;
		   transition: all 300ms ease;
		 }
		 aside .sidebar a span {
		   font-size: 1.6rem;
		   transition: all 300ms ease;
		 }
		 aside .sidebar a:last-child {
		   position: absolute;
		   bottom: 2rem;
		   width: 100%;
		 }
		 aside .sidebar a.active {
		   background: var(--color-light);
		   color: var(--color-primary);
		   margin-left: 0;
		 }
		 aside .sidebar a.active:before {
		   content: "";
		   width: 6px;
		   height: 100%;
		   background: var(--color-primary);
		 }
		 aside .sidebar a.active span {
		   color: var(--color-primary);
		   margin-left: calc(1rem - 6px);
		 }
		 aside .sidebar a:hover {
		   color: var(--color-primary);
		 }
		 aside .sidebar a:hover span {
		   margin-left: 1rem;
		 }
		 aside .sidebar .message-count {
		   background: var(--color-danger);
		   color: var(--color-white);
		   padding: 2px 10px;
		   font-size: 11px;
		   border-radius: var(--border-radius-1);
		 }
		 /* END SIDEBAR */
		 /* END ASIDE */
		
		 /* START MAIN */
		 main {
		   margin-top: 1.4rem;
		 }
		
		 /* START DATE INPUT */
		 main .date {
		   display: inline-block;
		   background: var(--color-light);
		   border-radius: var(--border-radius-1);
		   margin-top: 1rem;
		   padding: 0.5rem 1.6rem;
		 }
		 main .date input[type="date"] {
		   background: transparent;
		   color: var(--color-dark);
		 }
		 /* END DATE INPUT */
		
		 /* START INSIGHTS */
		 main .insights {
		   display: grid;
		   grid-template-columns: repeat(3, 1fr);
		   gap: 1.6rem;
		 }
		 main .insights > div {
		   background: var(--color-white);
		   padding: var(--card-padding);
		   border-radius: var(--card-border-radius);
		   margin-top: 1rem;
		   box-shadow: var(--box-shadow);
		   transition: all 300ms ease;
		 }
		 main .insights > div:hover {
		   cursor: pointer;
		   box-shadow: none;
		 }
		 main .insights > div span {
		   background: var(--color-primary);
		   padding: 0.5rem;
		   border-radius: 50%;
		   color: var(--color-white);
		   font-size: 2rem;
		 }
		 main .insights > div.expenses span {
		   background: var(--color-danger);
		 }
		 main .insights > div.income span {
		   background: var(--color-success);
		 }
		 main .insights > div .middle {
		   display: flex;
		   align-items: center;
		   justify-content: space-between;
		 }
		 main .insights h3 {
		   margin: 1rem 0 0.6rem;
		   font-size: 1rem;
		 }
		 main .insights .progress {
		   position: relative;
		   width: 92px;
		   height: 92px;
		   border-radius: 50%;
		 }
		 main .insights svg {
		   width: 7rem;
		   height: 7rem;
		 }
		 main .insights svg circle {
		   fill: none;
		   stroke: var(--color-primary);
		   stroke-width: 14;
		   stroke-linecap: round;
		   transform: translate(5px, 5px);
		   stroke-dasharray: 110;
		   stroke-dashoffset: 92;
		 }
		 main .insights .sales svg circle {
		   stroke-dashoffset: -30;
		   stroke-dasharray: 200;
		 }
		 main .insights .expenses svg circle {
		   stroke-dashoffset: 20;
		   stroke-dasharray: 80;
		 }
		 main .insights .income svg circle {
		   stroke-dashoffset: 35;
		 }
		 main .insights .progress .number {
		   position: absolute;
		   top: -2px;
		   left: -2px;
		   height: 100%;
		   width: 100%;
		   display: flex;
		   justify-content: center;
		   align-items: center;
		 }
		 main .insights small {
		   margin-top: 1.6rem;
		   display: block;
		 }
		 /* END INSIGHTS */
		
		 /* START RECENT ORDERS */
		 main .recent-orders {
		   margin-top: 2rem;
		 }
		 main .recent-orders h2 {
		   margin-bottom: 0.8rem;
		 }
		 main .recent-orders table {
		   background: var(--color-white);
		   width: 100%;
		   border-radius: var(--card-border-radius);
		   padding: var(--card-padding);
		   text-align: center;
		   box-shadow: var(--box-shadow);
		   transition: all 300ms ease;
		 }
		 main .recent-orders table:hover {
		   cursor: pointer;
		   box-shadow: none;
		 }
		 main table tbody td {
		   height: 2.8rem;
		   border-bottom: 1px solid var(--color-light);
		   color: var(--color-dark-variant);
		 }
		 main table tbody tr:last-child td {
		   border: none;
		 }
		 main .recent-orders a {
		   text-align: center;
		   display: block;
		   margin: 1rem auto;
		   color: var(--color-primary);
		 }
		 /* END RECENT ORDERS */
		
		 /* START RIGHT SECTION */
		 .right {
		   margin-top: 1.4rem;
		 }
		 .right .top {
		   display: flex;
		   justify-content: end;
		   gap: 2rem;
		 }
		 .right .top button {
		   display: none;
		 }
		 .right .theme-toggler {
		   background: var(--color-light);
		   display: flex;
		   justify-content: space-between;
		   align-items: center;
		   height: 1.6rem;
		   width: 4.2rem;
		   cursor: pointer;
		   border-radius: var(--border-radius-1);
		 }
		 .right .theme-toggler span {
		   font-size: 1.2rem;
		   width: 50%;
		   height: 100%;
		   display: flex;
		   align-items: center;
		   justify-content: center;
		 }
		 .right .theme-toggler span.active {
		   background: var(--color-primary);
		   color: white;
		   border-radius: var(--border-radius-1);
		 }
		 .right .top .profile {
		   display: flex;
		   gap: 2rem;
		   text-align: right;
		 }
		
		 /* START RECENT UPDATES */
		 .right .recent-updates {
		   margin-top: 1rem;
		 }
		 .right .recent-updates h2 {
		   margin-bottom: 0.8rem;
		 }
		 .right .recent-updates .updates {
		   background: var(--color-white);
		   padding: var(--card-padding);
		   border-radius: var(--card-border-radius);
		   box-shadow: var(--box-shadow);
		   transition: all 300ms ease;
		 }
		 .right .recent-updates .updates:hover {
		   cursor: pointer;
		   box-shadow: none;
		 }
		 .right .recent-updates .updates .update {
		   display: grid;
		   grid-template-columns: 2.6rem auto;
		   gap: 1rem;
		   margin-bottom: 1rem;
		 }
		 /* END RECENT UPDATES */
		
		 /* START SALES ANALYTICS */
		 .right .sales-analytics {
		   margin-top: 2rem;
		 }
		 .right .sales-analytics h2 {
		   margin-bottom: 0.8rem;
		 }
		 .right .sales-analytics .item {
		   background: var(--color-white);
		   display: flex;
		   align-items: center;
		   gap: 1rem;
		   margin-bottom: 0.7rem;
		   padding: 1.4rem var(--card-padding);
		   border-radius: var(--border-radius-3);
		   box-shadow: var(--box-shadow);
		   transition: all 300ms ease;
		 }
		 .right .sales-analytics .item:hover {
		   cursor: pointer;
		   box-shadow: none;
		 }
		 .right .sales-analytics .item .right {
		   display: flex;
		   justify-content: space-between;
		   align-items: start;
		   margin: 0;
		   width: 100%;
		 }
		 .right .sales-analytics .item .icon {
		   padding: 0.6rem;
		   color: var(--color-white);
		   border-radius: 50%;
		   background: var(--color-primary);
		   display: flex;
		 }
		 .right .sales-analytics .item.offline .icon {
		   background: var(--color-danger);
		 }
		 .right .sales-analytics .item.customers .icon {
		   background: var(--color-success);
		 }
		 .right .sales-analytics .add-product {
		   background: transparent;
		   border: 2px dashed var(--color-primary);
		   color: var(--color-primary);
		   display: flex;
		   align-items: center;
		   justify-content: center;
		 }
		 .right .sales-analytics .add-product:hover {
		   background: var(--color-primary);
		   color: white;
		 }
		 .right .sales-analytics .add-product div {
		   display: flex;
		   align-items: center;
		   gap: 0.6rem;
		 }
		 .right .sales-analytics .add-product h3 {
		   font-weight: 600;
		 }
		 /* END SALES ANALYTICS */
		 /* END RIGHT SECTION */
		
		 /* START MEDIA QUERIES */
		 /* TABLETS AND SMALL LAPTOPS */
		 
		 @media screen and (max-width: 1200px) {
		   .container {
		     width: 94%;
		     grid-template-columns: 7rem auto 23rem;
		   }
		   aside .logo h2 {
		     display: none;
		   }
		   aside .sidebar h3 {
		     display: none;
		   }
		   aside .sidebar a {
		     width: 5.6rem;
		   }
		   aside .sidebar a:last-child {
		     position: relative;
		     margin-top: 1.8rem;
		   }
		   main .insights {
		     grid-template-columns: 1fr;
		     gap: 0;
		   }
		   main .recent-orders {
		     width: 94%;
		     position: absolute;
		     left: 50%;
		     transform: translateX(-50%);
		     margin: 2rem 0 0 8.8rem;
		   }
		   main .recent-orders table {
		     width: 83vw;
		   }
		   main .recent-orders table thead tr th:first-child,
		   main .recent-orders table thead tr th:last-child {
		     display: none;
		   }
		   main .recent-orders table tbody tr td:first-child,
		   main .recent-orders table tbody tr td:last-child {
		     display: none;
		   }
		 }
		
		 
		 /* SMALL TABLETS AND MOBILE */
		
		 
		 @media screen and (max-width: 768px) {
		   .container {
		     width: 100%;
		     grid-template-columns: 1fr;
		   }
		   aside {
		     position: fixed;
		     left: -100%;
		     background: var(--color-white);
		     width: 18rem;
		     z-index: 3;
		     box-shadow: 1rem 3rem 4rem var(--color-light);
		     height: 100vh;
		     padding-right: var(--card-padding);
		     display: none;
		     animation: showMenu 400ms ease forwards;
		   }
		   @keyframes showMenu {
		     to {
		       left: 0;
		     }
		   }
		   aside .logo {
		     margin-left: 1rem;
		   }
		   aside .logo h2 {
		     display: inline;
		   }
		   aside .sidebar h3 {
		     display: inline;
		   }
		   aside .sidebar a {
		     width: 100%;
		     height: 3.4rem;
		   }
		   aside .sidebar a:last-child {
		     position: absolute;
		     bottom: 5rem;
		   }
		   aside .close {
		     display: inline-block;
		     cursor: pointer;
		   }
		   main {
		     margin-top: 8rem;
		     padding: 0 1rem;
		   }
		   main .recent-orders {
		     position: relative;
		     margin: 3rem 0 0 0;
		     width: 100%;
		   }
		   main .recent-orders table {
		     width: 100%;
		     margin: 0;
		   }
		   .right {
		     width: 94%;
		     margin: 0 auto 4rem;
		   }
		   .right .top {
		     position: fixed;
		     top: 0;
		     left: 0;
		     align-items: center;
		     padding: 0 0.8rem;
		     height: 4.6rem;
		     background: var(--color-white);
		     width: 100%;
		     margin: 0;
		     z-index: 2;
		     box-shadow: 0 1rem 1rem var(--color-light);
		   }
		   .right .top .theme-toggler {
		     width: 4.4rem;
		     position: absolute;
		     left: 66%;
		   }
		   .right .top .profile .info {
		     display: none;
		   }
		   .right .top button {
		     display: inline-block;
		     background: transparent;
		     cursor: pointer;
		     color: var(--color-dark);
		     position: absolute;
		     left: 1rem;
		   }
		   .right .top button span {
		     font-size: 2rem;
		   }
		 }
		
		
		 /* END MEDIA QUERIES */
		
		
		
		  /* Ensure the product page is hidden initially */
		#product-page {
		  display: none; 
		}
		
		/*
		.container{
		  position: relative;
		  max-width: 700px;
		  width: 100%;
		  background: #fff;
		  padding: 25px;
		  border-radius: 8px;
		  box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
		}
		*/
		
		header{
		  font-size: 1.5rem;
		  color: #333;
		  font-weight: 500;
		  text-align: center; 
		}
		.container{
		  margin: 50px;
		  position: relative;
		  display: flex;
		  
		}
		
		/*
		.container .form{
		  margin-top: 30px;
		}
		*/
		.form .input-box{
		  width: 100%;
		  
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
		
		.form button{
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
		
		.form button:hover{
		  background-color: rgb(88,56,250);
		}
		
		input[type=number]::-webkit-outer-spin-button,
		input[type=number]::-webkit-inner-spin-button {
		  -webkit-appearance: none;
		  margin: 0;
		}

    	
    </style>
  </head>
  <body>
    <div class="container">
      <aside>
        <div class="top">
          <div class="logo">
            <img src="/images/logo.png" alt="Logo" />
            <h2>EGA<span class="danger">TOR</span></h2>
          </div>
          <div class="close" id="close-btn">
            <span class="material-icons-sharp"> close </span>
          </div>
        </div>

        <div class="sidebar">
          <a href="#dashboard" class="active">
            <span class="material-icons-sharp"> dashboard </span>
            <h3>Dashboard</h3>
          </a>
          <a href="#">
            <span class="material-symbols-outlined">home</span>
            <h3>Home</h3>
          </a>
          <a href="#">
            <span class="material-icons-sharp"> receipt_long </span>
            <h3>Success Bids</h3>
          </a>
          <a href="#">
            <span class="material-symbols-outlined">local_fire_department</span>
            <h3>Current Bids</h3>
          </a>
          <a href="#">
            <span class="material-icons-sharp"> mail_outline </span>
            <h3>Messages</h3>
            <span class="message-count">26</span>
          </a>
          <a href="#edit-profil">
            <span class="material-symbols-outlined">person_edit</span>
            <h3>Edit Profile</h3>
          </a>
          <a href="#">
            <span class="material-icons-sharp"> report_gmailerrorred </span>
            <h3>Reports</h3>
          </a>
          <a href="#">
            <span class="material-icons-sharp"> settings </span>
            <h3>Settings</h3>
          </a>
          <!--
          <a href="#">
            <span class="material-icons-sharp"> add </span>
            <h3>Add Product</h3>
          </a>
          -->
          <a href="logout">
            <span class="material-icons-sharp"> logout </span>
            <h3>Logout</h3>
          </a>
        </div>
      </aside>

      <!-- Dashboard Main Section -->
      <main id="dashboard-main">
        <h1>Dashboard</h1>

        <div class="date">
          <input type="date" />
        </div>

        <div class="insights">
          <!-- SALES -->
          <div class="sales">
            <span class="material-icons-sharp"> analytics </span>
            <div class="middle">
              <div class="left">
                <h3>Total Sales</h3>
                <h1>$25,024</h1>
              </div>
              <div class="progress">
                <svg>
                  <circle cx="38" cy="38" r="36"></circle>
                </svg>
                <div class="number">
                  <p>81%</p>
                </div>
              </div>
            </div>
            <small class="text-muted"> Last 24 hours </small>
          </div>

          <!-- EXPENSES -->
          <div class="expenses">
            <span class="material-icons-sharp"> bar_chart </span>
            <div class="middle">
              <div class="left">
                <h3>Total Expenses</h3>
                <h1>$14,160</h1>
              </div>
              <div class="progress">
                <svg>
                  <circle cx="38" cy="38" r="36"></circle>
                </svg>
                <div class="number">
                  <p>62%</p>
                </div>
              </div>
            </div>
            <small class="text-muted"> Last 24 hours </small>
          </div>

          <!-- INCOME -->
          <div class="income">
            <span class="material-icons-sharp"> stacked_line_chart </span>
            <div class="middle">
              <div class="left">
                <h3>Total Income</h3>
                <h1>$10,864</h1>
              </div>
              <div class="progress">
                <svg>
                  <circle cx="38" cy="38" r="36"></circle>
                </svg>
                <div class="number">
                  <p>44%</p>
                </div>
              </div>
            </div>
            <small class="text-muted"> Last 24 hours </small>
          </div>
        </div>

        <div class="recent-orders">
          <h2>Recent Orders</h2>
          <table id="recent-orders--table">
            <thead>
              <tr>
                <th>Product Name</th>
                <th>Product Number</th>
                <th>Payment</th>
                <th>Status</th>
                <th></th>
              </tr>
            </thead>
            <!-- Add tbody here | JS insertion -->
          </table>
          <a href="#">Show All</a>
        </div>
      </main>

      <!-- Product Page Section (Initially Hidden) -->

      <main id="product-page" style="display: none;">
        <header>Registration Form</header>
        <section class="container">
            <!--<header>Registration Form</header>-->
            
            <form action="#" class="form">
                <div class="column">
                    <div class="input-box">
                        <label for="">First Name</label>
                        <input type="text" id="firstName" placeholder="Enter first name" required>
                    </div>
        
                    <div class="input-box">
                        <label for="">Last Name</label>
                        <input type="text" id="lastName" placeholder="Enter last name" required>
                    </div>
                </div>
                
    
                <div class="input-box">
                    <label for="">Email Address</label>
                    <input type="text" id="email" placeholder="Enter email address" required>
                </div>
    
                <div class="input-box">
                    <label for="">Password</label>
                    <input type="password" id="password" placeholder="Enter password" required>
                </div>
    
                <div class="column">
                    <div class="input-box">
                        <label for="">Phone Number</label>
                        <input type="number" id="phoneNumber" placeholder="Enter phone number" required>
                    </div>
    
                    <div class="input-box">
                        <label for="">Birth Date</label>
                        <input type="date" id="dob" placeholder="Enter birth date" required>
                    </div>
                </div>
    
                <div class="gender-box">
                    <h3>Gender</h3>
                 
                    <div class="gender-option">
                        <div class="gender">
                            <input type="radio" id="check-male" name="gender">
                            <label for="check-male">Male</label>
                        </div>
                        
                        <div class="gender">
                            <input type="radio" id="check-female" name="gender">
                            <label for="check-female">Female</label>
                        </div>
                        <div class="gender">
                            <input type="radio" id="check-other" name="gender">
                            <label for="check-other">Prefer not to say</label>
                        </div>  
                    </div>
              
                </div>
    
                <div class="input-box">
                    <label for="">Address</label>
                    <input type="text" placeholder="Enter street address " required>
                    <input type="text" placeholder="Enter street address line 2" required>
    
                    <div class="column">
                        <div class="select-box">
                            <select name="" id="country">
                                <option hidden value="">Country</option>
                                <option value="America">America</option>
                                <option value="Japan">Japan</option>
                                <option value="England">India</option>
                                <option value="Sri Lanka">Sri Lanka</option>
                                <option value="England">England</option>
                            </select>
                        </div>
                        <input type="text" id="city" placeholder="Enter your city" required>
                    </div>
    
                    <div class="column">
                        <input type="text" id="region" placeholder="Enter your region" required>
                        <input type="number" id="postalCode" placeholder="Enter postal code" required>
    
                    </div>
                </div>
                <button id="submit">Submit</button>
    
            </form>
        </section>
        <script>

            document.getElementById('submit').addEventListener('click', function(event) {
                event.preventDefault(); // Prevent form submission until validation is complete

                // Get form input values
                const firstName = document.getElementById('firstName').value;
                const lastName = document.getElementById('lastName').value;
                const email = document.getElementById('email').value;
                const password = document.getElementById('password').value;
                const phoneNumber = document.getElementById('phoneNumber').value;
                const dob = document.getElementById('dob').value;
                const genderChecked = document.querySelector('input[name="gender"]:checked');
                const streetAddress1 = document.querySelector('input[placeholder="Enter street address "]').value;
                const streetAddress2 = document.querySelector('input[placeholder="Enter street address line 2"]').value;
                const country = document.getElementById('country').value;
                const city = document.getElementById('city').value;
                const region = document.getElementById('region').value;
                const postalCode = document.getElementById('postalCode').value;

                // Regular expression patterns
                const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
                const phonePattern = /^[0-9]{10}$/;
                const postalCodePattern = /^[0-9]{5,10}$/;
                const passwordPattern = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*]).{8,}$/;

                // Field validation
                if (!firstName || !lastName || !email || !password || !phoneNumber || !dob || !streetAddress1 || !city || !region || !postalCode || !country || !genderChecked) {
                    alert("Please fill out all fields.");
                    return;
                }

                // Email validation
                if (!email.match(emailPattern)) {
                    alert("Please enter a valid email address.");
                    return;
                }

                // Password validation
                if (!password.match(passwordPattern)) {
                    alert("Password must contain at least 8 characters, including one uppercase letter, one lowercase letter, one number, and one special character.");
                    return;
                }

                // Phone number validation
                if (!phoneNumber.match(phonePattern)) {
                    alert("Phone number must be exactly 10 digits.");
                    return;
                }

                // Postal code validation
                if (!postalCode.match(postalCodePattern)) {
                    alert("Please enter a valid postal code.");
                    return;
                }

                // If all validations pass
                alert("Registration successful!");

                // Submit the form after validation
                document.querySelector('form').submit();
            });

        </script>
      </main>
    

      <div class="right">
        <div class="top">
          <button id="menu-btn">
            <span class="material-icons-sharp"> menu </span>
          </button>
          <div class="theme-toggler">
            <span class="material-icons-sharp active"> light_mode </span>
            <span class="material-icons-sharp"> dark_mode </span>
          </div>
          <div class="profile">
            <div class="info">
              <p>Hey, <b><a href=""><%= session.getAttribute("name") %></a></b></p>
              <!--  <small class="text-muted">Admin</small> -->
            </div>
            <div class="profile-photo">
              <img src="./images/profile-1.jpg" alt="Profile Picture" />
            </div>
          </div>
        </div>

        <div class="recent-updates">
          <h2>Recent Updates</h2>
          <!-- Add updates div here | JS insertion -->
        </div>

        <div class="sales-analytics">
          <h2>Sales Analytics</h2>
          <div id="analytics">
            <!-- Add items div here | JS insertion -->
          </div>
          <!--  
          <div class="item add-product">
            <div>
              <span class="material-icons-sharp"> add </span>
              <h3>Add Product</h3>
            </div>
          </div> -->
        </div>
      </div>
    </div>

    <script src="./constants/recent-order-data.js"></script>
    <script src="./constants/update-data.js"></script>
    <script src="./constants/sales-analytics-data.js"></script>
    <script src="./js/bidderDashboard.js"></script>
  </body>
</html>
