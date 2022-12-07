<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%-- <%@page import="kr.smhrd.entity.Calendar.calendar.model.vo.Calendar"%> --%>
<%@page import="kr.smhrd.entity.Calendar"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
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
        #calendarBox{
            width: 90%;
          
          
            padding-left: 20%;
            
        }

    </style>

	<div id="calendarBox">
	
        <div id="calendar"></div>
 
    </div>

    <!-- modal 추가 -->
    <div class="modal fade" id="calendarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">일정을 입력하세요.</h5><br>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" id="close_modal">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                            
                
                
                <div class="modal-body">
                    <div class="form-group">
                    
                    	
                        <label for="taskId" class="col-form-label">일정 내용</label>
                        <input type="text" class="form-control" name="calendar_title">
                        <label style="display:none" class="content">내용을 입력해주세요</label><br>
                        <label for="taskId" class="col-form-label">시작 날짜</label>
                        <input type="date" class="form-control" name="calendar_start_date">
                      	<label style="display:none" class="needStart">시작 날짜를 입력해주세요</label><br>
                        <label for="taskId" class="col-form-label">종료 날짜</label>
                        <input type="date" class="form-control" name="calendar_end_date">
                        <label style="display:none" class="needEnd">종료 날짜를 입력해주세요</label><br> 
                     




					</div>
                </div>
                <div class="modal-footer">
                    <button id ="addButton" type="button" class="btn btn-warning">추가</button>
                    <button id ="close_modal2" type="button" class="btn btn-secondary">취소</button>
                </div>
    
            </div>
        </div>
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
  
  
<style>
/* #calendar{
   width:90%;
   margin:40px auto;
} */
body {
line-height:14px;
}
 
 
#calendar {
  max-width: 800px;
  margin: 0 auto;
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
<script class="cssdesk" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.0/moment.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="css/style.css" />
	
	<script type='text/javascript'>
	document.addEventListener('DOMContentLoaded', function () {
		
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth', 
            selectable: true,
            navLinks: true,
            nowIndicator: true,
            dayMaxEvents: true,
            edittable: true,
            selectMirror: true,
            theme:true,
            themeSystem:'bootstrap',
            headerToolbar: {
                left: 'prev,next today',
                center: 'title',
                right:'dayGridMonth,timeGridWeek,timeGridDay listWeek,addEventButton'
            	}, 
            	
            locale : "ko",
            eventAdd: function(obj){
            	console.log('add')
            },
           
			 eventChange: function(obj) { // 이벤트가 수정되면 발생하는 이벤트
				
				// GMT 시간은 9시간 빨라서 9시간 빼줘야됨
				var start = obj.event._instance.range.start;
				if(start.getHours() == 9) {
					start = moment(start).format('YYYY-MM-DD') + " 00:00";
				}
				else {
					start = start.setHours(start.getHours() - 9);
					start = moment(start).format('YYYY-MM-DD hh:mm');
				}
				
				
				var end = obj.event._instance.range.end;
				if(end.getHours() == 9) {
					end = moment(end).format('YYYY-MM-DD') + " 00:00";
				}
				else {
					end = end.setHours(end.getHours() - 9);
					end = moment(end).format('YYYY-MM-DD hh:mm');
				}
				
				
				$.ajax({
						  url: "calendar_edit",
						  type: "POST",
						  dataType: "JSON",
						  contentType: "application/json; charset=UTF-8",
						  data : {
								title : obj.event._def.title,
								start: start,
								end: end
						  },
						  traditional: true,
						  async: false, //동기
						  success : function(data){
							  console.log(data)
						  },
						  error : function(request,status,error){
							alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
							console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);
						  }
					});
				
			}, 
             
        		
        		
			eventRemove: function(obj){ // 이벤트가 삭제되면 발생하는 이벤트
				console.log('remove');
				
			},
			select: function(arg) { // 캘린더에서 드래그로 이벤트 생성
				
				var title = prompt('입력할 일정:');
				var color = prompt('색상 입력:');
				if (title || color) {
					$.ajax({
						  url: "calendar_add",
						  type: "POST",
						  dataType: "JSON",
						  contentType: "application/json; charset=UTF-8",
						  data : {
								title: title,
								start: arg.start,
								end: arg.end,
								allDay: arg.allDay
						  },
						  traditional: true,
						  async: false, //동기
						  success : function(data){
							  console.log(data)
						  },
						  error : function(request,status,error){
							alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
							console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);
						  }
					});

					calendar.addEvent({
						title: title,
						start: arg.start,
						end: arg.end,
						allDay: arg.allDay
					})
				} 
				
				calendar.unselect()
			},
			droppable: true,
			eventClick: function(arg) { 
				// 있는 일정 클릭시, 
				console.log(arg);
				if (confirm('일정을 삭제하시겠습니까?')) 
				{ 
					$.ajax({
						  url: "calendar_delete",
						  type: "POST",
						  dataType: "JSON",
						  contentType: "application/json; charset=UTF-8",
						  data : {
								title : arg.event._def.title
						  },
						  traditional: true,
						  async: false, //동기
						  success : function(data){
							  
							 console.log(data);
						  },
						  error : function(request,status,error){
							alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
							console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);
						  }
					});
					arg.event.remove();
				} 
			},
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
		 	
            	customButtons: {
                addEventButton: { // 추가한 버튼 설정
                    text : "일정 추가",  // 버튼 내용
                    click : function(){ // 버튼 클릭 시 이벤트 추가
                        $("#calendarModal").modal("show"); // modal 나타내기

                        $("#addButton").on("click",function(){  // modal의 추가 버튼 클릭 시
                            var content = $("#calendar_title").val();
                            var start_date = $("#calendar_start_date").val();
                            var end_date = $("#calendar_end_date").val();
                           
                            
                            //내용 입력 여부 확인
                            if(title == null || title == ''){
                                alert("내용을 입력하세요.");
                            }else if(start_date == ''){
                                alert("시작일을 입력하세요.");
                            }else if(end_date == ''){
                            	alert("종료일을 입력하세요");
                            }else if(new Date(end_date)- new Date(start_date) < 0){ // date 타입으로 변경 후 확인
                                alert("종료일이 시작일보다 먼저입니다.");
                            }else{ // 정상적인 입력 시
                                var obj = {
                                    "title" : title,
                                    "start" : start_date,
                                    "end" : end_date,
                                   
                                }//전송할 객체 생성

                                console.log(obj); //서버로 해당 객체를 전달해서 DB 연동 가능
                            }
                        });
                    }
                }
            },
            editable: true, // false로 변경 시 draggable 작동 x 
            displayEventTime: false // 시간 표시 x
            
            
        });
        calendar.render();
        $("span.fa-chevron-left").html("이전달"); 
        $("span.fa-chevron-right").html("다음달");
    });

	var content = document.querySelector("input[name=calendar_title]");
	var start_date = document.querySelector("input[name=calendar_start_date]");
    var end_date = document.querySelector("input[name=calendar_end_date]");
	const addCalendar = document.getElementById("Calendar")
 	addButton.addEventListener("click", ()=>{
 		
 		 if(content.value == ''){
 			document.querySelector(".content").style.display = "inline"
 		}else if(content.value !=''){
 			document.querySelector(".content").style.display = "none"
 		}if(start_date.value == ''){
 			document.querySelector(".needStart").style.display = "inline"	
 		}else if(start_date.value !=''){
 			document.querySelector(".needStart").style.display = "none"
 		}if(end_date.value == ''){
 			document.querySelector(".needEnd").style.display = "inline"
 		}else if(end_date.value !=''){
 			document.querySelector(".needEnd").style.display = "none"
 		}
 			

 			
 		
 			
 	}
 	)
 	$(document).ready(function() {
            $("#close_modal").click(function() {
                $("#calendarModal").modal("hide");
            });
            $("#close_modal2").click(function() {
                $("#calendarModal").modal("hide");
            });
        });
 </script>
 
 
 
</body>

</html>