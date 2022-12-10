<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%-- <%@page import="kr.smhrd.entity.Calendar.calendar.model.vo.Calendar"%> --%>
<%@page import="kr.smhrd.entity.Calendar"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%-- <c:set var="cpath" value="${pageContext.request.contextPath}"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>calendar</title>

<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css" />
<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<!-- =======================================================
* Template Name: NiceAdmin - v2.4.1
* Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->

<!--캘린더-->


  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- jscolor -->
<script src="assets/js/jscolor.js"></script>
</head>
<body>
<!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index" class="logo d-flex align-items-center">
        <img src="assets/img/smh.png" alt="">
        <span class="d-none d-lg-block">Smart Groupware</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-bell"></i>
            <span class="badge bg-primary badge-number">4</span>
          </a><!-- End Notification Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
            <li class="dropdown-header">
              You have 4 new notifications
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-exclamation-circle text-warning"></i>
              <div>
                <h4>Lorem Ipsum</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>30 min. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-x-circle text-danger"></i>
              <div>
                <h4>Atque rerum nesciunt</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>1 hr. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-check-circle text-success"></i>
              <div>
                <h4>Sit rerum fuga</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>2 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-info-circle text-primary"></i>
              <div>
                <h4>Dicta reprehenderit</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>4 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>
            <li class="dropdown-footer">
              <a href="#">Show all notifications</a>
            </li>

          </ul><!-- End Notification Dropdown Items -->

        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-chat-left-text"></i>
            <span class="badge bg-success badge-number">3</span>
          </a><!-- End Messages Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
            <li class="dropdown-header">
              You have 3 new messages
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Maria Hudson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>4 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Anna Nelson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>6 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>David Muldon</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>8 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="dropdown-footer">
              <a href="#">Show all messages</a>
            </li>

          </ul><!-- End Messages Dropdown Items -->

        </li><!-- End Messages Nav -->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">${user.MEMBER_NAME}</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>${user.MEMBER_NAME}</h6>
              <c:if test="${user.DEPART_CODE eq '1'}">
              	<span>비서실</span>
              </c:if>
              <c:if test="${user.DEPART_CODE eq '2'}">
              	<span>인사부</span>
              </c:if>
              <c:if test="${user.DEPART_CODE eq '3'}">
              	<span>총무부</span>
              </c:if>
              <c:if test="${user.DEPART_CODE eq '4'}">
              	<span>생산부</span>
              </c:if>
              <c:if test="${user.DEPART_CODE eq '5'}">
              	<span>홍보부</span>
              </c:if>
              <c:if test="${user.DEPART_CODE eq '6'}">
              	<span>관리부</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '1'}">
              	<span>사장</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '2'}">
              	<span>부사장</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '3'}">
              	<span>전무</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '4'}">
              	<span>상무</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '5'}">
              	<span>이사</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '6'}">
              	<span>부장</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '7'}">
              	<span>차장</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '8'}">
              	<span>과장</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '9'}">
              	<span>대리</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '10'}">
              	<span>사원</span>
              </c:if>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="profile">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-badge" viewBox="0 0 16 16">
				  	<path d="M6.5 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3zM11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
				  	<path d="M4.5 0A2.5 2.5 0 0 0 2 2.5V14a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2.5A2.5 2.5 0 0 0 11.5 0h-7zM3 2.5A1.5 1.5 0 0 1 4.5 1h7A1.5 1.5 0 0 1 13 2.5v10.795a4.2 4.2 0 0 0-.776-.492C11.392 12.387 10.063 12 8 12s-3.392.387-4.224.803a4.2 4.2 0 0 0-.776.492V2.5z"/>
				</svg>&nbsp;&nbsp;
                <span>프로필</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-left-dots" viewBox="0 0 16 16">
	  				<path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
				  	<path d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
				</svg>&nbsp;&nbsp;
                <span>채팅</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

          <li>
              <a class="dropdown-item d-flex align-items-center" href="calendar">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
				  <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
				  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
				</svg>&nbsp;&nbsp;
                <span>캘린더</span>
              </a>
            </li> 
            
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
				  <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
				  <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z"/>
				</svg>&nbsp;&nbsp;
                <span>게시판</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
				  <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
				</svg>&nbsp;&nbsp;
                <span>로그아웃</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

	  <li class="nav-item">
        <a class="nav-link collapsed" href="pages-chat">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-left-dots" viewBox="0 0 16 16">
  				<path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
			  	<path d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
			</svg>&nbsp;&nbsp;
          <span>채팅</span>
        </a>
      </li><!-- End chat Nav -->

	  <li class="nav-item">
        <a class="nav-link collapsed" href="calendar">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
			  <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
			  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
			</svg>&nbsp;&nbsp;
          <span>캘린더</span>
        </a>
      </li><!-- End calendar Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="boardmain">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
			  <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
			  <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z"/>
			</svg>&nbsp;&nbsp;
          <span>게시판</span>
        </a>
      </li><!-- End board Nav -->
	  
	  
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clipboard-check" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
			  <path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
			  <path d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z"/>
			</svg>&nbsp;&nbsp;
			<span>전자결재</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="approvaln">
              <i class="bi bi-circle"></i><span>결재조회</span>
            </a>
          </li>
          <li>
            <a href="approvalp">
              <i class="bi bi-circle"></i><span>결재신청</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-heading">정보</li>
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="commuting">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
			  <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
			  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
			</svg>&nbsp;&nbsp;
          <span>근태관리</span>
        </a>
      </li><!-- End Commuting Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="profile">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-badge" viewBox="0 0 16 16">
			  <path d="M6.5 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3zM11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
			  <path d="M4.5 0A2.5 2.5 0 0 0 2 2.5V14a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2.5A2.5 2.5 0 0 0 11.5 0h-7zM3 2.5A1.5 1.5 0 0 1 4.5 1h7A1.5 1.5 0 0 1 13 2.5v10.795a4.2 4.2 0 0 0-.776-.492C11.392 12.387 10.063 12 8 12s-3.392.387-4.224.803a4.2 4.2 0 0 0-.776.492V2.5z"/>
			</svg>&nbsp;&nbsp;
          <span>프로필</span>
        </a>
      </li><!-- End Profile Page Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
			  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z"/>
			</svg>&nbsp;&nbsp;
			<span>직원관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="member">
              <i class="bi bi-circle"></i><span>직원조회</span>
            </a>
          </li>
          <li>
            <a href="member">
              <i class="bi bi-circle"></i><span>직원 정보수정</span>
            </a>
          </li>
        </ul>
      </li><!-- End member Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-logout">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
			  <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
			</svg>&nbsp;&nbsp;
          <span>로그아웃</span>
        </a>
      </li><!-- End Logout Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Calendar</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="http://localhost:9999/main">Home</a></li>
          <li class="breadcrumb-item">Users</li>
          <li class="breadcrumb-item active">Calendar</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    	

	<!-- Start mail -->
    <section class="section profile">
      <div class="meback">
      	
      </div>
      <!-- End calendar -->
    </section>

  </main><!-- End #main -->
  
	<style>
body {
line-height:14px;
}
 
 
#calendar {
  max-width: 1100px;
  margin-left:400px ;
}
 
 
#form-div {
  background-color: '';
  padding:5px 5px 5px;
  width: 100%;    
  margin-top:5px;
  -moz-border-radius: 7px;
  -webkit-border-radius: 7px;
}
 
.feedback-input {
  color:#3c3c3c;
  font-family: Helvetica, Arial, sans-serif;
  font-weight:400;
  font-size: 11px;
  border-radius: 0;
  line-height: 22px;
  background-color: #ffffff;
  padding: 3px 3px 3px 6px;
  margin-bottom: 10px;
  width:100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  -ms-box-sizing: border-box;
  box-sizing: border-box;
  border: 3px solid rgba(0,0,0,0);
}
 
.feedback-input:focus{
  background: #fff;
  box-shadow: 0;
  /*border: 3px solid #3498db;*/
  border-color: #3498db;
  color: #3498db;
  outline: none;
  /*padding: 13px 13px 13px 54px;*/
}
 
.focused {
  color:#30aed6;
  border:#30aed6 solid 3px;
}
 
/* Icons */
#name{
  background-image: url(http://rexkirby.com/kirbyandson/images/name.svg);
  background-size: 30px 30px;
  background-position: 11px 8px;
  background-repeat: no-repeat;
}
 
#email{
  background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
  background-size: 30px 30px;
  background-position: 11px 8px;
  background-repeat: no-repeat;
}
 
#comment{
  background-image: url(http://rexkirby.com/kirbyandson/images/comment.svg);
  background-size: 30px 30px;
  background-position: 11px 8px;
  background-repeat: no-repeat;
}
 
textarea {
  width: 100%;
  height: 150px;
  line-height: 150%;
  resize:vertical;
}
 
input:hover, textarea:hover,
input:focus, textarea:focus {
  background-color:white;
}
 
#button-blue{
  font-family: 'Montserrat', Arial, Helvetica, sans-serif;
  float:left; /* 플롯 중요(::after 가상요소 이용)*/
  width: 100%;
  border: #fbfbfb solid 4px;
  cursor:pointer;
  background-color: #3498db;
  color:white;
  font-size:24px;
  padding-top:22px;
  padding-bottom:22px;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  transition: all 0.3s;
  margin-top:-4px;
  font-weight:700;
}
 
#button-blue:hover{
  background-color: rgba(0,0,0,0);
  color: #0493bd;
}
 
.ease {
  width: 0;
  height: 74px;
  background-color: #fbfbfb;
  -webkit-transition: .3s ease;
  -moz-transition: .3s ease;
  -o-transition: .3s ease;
  -ms-transition: .3s ease;
  transition: .3s ease;
}
 
.submit:hover .ease{
  width:100%;
  background-color:white;
}
</style>



	
	<script src="fullcalendar-5.11.3/lib/jquery-ui.js"></script>
	<script type='text/javascript'>
	
	
	var ctx ="${path}";
	   var isAdm ="${isAdm}";
	   var edit = true;
	   if(isAdm==1) edit=true;
	   
	   var diaLogOpt={
	        modal:true        //모달대화상자
	        ,resizable:false  //크기 조절 못하게
	        , width : "570"   // dialog 넓이 지정
	        , height : "470"  // dialog 높이 지정
	      };
	   var calFunc ={
			   calcDate: function(arg,calendar){
			      var rObj = new Object();
			      var start  = null;
			        var end    = null;
			        var allDay = arg.allDay;
			      var startDisp =null;
			      var endDisp = null;
			      var id = null;
			      var xcontent = null;
			      var title = null;
			      var color = null;
			      //============================== date get / set ======================================
			       
			        if(arg.id!=""&& arg.id!=null && arg.id!=undefined) id=arg.id;
			        if(arg.title!=""&& arg.title!=null && arg.title!=undefined) title=arg.title;
			        if(arg.extendedProps!=undefined){
			          if(arg._def.extendedProps.xcontent!=""&& arg._def.extendedProps.xcontent!=null && arg._def.extendedProps.xcontent!=undefined){
			              xcontent=arg._def.extendedProps.xcontent;
			          }
			        }
			        
			        if(allDay){//하루종일이면
			            var start  = arg.start.toISOString().slice(0,10); //returnCdate(calendar,arg.start);
			            var end=null;             
			            if(arg.end!=""&& arg.end!=null && arg.end!=undefined){
			                end    = arg.end.toISOString().slice(0,10);  //실제 데이터는 날짜를 하루 빼지 않는다 
			            }
			            if(start==end) end=null;  //같은날이면 end날짜 없음
			            
			            startDisp = start;
			            if(end!=null) endDisp = dateRel(arg.end.toISOString().slice(0,10)); //알릴때만 날짜 하루 빼기 
			        }else{//시간이 같이 들어오면
			            start = arg.start.toISOString();             
			            if(arg.end!=""&& arg.end!=null && arg.end!=undefined){
			                end   = arg.end.toISOString();
			            }
			            startDisp = returnCdate(calendar,arg.start);
			            if(end!=null) endDisp = returnCdate(calendar,arg.end);
			        }
			        rObj.start=start;
			        rObj.end=end;
			        rObj.start=start;
			        rObj.startDisp=startDisp;
			        rObj.endDisp=endDisp;
			        rObj.id=id;
			        rObj.xcontent=xcontent;
			        rObj.title=title;
			       //============================== date get / set ======================================
			        return rObj;
			   },
			   
			  
			 //등록초기
			   setDateRangeView :function(xobj){
			       var dispStr = xobj.startDisp;
			       if(xobj.endDisp!=null) dispStr+=" ~ "+xobj.endDisp;
			       
			       $("form#diaForm").find("input[name='xdate']").val(dispStr);
			       $("form#diaForm").find("input[name='start']").val(xobj.start);
			       $("form#diaForm").find("input[name='end']").val(xobj.end);
			       $("form#diaForm").find("input[name='actType']").val("C"); //등록
			   },
			   
			  
			   //form안에 name값을 $obj에 주입
			   getFormValue :function(){
			       var $dForm =$("form#diaForm");
			       var $obj = new Object();
			       $("form#diaForm").find("input,textarea,select").each(function(){
			           var xval = $(this).val();            
			           $obj[$(this).attr("name")]=xval;
			       });
			       
			       return $obj;
			   },
			   
			   //모든 태그 비활성화
			   formDsbTrue :function(){
			       $("form#diaForm").find("input,textarea,select").each(function(){
			           $(this).attr("disabled",true);
			       });
			   },
			   
			   
			   //모든 태그 활성화
			   formDsbFalse :function(){                
			       $("form#diaForm").find("input,textarea,select").each(function(){
			               $(this).attr("disabled",false);
			       });
			   },
			   
			   //데이터 조회
			   setDataForm :function(xobj){
			       var dispStr = xobj.startDisp;
			       if(xobj.endDisp!=null) dispStr+=" ~ "+xobj.endDisp;
			       
			       $("form#diaForm").find("input[name='xdate']").val(dispStr);
			       $("form#diaForm").find("input[name='start']").val(xobj.start);
			       $("form#diaForm").find("input[name='end']").val(xobj.end);
			       $("form#diaForm").find("input[name='actType']").val("U"); //수정
			       
			       
			       $("form#diaForm").find("input[name='id']").val(xobj.id);
			       $("form#diaForm").find("input[name='title']").val(xobj.title);
			       $("form#diaForm").find("textarea[name='xcontent']").val(xobj.xcontent);
			   }
			 };
			 //calFunc[e]
			  
			  
			  
			  
			 //등록 액션    
			 function createClnd(cal,xobj){ 
			   if(!confirm("일정을 등록 하시겠습니까?")) return false; 
			   var $obj = calFunc.getFormValue();    
			   
			   $.ajax({ 
			       url: ctx+"calendar_create", 
			       type: "POST", 
			       contentType: "application/json;charset=UTF-8",
			       data:JSON.stringify($obj) 
			  }).done(function(data) { 
			       var result = jQuery.parseJSON(data); 
			       console.log(result);
			       //모든 소스에서 이벤트를 다시 가져와 화면에 다시 렌더링
			       cal.refetchEvents();
			  }).fail(function(e) {  
			      alert("실패하였습니다."+e);
			  }).always(function() { 
			      $("#name").val("");
			      $("#comment").val("");
			  }); 
			   
			 }
			  
			  
			 //수정액션
			 function updateClnd(cal,xobj,event){ 
			   if(!confirm("해당일정을 정말로 수정 하시겠습니까?")){
			       if(event!=undefined) event.revert();
			       return false; 
			   }
			   var $obj = calFunc.getFormValue();    
			   
			   $.ajax({ 
			       url: ctx+"/adms/calendar/management/update_ajx.do", 
			       type: "POST", 
			       contentType: "application/json;charset=UTF-8",
			       data:JSON.stringify($obj) 
			  }).done(function(data) { 
			       var result = jQuery.parseJSON(data);
			       cal.refetchEvents();
			  }).fail(function(e) {  
			      alert("실패하였습니다."+e);
			  }).always(function() { 
			      $("#name").val("");
			      $("#comment").val("");
			  }); 
			 }
			  
			 //삭제액션
			 function deleteClnd(cal,xobj){ 
			   if(!confirm("해당일정을 정말로 삭제 하시겠습니까?")) return false; 
			   
			   var $obj = calFunc.getFormValue();    
			   $.ajax({ 
			       url: ctx+"/adms/calendar/management/delete_ajx.do", 
			       type: "POST", 
			       contentType: "application/json;charset=UTF-8",
			       data:JSON.stringify($obj) 
			  }).done(function(data) { 
			       var result = jQuery.parseJSON(data); 
			       cal.refetchEvents();
			  }).fail(function(e) {  
			      alert("실패하였습니다."+e);
			  }).always(function() { 
			      $("#name").val("");
			      $("#comment").val("");
			  }); 
			 }
			 //=========================================== function =========================================== 
			  
			 //관리자만 ,주,일 옵션 뷰
			 var rightm = "";
			 rightm+=',listWeek';  
	
	
			 
	document.addEventListener('DOMContentLoaded', function () {
		
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            //initialView: 'dayGridMonth', 
            allDay:false,
            selectable: true,
            navLinks: true,
            timeZone: 'Asia/Seoul',
            //nowIndicator: true,
            //dayMaxEvents: true,
            selectMirror: true,
            theme:true,
            themeSystem:'bootstrap',
            editable: true, // false로 변경 시 draggable 작동 x 
            //displayEventTime: false, // 시간 표시 x
            headerToolbar: {
                left: 'prev,next today',
                center: 'title',
                right:'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
            	}, 
            	
            locale : "ko",
            
           
			 eventChange: function(fetchInfo, successCallback, failureCallback) { // 이벤트가 수정되면 발생하는 이벤트
				 var start= fetchInfo.start.toISOString().slice(0, 7);
			       var end = fetchInfo.end.toISOString().slice(0, 7);
			       var param = "";
			       param+="start="+start;
			       param+="&end="+end;
			       
			       $.ajax({ 
			             url: ctx+"/adms/calendar/management/read_ajx.do", 
			             type: "POST",                  
			             data:param
			        }).done(function(data) { 
			             var result = jQuery.parseJSON(data); 
			             successCallback(result.list);
			             console.log(result);
			        }).fail(function(e) {  
			            alert("실패하였습니다."+e);
			        }).always(function() { 
			            
			        }); 
				
			},
			eventDrop: function(info) {               
		           var xObj = calFunc.calcDate(info.event,calendar); //get event data
		                calFunc.setDataForm(xObj);  //Set Form Data
		          updateClnd(calendar,xObj,info); 
		    },
		       eventResize: function(info) {           
		             var xObj = calFunc.calcDate(info.event,calendar); //get event data
		           calFunc.setDataForm(xObj);  //Set Form Data
		          updateClnd(calendar,xObj,info);  
		       },
		  eventTimeFormat: { 
		        hour: '2-digit',
		        minute: '2-digit',
		        hour12: false
		  },
             			
			select: function(arg) { // 캘린더에서 드래그로 이벤트 생성
				//$("#calendarModal").modal("show"); // modal 나타내기
				//if(isAdm==0) return false; 관리자모드
		        var xObj = calFunc.calcDate(arg,calendar);     //get event data     
		       
		        //================ dialog 옵션 추가 ===================
		        var btnOpt ={                
		                        "저장":function(){                            
		                            createClnd(calendar,xObj);  //저장클릭시 액션 함수
		                            $(this).dialog("close");
		                            
		                        },"취소":function(){
		                            $(this).dialog("close");
		                        }                
		                    }
		        var dOpt =diaLogOpt;
		        dOpt.buttons = btnOpt;
		        $("#name").val("");
		         $("#comment").val("");
		        
		       //================ dialog 옵션 추가 ===================
		      calFunc.formDsbFalse();          //Form data disabeld false
		       $('#dialog').dialog(dOpt);       //다이얼로그 오픈
		       calFunc.setDateRangeView(xObj);  //SET Form data
		      
		        calendar.unselect();
			},
			//droppable: true,
			eventClick: function(calEvent, jsEvent) {
				//$("#calendarModal").modal("show");
				var xObj = calFunc.calcDate(calEvent.event,calendar);  //get event data          
       //================ dialog 옵션 추가 ===================
     var btnOpt ={                
                    "삭제":function(){
                        deleteClnd(calendar,xObj); //삭제클릭시 액션 함수
                        $(this).dialog("close");
                    },"수정":function(){
                        updateClnd(calendar,xObj); //수정클릭시 액션 함수
                        $(this).dialog("close");
                    },"닫기":function(){
                        $(this).dialog("close");
                    }                
                  }
   //================ dialog 옵션 추가 ===================
     var dOpt =diaLogOpt;
     dOpt.buttons = btnOpt;                  
     //================ dialog 옵션 추가 ===================
    
     //================ 실행                      ===================
     $('#dialog').dialog(dOpt);  //다이얼로그 오픈
     calFunc.setDataForm(xObj);  //SET Form Data
				
			},
			editable:edit,
			dayMaxEvents: true,
			 events: function(info, successCallback, failureCallback){ // ajax 처리로 데이터를 로딩 시킨다. 
				$.ajax({
					  url: "calendar_load",
					  type: "POST",
					  dataType: "JSON",
					  contentType: "application/json; charset=UTF-8",
					  traditional: true,
					  async: false, //동기
					  success : function(data){
						  var events = [];	 
						 $.each(data, function(index, element) {
   								events.push({
                   		 		title: element.calendar_TITLE,
                    			start: element.calendar_START,
                    			end: element.calendar_END,
                    			color:element.calendar_COLOR,
                    			content:element.calendar_CONTENT
                    			
                  		 }); 
							});
						 successCallback(events);
						 
						
						console.log(events);
						
						
					  },
					  error : function(request,status,error){
						alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
						console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);
					 
					  }
					  
				});
				
					
			}, 
		 	
            	
            
            
            
        });
        
        calendar.render();
        $("span.fa-chevron-left").html("이전달"); 
        $("span.fa-chevron-right").html("다음달");
    });

	
	
	
	function dateRel(date){ 
		  var selectDate = date.split("-");
		  var changeDate = new Date();
		  changeDate.setFullYear(selectDate[0], selectDate[1]-1, selectDate[2]-1);
		  
		  var y = changeDate.getFullYear();
		    var m = changeDate.getMonth() + 1;
		    var d = changeDate.getDate();
		    
		    if(m < 10) { 
		        m = "0" + m;
		    }
		 
		    if(d < 10) {
		        d = "0" + d;
		    }
		    var resultDate = y + "-" + m + "-" + d;
		   return resultDate;
		}
		 
		function returnCdate(cal,time){      
		  return cal.formatDate(time,{month: 'long',year: 'numeric',day: 'numeric', hour:'numeric',minute:'numeric', timeZone: 'Asia/Seoul',locale: 'ko'});
		}
 </script>
  <div id="contents">
<div id="dialog" title="일정 관리" style="display:none;">
    <div id="form-div">
        <form class="diaForm" id="diaForm" >
              <input type="hidden" name="actType" value="C" /> <!-- C:등록 U:수정 D:삭제 -->
            <input type="hidden" name="id" value="" />
            <input type="hidden" name="start" value="" />
            <input type="hidden" name="end" value="" />
            
            <p class="name">
                <input name="title" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="일정타이틀" id="name" />
            </p>
            
            <p class="email">
                <input name="xdate" type="text" readonly="readonly" class="validate[required,custom[email]] feedback-input"  placeholder="선택된날짜 및 시간" />
            </p>
            
            <p class="text">
                <textarea name="xcontent" class="validate[required,length[6,100]] feedback-input" id="comment" placeholder="일정내용"></textarea>
            </p>
            
            <p class="CalCOL">
                <input name="color" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="배경색" id="col" />
            </p>
                    
        </form>
    </div>
</div>
<br/>
<div id='calendar'></div>
</div>

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
 <!--  <script src="assets/js/jquery-3.6.1.min.js"></script>
    -->
<link href="fullcalendar-5.11.3/lib/main.css" rel="stylesheet" />
<script src="fullcalendar-5.11.3/lib/main.js"></script>
<script src="fullcalendar-5.11.3/lib/locales/ko.js"></script>
<script src="fullcalendar-5.11.3/lib/locales-all.min.js"></script>
<!-- <script src="fullcalendar-5.11.3/skin/board/rumi_fullcalendar/js/fullcalendar.js"></script>
<script src="fullcalendar-5.11.3/skin/board/rumi_fullcalendar/js/jscolor.min.js"></script> -->
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  
  


 
 
 
</body>

</html>