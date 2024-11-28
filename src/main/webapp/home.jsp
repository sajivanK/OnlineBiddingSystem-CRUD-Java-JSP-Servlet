<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="home.css">
        <!-- font awesome -->
        <script src="https://kit.fontawesome.com/dbed6b6114.js" crossorigin="anonymous"></script>
        
        <style>
			        	
			:root{
			    --white-light: rgba(255, 255, 255, 0.5);
			    --alice-blue: #f8f9fa;
			    --carribean-green: #40c9a2;
			    --gray: #ededed;
			}
			*{
			    padding: 0;
			    margin: 0;
			    box-sizing: border-box;
			}
			body{
			    font-family: 'Quicksand', sans-serif;
			}
			
			/* Utility stylings */
			img{
			    width: 100%;
			    display: block;
			}
			.container{
			    width: 88vw;
			    margin: 0 auto;
			}
			.lg-title,
			.md-title,
			.sm-title{
			    font-family: 'Roboto', sans-serif;
			    padding: 0.6rem 0;
			    text-transform: capitalize;
			}
			.lg-title{
			    font-size: 2.5rem;
			    font-weight: 500;
			    text-align: center;
			    padding: 1.3rem 0;
			    opacity: 0.9;
			}
			.md-title{
			    font-size: 2rem;
			    font-family: 'Roboto', sans-serif;
			}
			.sm-title{
			    font-weight: 300;
			    font-size: 1rem;
			    text-transform: uppercase;
			}
			.text-light{
			    font-size: 1rem;
			    font-weight: 600;
			    line-height: 1.5;
			    opacity: 0.5;
			    margin: 0.4rem 0;
			}
			
			/* product section */
			.products{
			    background: var(--alice-blue);
			    padding: 3.2rem 0;
			}
			.products .text-light{
			    text-align: center;
			    width: 70%;
			    margin: 0.9rem auto;
			}
			.product{
			    margin: 2rem;
			    position: relative;
			}
			.product-content{
			    background: var(--gray);
			    padding: 3rem 0.5rem 2rem 0.5rem;
			    cursor: pointer;
			}
			.product-img{
			    background: var(--white-light);
			    box-shadow: 0 0 20px 10px var(--white-light);
			    width: 200px;
			    height: 200px;
			    margin: 0 auto;
			    border-radius: 50%;
			    transition: background 0.5s ease;
			}
			.product-btns{
			    display: flex;
			    justify-content: center;
			    margin-top: 1.4rem;
			    opacity: 0;
			    transition: opacity 0.6s ease;
			}
			.btn-cart, .btn-buy{
			    background: transparent;
			    border: 1px solid black;
			    padding: 0.8rem 0;
			    width: 125px;
			    font-family: inherit;
			    text-transform: uppercase;
			    cursor: pointer;
			    border: none;
			    transition: all 0.6s ease;
			}
			.btn-cart{
			    background: black;
			    color: white;
			}
			.btn-cart:hover{
			    background: var(--carribean-green);
			}
			.btn-buy{
			    background: white;
			}
			.btn-buy:hover{
			    background: var(--carribean-green);
			    color: #fff;
			}
			.product-info{
			    background: white;
			    padding: 2rem;
			}
			.product-info-top{
			    display: flex;
			    justify-content: space-between;
			    align-items: center;
			}
			.rating span{
			    color: var(--carribean-green);
			}
			.product-name{
			    color: black;
			    display: block;
			    text-decoration: none;
			    font-size: 1rem;
			    text-transform: uppercase;
			    font-weight: bold;
			}
			.product-price{
			    padding-top: 0.6rem;
			    padding-right: 0.6rem;
			    display: inline-block;
			}
			.product-price:first-of-type{
			    text-decoration: line-through;
			    color: var(--carribean-green);
			}
			.product-img img{
			    transition: transform 0.6s ease;
			}
			.product:hover .product-img img{
			    transform: scale(1.1);
			}
			.product:hover .product-img{
			    background: var(--carribean-green);
			}
			.product:hover .product-btns{
			    opacity: 1;
			}
			.off-info .sm-title{
			    background: var(--carribean-green);
			    color: white;
			    display: inline-block;
			    padding: 0.5rem;
			    position: absolute;
			    top: 0;
			    left: 0;
			    writing-mode: vertical-lr;
			    transform: rotate(180deg);
			    z-index: 1;
			    letter-spacing: 3px;
			    cursor: pointer;
			}
			
			/* product collection */
			.product-collection{
			    padding: 3.2rem 0;
			}
			.product-collection-wrapper{
			    padding: 3.2rem 0;
			}
			.product-col-left{
			    background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3)), url("./images/painting.jpg") center/cover no-repeat;
			}
			.product-col-r-top{
			    background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3)), url("./images/housing.jpg") center/cover no-repeat;
			}
			.flex{
			    display: flex;
			    justify-content: center;
			    align-items: flex-end;
			    height: 50vh;
			    padding: 2rem 1.5rem 3.2rem;
			    margin: 5px;
			}
			.product-col-r-bottom > div:first-child{
			    background: #eaa001;
			}
			.product-col-r-bottom > div:last-child{
			    background: #0090ff;
			}
			.product-col-content{
			    text-align: center;
			    color: white;
			}
			.product-collection .text-light{
			    opacity: 1;
			    font-size: 0.8;
			    font-weight: 400;
			    line-height: 1.7;
			}
			.btn-dark{
			    background: black;
			    color: white;
			    outline: 0;
			    border-radius: 25px;
			    padding: 0.7rem 1rem;
			    border: 0;
			    margin-top: 1rem;
			    cursor: pointer;
			    transition: all 0.6s ease;
			    font-size: 1rem;
			    font-family: inherit;
			}
			.btn-dark:hover{
			    background: var(--carribean-green);
			}
			
			
			
			
			
			
			
			/* Media Queries */
			@media screen and (min-width: 992px){
			    .product-items{
			        display: grid;
			        grid-template-columns: repeat(2, 1fr);
			    }
			    .product-col-r-bottom{
			        display: grid;
			        grid-template-columns: repeat(2, 1fr);
			    }
			}
			@media screen and (min-width: 1200px){
			    .product-items{
			        grid-template-columns: repeat(3, 1fr);
			    }
			    .product{
			        margin-right: 1rem;
			        margin-left: 1rem;
			    }
			    .products .text-light{
			        width: 50%;
			    }
			}
			
			@media screen and (min-width: 1336px){
			    .product-items{
			        grid-template-columns: repeat(4, 1fr);
			    }
			    .product-collection-wrapper{
			        display: grid;
			        grid-template-columns: repeat(2, 1fr);
			    }
			    .flex{
			        height: 60vh;
			    }
			    .product-col-left{
			        height: 121.5vh;
			    }
			}
			
			
			
			
			
			
			
			
			.container-nav {
			    display: flex;
			    justify-content: space-between;
			    align-items: center;
			    padding: 0 50px;
			}
			.top-row{
			    background-color: #00708f;
			}
			.bottom-row{
			    background-color: #fff;
			}
			
			.top-row, .bottom-row {
			    padding: 20px 20px;
			}
			
			.top-row .nav-left {
			    display: flex;
			}
			
			.nav-left{
			    position: relative;
			    margin: 0 15px;
			    font-weight: 700;
			    font-size: 15px;
			    line-height: 18px;
			    letter-spacing: 0.15px;
			}
			
			.menu {
			    display: flex;
			    list-style: none;
			    justify-content: space-between;
			    gap: 15px;
			}
			
			.menu li {
			    margin-right: 20px;
			}
			
			.menu li a {
			    color: #fff;
			    text-decoration: none;
			    font-size: 16px;
			}
			
			.menu li a:hover {
			    color: #4AB648;
			}
			
			.nav-right {
			    display: inline-flex;
			    align-items: center;
			    margin: 0 15px;
			    position: relative;
			    font-weight: 600;
			    font-size: 14px;
			    line-height: 1.23;
			    letter-spacing: 0.28px;
			}
			
			.nav-right span {
			    margin-left: 20px;
			}
			.top-menu-icon{
			    margin: 0 7px 0 0;
			}
			.location, .hours, .phone {
			    color: #fff;
			}
			
			.bottom-row .logo {
			    display: flex;
			    align-items: center;
			}
			
			.logo-img {
			    height: 50px;
			    margin-right: 10px;
			}
			
			
			
			
			
			
			
			.categories-button{
			    position: relative;
			    padding: 18px 23px 18px 20px;
			    border-radius: 6px;
			    display: flex;
			    align-items: center;
			    transition: var(--hover-transition);
			    cursor: pointer;
			    background-color: #009ffc;
			   
			}
			.icon-tabler-menu-2{
			    font-size: 18px;
			        line-height: 1;
			        margin-right: 15px;
			        color: #ffffff;
			}
			.categories-btn {
			    font-size: 18px;
			    font-weight: 700;
			    line-height: 1;
			    color: #FFFFFF;
			    background-color: transparent;
			    border: none;
			}
			
			
			
			.icons {
			    display: flex;
			    align-items: center;
			}
			
			.icons a {
			    color: #fff;
			    font-size: 20px;
			    margin-left: 20px;
			}
			
			.icons a:hover {
			    color: #4AB648;
			}
			
			.section1{
			    background-color: #eff5ee;
			    padding: 30px 0;
			}
			
			.section1-con {
			    display: flex;
			    justify-content: flex-end; /* Align text section to the right */
			    align-items: center;
			    background-image: url('./images/cover.png'); /* Replace with your background image file name */
			    border-radius: 25px;
			    max-width: 1920px;
			    height: 530px;
			    background-position: center left;
			    background-repeat: no-repeat;
			    background-size: cover;
			    margin: 0 50px 0 50px;
			}
			
			.section1-image{
			    width: 40%;
			}
			.section1-text{
			    font-family: "Open Sans", sans-serif;
			    color: #FFFFFF;
			    font-size: 4.2vw;
			    font-weight: 700;
			    line-height: 4.2vw;
			    letter-spacing: -0.2vw;
			    text-shadow: 0px 1px 2px rgba(0, 0, 0, 0.24);
			    margin: 0 0 10px 0;
			}
			
			.section1-subttxt{
			    color: #FFFFFF;
			    font-size: 18px;
			    font-weight: 500;
			    letter-spacing: -0.1px;
			    padding: 0;
			    margin: 20px 0 30px 0;
			    line-height: 1;
			}
			
			.text-section{
			    margin: 0 13% 0 0;
			    display: flex;
			    flex-direction: column;
			}
			
			.Section1-button{
			    border-color: #FFFFFF;
			    background-color: #FFFFFF;
			    width: fit-content;
			    display: inline-flex;
			    align-items: center;
			    column-gap: 10px;
			    padding: 3px;
			    border-radius: 24px;
			    position: relative;
			}
			
			.Section1-input{
			    margin: 0 5px;
			}
			
			.Section1-inputs{
			    padding-top: 10px;
			    padding-bottom: 10px;
			}
			.Section1-input{
			    border: none;
			    font-size: 15px;
			    color: #243f2f;
			    border: none !important;
			    background-color: transparent !important;
			    line-height: 1 !important;
			    font-weight: 500 !important;
			    letter-spacing: .225px !important;
			    padding: 0 !important;
			    margin: 0 !important;
			}
			
			.section1-greenbtn{
			    border: none;
			    border-radius: 25px;
			    background-color: #00aa63;
			    color: #FFFFFF;
			    font-size: 13px;
			    font-style: normal;
			    font-weight: 700;
			    line-height: normal;
			    letter-spacing: .26px;
			    padding: 13px 20px;
			    margin: 0;
			    display: inline-flex;
			    outline: none;
			    text-align: center;
			}
			.icon-tabler-mail{
			    color: #00aa63;
			    margin-left: 16px;
			    display: inline-flex;
			   
			}
			
			.search-bar{
			    justify-content: center;
			    display: flex;
			    align-items: center;
			    position: relative;
			    min-width: 40%;
			}
			
			.search-bar-form{
			    display: flex;
			    align-items: center;
			    border-radius: 6px;
			    height: 50px;
			    padding: 0 20px;
			    width: 100%;
			    color: #243f2f;
			    
			    background-color: #edf5ec;
			}
			
			.search-input {
			    flex: 1 1 auto;
			    border: none;
			    outline: none; 
			    box-shadow: none;
			    height: 50px;
			    line-height: 50%;
			    font-style: normal;
			    font-weight: 400;
			    font-size: 17px;
			    letter-spacing: 0.01em;
			    background: none;
			    padding: 0;
			    color: currentColor;
			}
			
			.search-btn{
			    cursor: pointer;
			        font-size: 21px;
			        line-height: 1;
			        margin-left: 20px;
			        background-color: transparent;
			    border: none;
			    outline: none;
			    padding: 0;
			    margin: 0;
			    color: currentColor;
			    display: flex;
			    justify-content: center;
			    align-items: center;
			    appearance: none;
			}
			
			
			.order-eng-usd-menu{
			    display: flex;
			    -moz-column-gap: 20px;
			    column-gap: 20px;
			    font-size: 13px;
			    font-style: normal;
			    font-weight: 700;
			    line-height: normal;
			    letter-spacing: 0.065px;
			    align-items: center;
			    color: #243f2f;
			    justify-content: space-between;
			    gap: 5px;
			}
			
			a {
			    cursor: pointer;
			    text-decoration: none;
			}
			.Order-Tracking{
			    text-decoration: none;
			    color: #243f2f;
			
			}
			    
			
			
			
			.dropdowns-eng {
			    display: flex;
			    align-items: center;
			    position: relative;
			    display: inline-block;
			    margin-left: 20px;
			    
			}
			
			.dropdowns-eng-link {
			    background-color: #edf5ec;
			    color: #243f2f;
			    border: none;
			    padding: 10px 15px;
			    cursor: pointer;
			    border-radius: 5px;
			}
			
			.dropdowns-eng-list {
			    display: none;
			    position: absolute;
			    background-color: #fff;
			    min-width: 100px;
			    z-index: 1;
			    border: 1px solid #ccc;
			    font-weight: 400;
			    border-radius: 5px;
			}
			
			.dropdowns-eng-list a {
			    color: #000;
			    padding: 10px;
			    text-decoration: none;
			    display: block;
			}
			
			.dropdowns-eng-list .dropdowns-eng-list-item-link:hover {
			    background-color: #047732;
			    color: #FFFFFF;
			}
			
			.dropdowns-eng:hover .dropdowns-eng-list {
			    display: block;
			}
			
			.dropdowns-eng-list-item{
			    list-style: none;
			}
			
			.header-up-menu-icon{
			    color: #243f2f;
			}
			
			
			
			
			
			
			
			
			
			
			footer {
			    background-color: #00040f;
			    padding: 40px 20px;
			    color: #fff;
			}
			
			.footer-container {
			    padding: 3% 5%;
			    display: flex;
			    justify-content: space-between;
			}
			
			.products-section,
			.newsletter-section,
			.instagram-section {
			    width: 30%;
			}
			
			h3 {
			    margin-bottom: 15px;
			}
			
			ul {
			    list-style-type: none;
			    padding: 0;
			}
			
			ul li {
			    margin-bottom: 10px;
			}
			
			.newsletter-form {
			    display: flex;
			    margin-top: 10px;
			}
			
			.newsletter-form input {
			    padding: 10px;
			    border: none;
			    border-radius: 5px 0 0 5px;
			    width: 70%;
			}
			
			.newsletter-form button {
			    padding: 10px;
			    border: none;
			    background-color: #007bff;
			    color: #fff;
			    border-radius: 0 5px 5px 0;
			    cursor: pointer;
			}
			
			.instagram-gallery {
			    display: flex;
			    flex-wrap: wrap;
			    gap: 10px;
			}
			
			.instagram-gallery img {
			    width: 48%;
			    border-radius: 5px;
			}
			
			.social-media-links {
			    margin-top: 10px;
			}
			
			.social-media-links a {
			    margin-right: 10px;
			    color: #007bff;
			    text-decoration: none;
			}
			
			.footer-note {
			    text-align: center;
			    margin-top: 20px;
			    font-size: 12px;
			}
			.product-feed-img{
			    height: 55px;
			    max-width: 55px;
			}
			        
        </style>
    </head>
    <body>





        <header class="header">
            <div class="top-row">
                <div class="container-nav">
                    <nav class="nav-left">
                        <ul class="menu">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Products</a></li>
                            
                            <li><a href="#">About</a></li>
                        </ul>
                    </nav>
                    <div class="nav-right">
                        <span class="location">
                            <svg  xmlns="http://www.w3.org/2000/svg"  width="14"  height="14"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-map-pin"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M9 11a3 3 0 1 0 6 0a3 3 0 0 0 -6 0" /><path d="M17.657 16.657l-4.243 4.243a2 2 0 0 1 -2.827 0l-4.244 -4.243a8 8 0 1 1 11.314 0z" /></svg>
                            Colombo Sri Lanka
                        </span>
                        <span class="hours">
                            <svg  xmlns="http://www.w3.org/2000/svg"  width="14"  height="14"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-clock top-menu-icon"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 12a9 9 0 1 0 18 0a9 9 0 0 0 -18 0" /><path d="M12 7v5l3 3" /></svg>
                            24/7 Hours
                        </span>
                        <span class="phone">
                            <svg  xmlns="http://www.w3.org/2000/svg"  width="14"  height="14"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-phone top-menu-icon"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M5 4h4l2 5l-2.5 1.5a11 11 0 0 0 5 5l1.5 -2.5l5 2v4a2 2 0 0 1 -2 2a16 16 0 0 1 -15 -15a2 2 0 0 1 2 -2" /></svg>
                            +94 77 123 4567
                        </span>
                    </div>
                </div>
            </div>
            <div class="bottom-row">
                <div class="container-nav">
                    <div class="logo">
                        <img src="./images/BidifyLogo.png" alt="Bidify Logo" class="logo-img">
                    </div>


                    
    
                    <div class="categories-button">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="18"  height="18"  viewBox="0 0 24 24"  fill="none"  
                            stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  
                            class="icon icon-tabler icons-tabler-outline icon-tabler-menu-2">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M4 6l16 0" />
                            <path d="M4 12l16 0" /><path d="M4 18l16 0" />
                        </svg>
                        <button class="categories-btn">Categories</button>
                    </div>
    
                    <div class="search-bar">
                        <form class="search-bar-form">
                        <input type="text" class="search-input" id="searchBar" placeholder="Search for products..." onkeyup="searchProducts()">
                           
                            <button class="search-btn" type="submit">
                                <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  
                                fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  
                                class="icon icon-tabler icons-tabler-outline icon-tabler-search">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                <path d="M10 10m-7 0a7 7 0 1 0 14 0a7 7 0 1 0 -14 0" />
                                <path d="M21 21l-6 -6" /></svg>
                            </button>
                        </form>
                        
                        
                    </div>
    
                    <div class="order-eng-usd-menu">
    
                        <a href="#" class="Order-Tracking">Order Tracking</a>
                        
                        <div class="dropdowns-eng">
                            <a href="#" class="dropdowns-eng-link">English</a>
                            <ul class="dropdowns-eng-list">
                                <li class="dropdowns-eng-list-item">
                                    <a href="#" class="dropdowns-eng-list-item-link">Sinhala</a>
                                </li>
                                <li class="dropdowns-eng-list-item"></li>
                                    <a href="#" class="dropdowns-eng-list-item-link">Tamil</a>
                                </li>
                            </ul>
                        </div>
    
                        <div class="dropdowns-eng">
                            <a href="#" class="dropdowns-eng-link">USD</a>
                            <ul class="dropdowns-eng-list">
                                <li class="dropdowns-eng-list-item">
                                    <a href="#" class="dropdowns-eng-list-item-link">LKR</a>
                                </li>
                                <li class="dropdowns-eng-list-item"></li>
                                    <a href="#" class="dropdowns-eng-list-item-link">INR</a>
                                </li>
                            </ul>
                        </div>
                        
                    </div>
    
                    <div class="icons">
                        <a href="index.jsp">
                            <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  
                                stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  
                                class="icon icon-tabler icons-tabler-outline icon-tabler-user header-up-menu-icon">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                <path d="M8 7a4 4 0 1 0 8 0a4 4 0 0 0 -8 0" />
                                <path d="M6 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" />
                            </svg>
                        </a>
                        <a href="#">
                            <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  
                                stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  
                                class="icon icon-tabler icons-tabler-outline icon-tabler-heart header-up-menu-icon">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                <path d="M19.5 12.572l-7.5 7.428l-7.5 -7.428a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572" />
                            </svg>
                        </a>
                        <a href="logout">
                        <img id="logicon" src="./images/logout.png">
                       </a>
                    </div>
    
                </div>
            </div>
        </header>
    
    
        <div class="section1">
            <div class="section1-con">
                <div class="section1-image"></div>
                <div class="text-section">
                    <h1 class="section1-text">Bid Now for Exclusive<br> Deals on Top Products!</h1>
                    <p class="section1-subttxt">Sign Up for the Daily Newsletter</p>
    
                    <div class="Section1-button">
                        <div class="Section1-icon">
                            <svg  xmlns="http://www.w3.org/2000/svg"  width="18"  height="18"  viewBox="0 0 24 24"  fill="none"  
                                stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  
                                class="icon icon-tabler icons-tabler-outline icon-tabler-mail"><path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                <path d="M3 7a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-10z" />
                                <path d="M3 7l9 6l9 -6" />
                            </svg>
                        </div>
                        <div class="Section1-inputs">
                            <input type="email" placeholder="Your E-mail" required class="Section1-input">
                        </div>
                        <div class="Section1-btn">
                            <button class="section1-greenbtn">Subscribe</button>
                        </div>
                    </div>
    
                </div>
                
            </div>
            
        </div>





        <div class = "products">
            <div class = "container">
                <h1 class = "lg-title">Special Bid With Offers</h1>
                <p class = "text-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur quos sit consectetur, ipsa voluptatem vitae necessitatibus dicta veniam, optio, possimus assumenda laudantium. Temporibus, quis cum.</p>

                <div class = "product-items">
                    <!-- single product -->
                    <div class = "product">
                        <div class = "product-content">
                            <div class = "product-img">
                                <img src = "./images/art1.jpg" alt = "product image">
                            </div>
                            <div class = "product-btns">
                                <button type = "button" class = "btn-cart"> add to cart
                                    <span><i class = "fas fa-plus"></i></span>
                                </button>
                                <button type = "button" class = "btn-buy"> buy now
                                    <span><i class = "fas fa-shopping-cart"></i></span>
                                </button>
                            </div>
                        </div>

                        <div class = "product-info">
                            <div class = "product-info-top">
                                <h2 class = "sm-title">Art</h2>
                                <div class = "rating">
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "far fa-star"></i></span>
                                </div>
                            </div>
                            <a href = "#" class = "product-name">Elephant Art</a>
                            <p class = "product-price">$ 150.00</p>
                            <p class = "product-price">$ 133.00</p>
                        </div>

                        <div class = "off-info">
                            <h2 class = "sm-title">25% off</h2>
                        </div>
                    </div>
                    <!-- end of single product -->
                    <!-- single product -->
                    <div class = "product">
                        <div class = "product-content">
                            <div class = "product-img">
                                <img src = "./images/lamp.jpg" alt = "product image">
                            </div>
                            <div class = "product-btns">
                                <button type = "button" class = "btn-cart"> add to cart
                                    <span><i class = "fas fa-plus"></i></span>
                                </button>
                                <button type = "button" class = "btn-buy"> buy now
                                    <span><i class = "fas fa-shopping-cart"></i></span>
                                </button>
                            </div>
                        </div>

                        <div class = "product-info">
                            <div class = "product-info-top">
                                <h2 class = "sm-title">Daimond Lamp</h2>
                                <div class = "rating">
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "far fa-star"></i></span>
                                </div>
                            </div>
                            <a href = "#" class = "product-name">Tradiotonal Diamond Lamp</a>
                            <p class = "product-price">$ 150.00</p>
                            <p class = "product-price">$ 133.00</p>
                        </div>
                    </div>
                    <!-- end of single product -->
                    <!-- single product -->
                    <div class = "product">
                        <div class = "product-content">
                            <div class = "product-img">
                                <img src = "./images/land.jpg" alt = "product image">
                            </div>
                            <div class = "product-btns">
                                <button type = "button" class = "btn-cart"> add to cart
                                    <span><i class = "fas fa-plus"></i></span>
                                </button>
                                <button type = "button" class = "btn-buy"> buy now
                                    <span><i class = "fas fa-shopping-cart"></i></span>
                                </button>
                            </div>
                        </div>

                        <div class = "product-info">
                            <div class = "product-info-top">
                                <h2 class = "sm-title">Real Estate</h2>
                                <div class = "rating">
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "far fa-star"></i></span>
                                </div>
                            </div>
                            <a href = "#" class = "product-name">3Cr Land</a>
                            <p class = "product-price">$ 150.00</p>
                            <p class = "product-price">$ 133.00</p>
                        </div>
                    </div>
                    <!-- end of single product -->
                    <!-- single product -->
                    <div class = "product">
                        <div class = "product-content">
                            <div class = "product-img">
                                <img src = "./images/art3.jpg" alt = "product image">
                            </div>
                            <div class = "product-btns">
                                <button type = "button" class = "btn-cart"> add to cart
                                    <span><i class = "fas fa-plus"></i></span>
                                </button>
                                <button type = "button" class = "btn-buy"> buy now
                                    <span><i class = "fas fa-shopping-cart"></i></span>
                                </button>
                            </div>
                        </div>

                        <div class = "product-info">
                            <div class = "product-info-top">
                                <h2 class = "sm-title">Art</h2>
                                <div class = "rating">
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "far fa-star"></i></span>
                                </div>
                            </div>
                            <a href = "#" class = "product-name">Illustration Art</a>
                            <p class = "product-price">$ 150.00</p>
                            <p class = "product-price">$ 133.00</p>
                        </div>

                        <div class = "off-info">
                            <h2 class = "sm-title">25% off</h2>
                        </div>
                    </div>
                    <!-- end of single product -->
                    <!-- single product -->
                    <div class = "product">
                        <div class = "product-content">
                            <div class = "product-img">
                                <img src = "./images/car.jpg" alt = "product image">
                            </div>
                            <div class = "product-btns">
                                <button type = "button" class = "btn-cart"> add to cart
                                    <span><i class = "fas fa-plus"></i></span>
                                </button>
                                <button type = "button" class = "btn-buy"> buy now
                                    <span><i class = "fas fa-shopping-cart"></i></span>
                                </button>
                            </div>
                        </div>

                        <div class = "product-info">
                            <div class = "product-info-top">
                                <h2 class = "sm-title">Vehicle</h2>
                                <div class = "rating">
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "far fa-star"></i></span>
                                </div>
                            </div>
                            <a href = "#" class = "product-name">Grand Level Car</a>
                            <p class = "product-price">$ 1500000.00</p>
                            <p class = "product-price">$ 1330000.00</p>
                        </div>
                    </div>
                    <!-- end of single product -->
                    <!-- single product -->
                    <div class = "product">
                        <div class = "product-content">
                            <div class = "product-img">
                                <img src = "./images/knife.jpg" alt = "product image">
                            </div>
                            <div class = "product-btns">
                                <button type = "button" class = "btn-cart"> add to cart
                                    <span><i class = "fas fa-plus"></i></span>
                                </button>
                                <button type = "button" class = "btn-buy"> buy now
                                    <span><i class = "fas fa-shopping-cart"></i></span>
                                </button>
                            </div>
                        </div>

                        <div class = "product-info">
                            <div class = "product-info-top">
                                <h2 class = "sm-title">Tradional</h2>
                                <div class = "rating">
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "far fa-star"></i></span>
                                </div>
                            </div>
                            <a href = "#" class = "product-name">King Used Knife</a>
                            <p class = "product-price">$ 150.00</p>
                            <p class = "product-price">$ 133.00</p>
                        </div>
                    </div>
                    <!-- end of single product -->
                    <!-- single product -->
                    <div class = "product">
                        <div class = "product-content">
                            <div class = "product-img">
                                <img src = "./images/palace.jpg" alt = "product image">
                            </div>
                            <div class = "product-btns">
                                <button type = "button" class = "btn-cart"> add to cart
                                    <span><i class = "fas fa-plus"></i></span>
                                </button>
                                <button type = "button" class = "btn-buy"> buy now
                                    <span><i class = "fas fa-shopping-cart"></i></span>
                                </button>
                            </div>
                        </div>

                        <div class = "product-info">
                            <div class = "product-info-top">
                                <h2 class = "sm-title">Palace</h2>
                                <div class = "rating">
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "far fa-star"></i></span>
                                </div>
                            </div>
                            <a href = "#" class = "product-name">Palace</a>
                            <p class = "product-price">$ 150.00</p>
                            <p class = "product-price">$ 133.00</p>
                        </div>
                    </div>
                    <!-- end of single product -->
                    <!-- single product -->
                    <div class = "product">
                        <div class = "product-content">
                            <div class = "product-img">
                                <img src = "./images/jewl.jpg" alt = "product image">
                            </div>
                            <div class = "product-btns">
                                <button type = "button" class = "btn-cart"> add to cart
                                    <span><i class = "fas fa-plus"></i></span>
                                </button>
                                <button type = "button" class = "btn-buy"> buy now
                                    <span><i class = "fas fa-shopping-cart"></i></span>
                                </button>
                            </div>
                        </div>

                        <div class = "product-info">
                            <div class = "product-info-top">
                                <h2 class = "sm-title">Jewl</h2>
                                <div class = "rating">
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "fas fa-star"></i></span>
                                    <span><i class = "far fa-star"></i></span>
                                </div>
                            </div>
                            <a href = "#" class = "product-name">Luxury Jewel</a>
                            <p class = "product-price">$ 150.00</p>
                            <p class = "product-price">$ 133.00</p>
                        </div>

                        <div class = "off-info">
                            <h2 class = "sm-title">35% off</h2>
                        </div>
                    </div>
                    <!-- end of single product -->
                </div>
            </div>
        </div>

        <div class = "product-collection">
            <div class = "container">
                <div class = "product-collection-wrapper">
                    <!-- product col left -->
                    <div class = "product-col-left flex">
                        <div class = "product-col-content">
                            <h2 class = "sm-title">Art & collection </h2>
                            <h2 class = "md-title">Art & collection </h2>
                            <p class = "text-light">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae consequatur facilis eligendi quibusdam voluptatibus exercitationem autem voluptatum, beatae architecto odit, quisquam repellat. Deleniti, architecto ab.</p>
                            <button type = "button" class = "btn-dark">Bid Now</button>
                        </div>
                    </div>

                    <!-- product col right -->
                    <div class = "product-col-right">
                        <div class = "product-col-r-top flex">
                            <div class = "product-col-content">
                                <h2 class = "sm-title">Real Estate </h2>
                                <h2 class = "md-title">Real Estate</h2>
                                <p class = "text-light">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae consequatur facilis eligendi quibusdam voluptatibus exercitationem autem voluptatum, beatae architecto odit, quisquam repellat. Deleniti, architecto ab.</p>
                                <button type = "button" class = "btn-dark">Bid Now</button>
                            </div>
                        </div>

                        <div class = "product-col-r-bottom">
                            <!-- left -->
                            <div class = "flex">
                                <div class = "product-col-content">
                                    <h2 class = "sm-title">Automobiles </h2>
                                    <h2 class = "md-title">Extra 50% Off </h2>
                                    <p class = "text-light">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae consequatur facilis eligendi quibusdam voluptatibus exercitationem autem voluptatum, beatae architecto odit, quisquam repellat. Deleniti, architecto ab.</p>
                                    <button type = "button" class = "btn-dark">Bid Now</button>
                                </div>
                            </div>
                            <!-- right -->
                            <div class = "flex">
                                <div class = "product-col-content">
                                    <h2 class = "sm-title">Electronics </h2>
                                    <h2 class = "md-title">best sellers </h2>
                                    <p class = "text-light">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae consequatur facilis eligendi quibusdam voluptatibus exercitationem autem voluptatum, beatae architecto odit, quisquam repellat. Deleniti, architecto ab.</p>
                                    <button type = "button" class = "btn-dark">Shop now</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>












        <footer>
            <div class="footer-container">
                <div class="products-section">
                    <h3>TOP Bidding</h3>
                    <ul>
                        <li>Electronics</li>
                        <li>Real Estate</li>
                        <li>Automobiles</li>
                        <li>Art & collection</li>
                    </ul>
                </div>
                <div class="newsletter-section">
                    <h3>NEWSLETTER</h3>
                    <p>You can trust us. We only send promo offers, not a single.</p>
                    <div class="newsletter-form">
                        <input type="email" placeholder="Your email here">
                        <button type="submit">SUBSCRIBE NOW</button>
                    </div>
                </div>
                <div class="instagram-section">
                    <h3>PRODUCTS FEED</h3>
                    <div class="instagram-gallery">
                        <img class="product-feed-img" src="./images/web1.jpeg" alt=" Image 1">
                        <img class="product-feed-img" src="./images/web2.jpeg" alt=" Image 2">
                        <img class="product-feed-img" src="./images/web3.jpeg" alt=" Image 3">
                        <img class="product-feed-img" src="./images/web4.jpg" alt=" Image 4">
                        <img class="product-feed-img" src="./images/web6.jpg" alt=" Image 5">
                        <img class="product-feed-img" src="./images/web7.jpg" alt=" Image 6">
                    </div>
                    <div class="social-media-links">
                        <a href="#"><svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="currentColor"  class="icon icon-tabler icons-tabler-filled icon-tabler-brand-facebook"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M18 2a1 1 0 0 1 .993 .883l.007 .117v4a1 1 0 0 1 -.883 .993l-.117 .007h-3v1h3a1 1 0 0 1 .991 1.131l-.02 .112l-1 4a1 1 0 0 1 -.858 .75l-.113 .007h-2v6a1 1 0 0 1 -.883 .993l-.117 .007h-4a1 1 0 0 1 -.993 -.883l-.007 -.117v-6h-2a1 1 0 0 1 -.993 -.883l-.007 -.117v-4a1 1 0 0 1 .883 -.993l.117 -.007h2v-1a6 6 0 0 1 5.775 -5.996l.225 -.004h3z" /></svg></a>
                        <a href="#"><svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-brand-x"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M4 4l11.733 16h4.267l-11.733 -16z" /><path d="M4 20l6.768 -6.768m2.46 -2.46l6.772 -6.772" /></svg></a>
                        <a href="#"><svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-world-www"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M19.5 7a9 9 0 0 0 -7.5 -4a8.991 8.991 0 0 0 -7.484 4" /><path d="M11.5 3a16.989 16.989 0 0 0 -1.826 4" /><path d="M12.5 3a16.989 16.989 0 0 1 1.828 4" /><path d="M19.5 17a9 9 0 0 1 -7.5 4a8.991 8.991 0 0 1 -7.484 -4" /><path d="M11.5 21a16.989 16.989 0 0 1 -1.826 -4" /><path d="M12.5 21a16.989 16.989 0 0 0 1.828 -4" /><path d="M2 10l1 4l1.5 -4l1.5 4l1 -4" /><path d="M17 10l1 4l1.5 -4l1.5 4l1 -4" /><path d="M9.5 10l1 4l1.5 -4l1.5 4l1 -4" /></svg></a>
                        <a href="#"><svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-brand-behance"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 18v-12h4.5a3 3 0 0 1 0 6a3 3 0 0 1 0 6h-4.5" /><path d="M3 12l4.5 0" /><path d="M14 13h7a3.5 3.5 0 0 0 -7 0v2a3.5 3.5 0 0 0 6.64 1" /><path d="M16 6l3 0" /></svg></a>
                    </div>
                </div>
            </div>
            <p class="footer-note">Copyright ©2024 All rights reserved Bidify</p>
        </footer>
        
        
        



        
    </body>
</html>