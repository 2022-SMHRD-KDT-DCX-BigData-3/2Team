<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Insert title here</title>
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
<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("button[type='button']").click(function(e){
			var data=$(this).val();
			if(data=="0"){
				$("h2").html("일반결재");
				const tableContainer = document.querySelector(".boto");
				tableContainer.innerHTML = `<div class="bord">
			  		<div style="text-align: center;">
		  			<h2>
		  				일반결재
		  			</h2>
	  		</div>
	  			<table class="gettable thj">
	  				<tr class="gra">
	  					<td rowspan='2' class="gratd1">결재</td>
	  					<td class="gratd2">1차 결재자</td>
	  					<td class="gratd2">2차 결재자</td>
	  					<td class="gratd3">3차 결재자</td>
	  				</tr>
	  				<tr class="gar">
	  					<td class="votd1">
	  					<input type="hidden" name="appro_mem1" value="${view.m3_member_name}">
	  					${view.m3_member_name}<br>
	  					${view.rank_name_r3}<br>
	  					<fmt:formatDate pattern="MM-dd HH:MM" value=""/>
	  					</td>
	  					<td class="votd1">
	  					<input type="hidden" name="appro_mem2" value="${view.m2_member_name}">
	  					${view.m2_member_name}<br>
	  					${view.rank_name_r2}<br>
	  					<fmt:formatDate pattern="MM-dd HH:MM" value=""/>
	  					</td>
	  					<td class="votd2">
	  					<input type="hidden" name="appro_mem3" value="${view.m1_member_name}">
	  					${view.m1_member_name}<br>
	  					${view.rank_name_r1}<br>
	  					<fmt:formatDate pattern="MM-dd HH:MM" value=""/>
	  					</td>
	  				</tr>
	  			</table>
	  		
	  		<div class="getdiv">
	  			<table class="gettable2 thj">
	  				<tr class="gettr">
	  					<td class="tdnum">문서번호</td>
	  					<td class="tdnum1">${view.appro_id+1}</td>
	  					<td class="tdnum">기안일자</td>
	  					<td class="tdnum1"><input type="text" class="tdin1" placeholder="YYYY-MM-DD"></td>
	  				</tr>
	  				<tr class="gettr">
	  					<td class="tdnum">기안자</td>
	  					<input type="hidden" name="appro_member_id" value="${user.MEMBER_NAME}">
	  					<input type="hidden" name="member_id" value="${view.member_id}">
	  					<td class="tdnum1">${user.MEMBER_NAME}</td>
	  					<td class="tdnum">기안부서</td>
	  					<td class="tdnum1">${view.depart_name}</td>
	  				</tr>
	  				<tr class="gettr">
	  					<td class="tdnum2">문서제목</td>
	  					<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="appro_title"/></td>
	  				</tr>
	  				<tr class="gettr c1">
	  					<td class="tdnum2">첨부파일</td>
	  					<td colspan='3' class="tdfile"><input type="file" name="appro_filename"/></td>
	  				</tr>
	  				<tr class="gettr p1">
						<td class="tdnum2">지출일</td>
						<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="pay_date" value="NULL"/></td>
					</tr>
					<tr class="gettr p2">
						<td class="tdnum2">지출금액</td>
						<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="pay_cash" value="NULL"/></td>
					</tr>
	  				<tr class="gettr c2">
	  					<td class="tdnum2">휴가시작일</td>
	  					<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="member_stratdate" value="NULL"/></td>
	  				</tr>
	  				<tr class="gettr c3">
	  					<td class="tdnum2">휴가종료일</td>
	  					<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="member_enddate" value="NULL"/></td>
	  				</tr>
	  				<tr class="gettr c4">
						<td class="tdnum2">휴가일</td>
						<td colspan='3' class="tdfilen"><input type="number" min="0" max="20" class="tdin" name="member_num" value="0"/></td>
					</tr>
	  				<tr class="gettr1">
	  					<td class="tdnum2">제출사유</td>
	  					<td colspan='3' class="tdfilen"><textarea rows="6" class="tdin" name="appro_content"></textarea></td>
	  				</tr>
	  				<tr class="gettr2 p3">
						<td colspan='4' class="payz">영수증</td>
					</tr>
					<tr class="gettr2 p4">
						<td colspan='4' class="payc"></td>
					</tr>
	  			</table>
	  		</div>
	  		</div>`
				document.querySelector(".p1").style.display = "none";
				document.querySelector(".p2").style.display = "none";
				document.querySelector(".p3").style.display = "none";
				document.querySelector(".p4").style.display = "none";
				document.querySelector(".c2").style.display = "none";
				document.querySelector(".c3").style.display = "none";
				document.querySelector(".c4").style.display = "none";

			}
			else if(data=="1"){
				$("h2").html("지출결재");
				const tableContainer = document.querySelector(".boto");
				tableContainer.innerHTML = `<div class="bord">
			  		<div style="text-align: center;">
		  			<h2>
		  				지출결재
		  			</h2>
	  		</div>
	  			<table class="gettable thj">
	  				<tr class="gra">
	  					<td rowspan='2' class="gratd1">결재</td>
	  					<td class="gratd2">1차 결재자</td>
	  					<td class="gratd2">2차 결재자</td>
	  					<td class="gratd3">3차 결재자</td>
	  				</tr>
	  				<tr class="gar">
	  					<td class="votd1">
	  					<input type="hidden" name="appro_mem1" value="${view.m3_member_name}">
	  					${view.m3_member_name}<br>
	  					${view.rank_name_r3}<br>
	  					<fmt:formatDate pattern="MM-dd HH:MM" value=""/>
	  					</td>
	  					<td class="votd1">
	  					<input type="hidden" name="appro_mem2" value="${view.m2_member_name}">
	  					${view.m2_member_name}<br>
	  					${view.rank_name_r2}<br>
	  					<fmt:formatDate pattern="MM-dd HH:MM" value=""/>
	  					</td>
	  					<td class="votd2">
	  					<input type="hidden" name="appro_mem3" value="${view.m1_member_name}">
	  					${view.m1_member_name}<br>
	  					${view.rank_name_r1}<br>
	  					<fmt:formatDate pattern="MM-dd HH:MM" value=""/>
	  					</td>
	  				</tr>
	  			</table>
	  		
	  		<div class="getdiv">
	  			<table class="gettable3 thj">
	  				<tr class="gettr">
	  					<td class="tdnum">문서번호</td>
	  					<td class="tdnum1">${view.appro_id+1}</td>
	  					<td class="tdnum">기안일자</td>
	  					<td class="tdnum1"><input type="text" class="tdin1" placeholder="YYYY-MM-DD"></td>
	  				</tr>
	  				<tr class="gettr">
	  					<td class="tdnum">기안자</td>
	  					<input type="hidden" name="appro_member_id" value="${user.MEMBER_NAME}">
	  					<input type="hidden" name="member_id" value="${view.member_id}">
	  					<td class="tdnum1">${user.MEMBER_NAME}</td>
	  					<td class="tdnum">기안부서</td>
	  					<td class="tdnum1">${view.depart_name}</td>
	  				</tr>
	  				<tr class="gettr">
	  					<td class="tdnum2">문서제목</td>
	  					<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="appro_title"/></td>
	  				</tr>
	  				<tr class="gettr c1">
	  					<td class="tdnum2">첨부파일</td>
	  					<td colspan='3' class="tdfile"><input type="file" name="appro_filename" value="NULL"/></td>
	  				</tr>
	  				<tr class="gettr p1">
	  					<td class="tdnum2">지출일</td>
	  					<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="pay_date"/></td>
	  				</tr>
	  				<tr class="gettr p2">
	  					<td class="tdnum2">지출금액</td>
	  					<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="pay_cash"/></td>
	  				</tr>
	  				<tr class="gettr c2">
	  					<td class="tdnum2">휴가시작일</td>
	  					<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="member_stratdate" value="NULL"/></td>
	  				</tr>
	  				<tr class="gettr c3">
	  					<td class="tdnum2">휴가종료일</td>
	  					<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="member_enddate" value="NULL"/></td>
	  				</tr>
	  				<tr class="gettr c4">
						<td class="tdnum2">휴가일</td>
						<td colspan='3' class="tdfilen"><input type="number" min="0" max="20" class="tdin" name="member_num" value="0"/></td>
					</tr>
	  				<tr class="gettr1">
	  					<td class="tdnum2">제출사유</td>
	  					<td colspan='3' class="tdfilen"><textarea rows="6" class="tdin" name="appro_content"></textarea></td>
	  				</tr>
	  				<tr class="gettr2 p3">
	  					<td colspan='4' class="payz">영수증</td>
	  				</tr>
	  				<tr class="gettr2 p4">
	  					<td colspan='4' class="payc"></td>
	  				</tr>
	  			</table>
	  		</div>
	  		</div>`
			document.querySelector(".c1").style.display = "none";
			document.querySelector(".c2").style.display = "none";
			document.querySelector(".c3").style.display = "none";
			document.querySelector(".c4").style.display = "none";
			}
			else {
				$("h2").html("휴가결재");
				const tableContainer = document.querySelector(".boto");
				tableContainer.innerHTML = `<div class="bord">
			  		<div style="text-align: center;">
		  			<h2>
		  				휴가결재
		  			</h2>
	  		</div>
	  			<table class="gettable thj">
	  				<tr class="gra">
	  					<td rowspan='2' class="gratd1">결재</td>
	  					<td class="gratd2">1차 결재자</td>
	  					<td class="gratd2">2차 결재자</td>
	  					<td class="gratd3">3차 결재자</td>
	  				</tr>
	  				<tr class="gar">
	  					<td class="votd1">
	  					<input type="hidden" name="appro_mem1" value="${view.m3_member_name}">
	  					${view.m3_member_name}<br>
	  					${view.rank_name_r3}<br>
	  					<fmt:formatDate pattern="MM-dd HH:MM" value=""/>
	  					</td>
	  					<td class="votd1">
	  					<input type="hidden" name="appro_mem2" value="${view.m2_member_name}">
	  					${view.m2_member_name}<br>
	  					${view.rank_name_r2}<br>
	  					<fmt:formatDate pattern="MM-dd HH:MM" value=""/>
	  					</td>
	  					<td class="votd2">
	  					<input type="hidden" name="appro_mem3" value="${view.m1_member_name}">
	  					${view.m1_member_name}<br>
	  					${view.rank_name_r1}<br>
	  					<fmt:formatDate pattern="MM-dd HH:MM" value=""/>
	  					</td>
	  				</tr>
	  			</table>
	  		
	  		<div class="getdiv">
	  			<table class="gettable3 thj">
	  				<tr class="gettr">
	  					<td class="tdnum">문서번호</td>
	  					<td class="tdnum1">${view.appro_id+1}</td>
	  					<td class="tdnum">기안일자</td>
	  					<td class="tdnum1"><input type="text" class="tdin1" placeholder="YYYY-MM-DD"></td>
	  				</tr>
	  				<tr class="gettr">
	  					<td class="tdnum">기안자</td>
	  					<input type="hidden" name="appro_member_id" value="${user.MEMBER_NAME}">
	  					<input type="hidden" name="member_id" value="${view.member_id}">
	  					<td class="tdnum1">${user.MEMBER_NAME}</td>
	  					<td class="tdnum">기안부서</td>
	  					<td class="tdnum1">${view.depart_name}</td>
	  				</tr>
	  				<tr class="gettr">
	  					<td class="tdnum2">문서제목</td>
	  					<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="appro_title"/></td>
	  				</tr>
	  				<tr class="gettr c1">
	  					<td class="tdnum2">첨부파일</td>
	  					<td colspan='3' class="tdfile"><input type="file" name="appro_filename" value="NULL"/></td>
	  				</tr>
	  				<tr class="gettr p1">
						<td class="tdnum2">지출일</td>
						<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="pay_date" value="NULL"/></td>
					</tr>
					<tr class="gettr p2">
						<td class="tdnum2">지출금액</td>
						<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="pay_cash" value="NULL"/></td>
					</tr>
	  				<tr class="gettr c2">
	  					<td class="tdnum2">휴가시작일</td>
	  					<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="member_stratdate"/></td>
	  				</tr>
	  				<tr class="gettr c3">
	  					<td class="tdnum2">휴가종료일</td>
	  					<td colspan='3' class="tdfilen"><input type="text" class="tdin" name="member_enddate"/></td>
	  				</tr>
	  				<tr class="gettr c4">
	  					<td class="tdnum2">휴가일</td>
	  					<td colspan='3' class="tdfilen"><input type="number" min="0" max="20" class="tdin" name="member_num"/></td>
	  				</tr>
	  				<tr class="gettr1">
	  					<td class="tdnum2">휴가사유</td>
	  					<td colspan='3' class="tdfilen"><textarea rows="6" class="tdin" name="appro_content"></textarea></td>
	  				</tr>
	  				<tr class="gettr2 p3">
						<td colspan='4' class="payz">영수증</td>
					</tr>
					<tr class="gettr2 p4">
						<td colspan='4' class="payc"></td>
					</tr>
  				</table>
	  		</div>
	  		</div>`
			document.querySelector(".c1").style.display = "none";
			document.querySelector(".p1").style.display = "none";
			document.querySelector(".p2").style.display = "none";
			document.querySelector(".p3").style.display = "none";
			document.querySelector(".p4").style.display = "none";
			}
		});
		
	});
</script>
</head>
<body>
<!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="http://localhost:9999/main" class="logo d-flex align-items-center">
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

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="assets/img/pro.png" alt="Profile" class="rounded-circle">
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
              <a class="dropdown-item d-flex align-items-center" href="room">
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
              <a class="dropdown-item d-flex align-items-center" href="list">
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
              <a class="dropdown-item d-flex align-items-center" href="logout">
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
        <a class="nav-link collapsed" href="commuting">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
			  <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
			  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
			</svg>&nbsp;&nbsp;
          <span>근태관리</span>
        </a>
      </li><!-- End Commuting Page Nav -->

	  <li class="nav-item">
        <a class="nav-link collapsed" href="room">
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
        <a class="nav-link collapsed" href="list">
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
            <a href="approvalp">
              <i class="bi bi-circle"></i><span>결재신청</span>
            </a>
          </li>
          <li>
            <a href="approvaln">
              <i class="bi bi-circle"></i><span>결재대기 ${ap.apro_status0}</span>
            </a>
          </li>
          <li>
            <a href="approvald">
              <i class="bi bi-circle"></i><span>결재진행 ${ap.apro_status1}</span>
            </a>
          </li>
          <li>
            <a href="approvale">
              <i class="bi bi-circle"></i><span>결재완료 ${ap.apro_status2}</span>
            </a>
          </li>
        </ul>
      </li><!-- End APPROVAL Nav -->

      <c:if test="${user.MEMBER_id == '1'}">
      <li class="nav-item">
        <a class="nav-link collapsed" href="member">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
			  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z"/>
			</svg>&nbsp;&nbsp;
			<span>직원조회/관리</span>
        </a>
      </li><!-- End member Nav -->
      </c:if>

      <li class="nav-item">
        <a class="nav-link collapsed" href="logout">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
			  <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
			</svg>&nbsp;&nbsp;
         <span>로그아웃</span>
        </a>
        </form>
      </li><!-- End Logout Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->
  
  <main id="main" class="main">

	<div class="pagetitle">
		<form id="frm" class="form-horizontal" method="post">
			     <h1>결재신청</h1></td>
			     <nav>
		        <ol class="breadcrumb">
		          <li class="breadcrumb-item"><a href="http://localhost:9999/main">Home</a></li>
		          <li class="breadcrumb-item">Users</li>
		          <li class="breadcrumb-item active">Approval</li>
		        </ol>
		      </nav>
		</form>
	</div><!-- End Page Title -->
		
    <section class="section profile">
    	<div class="sect">
  		<form action="${capth}/approvalp" method="post">
  		<div style="text-align: right;" class="mbudiv1">
	  		<button class="mbu" type="submit">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-check" viewBox="0 0 16 16">
				  <path d="M10.854 7.854a.5.5 0 0 0-.708-.708L7.5 9.793 6.354 8.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
				  <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"/>
				</svg>
				<span>신청</span>
			</button>
	  		<button class="mbu" type="reset">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-excel" viewBox="0 0 16 16">
				  <path d="M5.884 6.68a.5.5 0 1 0-.768.64L7.349 10l-2.233 2.68a.5.5 0 0 0 .768.64L8 10.781l2.116 2.54a.5.5 0 0 0 .768-.641L8.651 10l2.233-2.68a.5.5 0 0 0-.768-.64L8 9.219l-2.116-2.54z"/>
				  <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"/>
				</svg>
				<span>취소</span>
			</button>
	  		<button class="mbu"onclick="location.href='approvaln'">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list-columns-reverse" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M0 .5A.5.5 0 0 1 .5 0h2a.5.5 0 0 1 0 1h-2A.5.5 0 0 1 0 .5Zm4 0a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h-10A.5.5 0 0 1 4 .5Zm-4 2A.5.5 0 0 1 .5 2h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 4h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 6h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1h-8a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 8h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1h-8a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h-10a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5Z"/>
				</svg>
				<span>목록</span>
			</button>
  		</div>
  		
  		<div class="boto">
  		</div>
  		
  		<div class="radi">
  			<button type="button" name="appro_sort" class="radi1" value="0">일반결재</button>
  			<button type="button" name="appro_sort" class="radi1" value="1">지출결재</button>
  			<button type="button" name="appro_sort" class="radi1" value="2">휴가결재</button>
			<!-- <input type="radio"  name="appro_sort" class="radi1" value="0"/>일반결재
			<input type="radio"  name="appro_sort" class="radi1" value="1"/>지출결재
			<input type="radio"  name="appro_sort" class="radi1" value="2"/>휴가결재 -->
  		</div>
  		</form>
  	</div>
	</section>
  </main><!-- End #main -->

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

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
</body>
</html>