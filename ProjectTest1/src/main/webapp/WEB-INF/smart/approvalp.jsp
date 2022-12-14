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
	$(document).ready(
			function() {

				$("#okbutton").click(function() {

					$("#frm").submit();
				});

				$(".apv_sq_rd").on("click", function() {
					var apv = $(this).attr("data-value"); //attr??? map??? ?????? ???????????? ????????? ????????? ??? ?????? ?????? ????????? ???

					$("#apv").val(apv);
					approvalRead(apv);
				});

				//?????? ??????
				function approvalRead(apv) {

					var params = {
						apv_sq : apv
					};

					$.ajax({
						url : "/approval/approvalRead",
						type : "POST",
						dataType : "json",
						data : JSON.stringify(params),
						contentType : "application/json; charset=UTF-8",
						beforeSend : function() {
							$("#apv_pl_nm1").empty();
							$("#apv_nm1").empty();
							$("#div_apv_nm").empty();
							$("#stf_nm").empty();
							$("#mid_nm").empty();
							$("#apv_ok").empty();
						},
						success : function(data) {
							console.log(data);

							var apv_pl_nm = data.apv_pl_nm;
							console.log(apv_pl_nm);
							var apv_nm = data.apv_nm;
							console.log(apv_nm);
							var apv_ok = data.apv_ok;
							console.log(apv_ok);
							var div_apv_nm = data.div_apv_nm;
							console.log(div_apv_nm);
							var stf_nm = data.stf_nm;
							console.log(stf_nm);
							var mid_nm = data.mid_nm;
							console.log(mid_nm);
							var stf_admn_sq = data.stf_admn_sq;
							console.log(stf_admn_sq);
							var apv_pl_rt = data.apv_pl_rt;
							console.log(apv_pl_rt);

							$("#apv_pl_nm1").text(apv_pl_nm);
							$("#apv_nm1").text(apv_nm);
							$("#div_apv_nm").text(div_apv_nm);
							$("#stf_nm").text(stf_nm);
							$("#mid_nm").text(mid_nm);
							$("#apv_ok").text(apv_ok);
					  	    $("#apv_pl_rt1").html('<iframe style="float: right;" src = "/resources/ViewerJS/#../file/'+ apv_pl_rt + '" width="530" height="300" allowfullscreen webkitallowfullscreen></iframe>')

							if (stf_admn_sq == '1') {
								$("#apv_ok_sq1").hide();
							} else if (stf_admn_sq == '2') {
								$("#fnl_admn").remove();
							}
							 else if(stf_admn_sq == '4'){
								 console.log(stf_admn_sq);
								$("#mid_admn").remove();
							}

						},
						error : function(request, status, error) {
							alert("list search fail :: error code: "
									+ request.status + "\n" + "error message: "
									+ error + "\n");
						}
					});
				}

				//?????????????????? ???????????? 
				$("#apv_sq_md").on("click", function() {

					var apv_sq = $("#apv").val();

					approvalOk(apv_sq);
				});

				function approvalOk(apv_sq) {

					var params = {
						apv_sq : apv_sq,
						apv_ok_sq : $("#apv_ok_sq1").val()
					};

					$.ajax({
						url : "/approval/approvalOk",
						type : "POST",
						dataType : "text",
						data : JSON.stringify(params),
						contentType : "application/json; charset=UTF-8",
						success : function(result) {
							if (result == 'SUCCESS') {
								alert("?????????????????????");
								window.location.reload();

							}
						}
					});
				}
				// Ajax ????????? ??????
				$(document).on("click", "#pageIndexListAjax > li > a",
						function() {
							var params = {
								cate : $("#cate").val(),
								keyword : $("#keyword").val(),
								page : $(this).attr("data-page"),
								div_apv_sq : $("#div_apv_sq").val()
							};

							apvListSearch(params);
						});
				/* ????????? ?????? */
				$("#search").on("click", function() {
					if ($("#keyword").val() == "") {
						alert("???????????? ?????? 1?????? ?????? ??????????????????.");
					} else if ($("#keyword").val() != "")
						var params = {
							cate : $("#cate").val(),
							keyword : $("#keyword").val(),
							div_apv_sq : $("#div_apv_sq").val()
						};
					apvListSearch(params);
				});
			});

	/* ?????? ?????? */
	function apvListSearch(params) {
		$
				.ajax({
					url : "/approval/apvListSearch",
					type : "POST",
					dataType : "json",
					data : JSON.stringify(params),
					contentType : "application/json; charset=UTF-8",
					beforeSend : function() {
						$("#list > tbody").empty();
						$("#pageIndexList").empty();
					},

					success : function(data) {

						console.log(params);
						var apvList = data.apvList;
						var pageIndexListAjax = data.pageIndexListAjax;

						var tbody = $("#list > tbody");

						$
								.each(
										apvList,
										function(idx, val) {
											tbody
													.append($('<tr>')
															.append(
																	$(
																			'<td>',
																			{
																				text : val.apv_sq
																			}))
															.append(
																	$(
																			'<td>',
																			{
																				html : "<a href='#' class='apv_sq_rd' data-value="+val.apv_sq+"' data-toggle='modal' data-target='#readModal' >"
																						+ val.apv_nm
																						+ "</a>"
																			}))
															.append(
																	$(
																			'<td>',
																			{
																				text : val.stf_nm
																			}))
															.append(
																	$(
																			'<td>',
																			{
																				text : val.div_apv_nm
																			}))
															.append(
																	$(
																			'<td>',
																			{
																				text : val.apv_ok
																			})));
										});
						$("#pageIndexList").html(pageIndexListAjax);
					},
					error : function(request, status, error) {
						alert("list search fail :: error code: "
								+ request.status + "\n" + "error message: "
								+ error + "\n");
					}
				});
	}
</script>
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
            <span class="d-none d-md-block dropdown-toggle ps-2">??????</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>??????</h6>
              <span>??????</span>
              <span>??????</span>
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
                <span>?????????</span>
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
                <span>??????</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
  					<path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
				</svg>&nbsp;&nbsp;
                <span>??????</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            
            <li>
              <a class="dropdown-item d-flex align-items-center" href="calender">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
				  <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
				  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
				</svg>&nbsp;&nbsp;
                <span>?????????</span>
              </a>
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="boardmain">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
				  <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
				  <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z"/>
				</svg>&nbsp;&nbsp;
                <span>?????????</span>
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
                <span>????????????</span>
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
          <span>??????</span>
        </a>
      </li><!-- End chat Nav -->

	  <li class="nav-item">
        <a class="nav-link collapsed" href="mail">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
  				<path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
			</svg>&nbsp;&nbsp;
          <span>??????</span>
        </a>
      </li><!-- End mail Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="calender">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
			  <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
			  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
			</svg>&nbsp;&nbsp;
          <span>?????????</span>
        </a>
      </li><!-- End calender Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="boardmain">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
			  <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
			  <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z"/>
			</svg>&nbsp;&nbsp;
          <span>?????????</span>
        </a>
      </li><!-- End board Nav -->
	  
	  
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clipboard-check" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
			  <path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
			  <path d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z"/>
			</svg>&nbsp;&nbsp;
			<span>????????????</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="approvaln">
              <i class="bi bi-circle"></i><span>????????????</span>
            </a>
          </li>
          <li>
            <a href="approvalp">
              <i class="bi bi-circle"></i><span>????????????</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-heading">??????</li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="profile">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-badge" viewBox="0 0 16 16">
			  <path d="M6.5 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3zM11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
			  <path d="M4.5 0A2.5 2.5 0 0 0 2 2.5V14a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2.5A2.5 2.5 0 0 0 11.5 0h-7zM3 2.5A1.5 1.5 0 0 1 4.5 1h7A1.5 1.5 0 0 1 13 2.5v10.795a4.2 4.2 0 0 0-.776-.492C11.392 12.387 10.063 12 8 12s-3.392.387-4.224.803a4.2 4.2 0 0 0-.776.492V2.5z"/>
			</svg>&nbsp;&nbsp;
          <span>?????????</span>
        </a>
      </li><!-- End Profile Page Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
			  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z"/>
			</svg>&nbsp;&nbsp;
			<span>????????????</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="member">
              <i class="bi bi-circle"></i><span>????????????</span>
            </a>
          </li>
          <li>
            <a href="member">
              <i class="bi bi-circle"></i><span>?????? ????????????</span>
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
          <span>????????????</span>
        </a>
      </li><!-- End Logout Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->
  
  <main id="main" class="main">

	<div class="pagetitle">
		<form id="frm" class="form-horizontal" method="post">
			     <h1>????????????</h1></td>
			     <nav>
		        <ol class="breadcrumb">
		          <li class="breadcrumb-item"><a href="main">Home</a></li>
		          <li class="breadcrumb-item">Users</li>
		          <li class="breadcrumb-item active">Approval</li>
		        </ol>
		      </nav>
		</form>
	</div><!-- End Page Title -->
		
    <section class="section profile">
    	<div id="wrap">
		<!--?????? ????????? ?????? -->
		<div class="modal fade" id="insertModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">

					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">???????????????</h4>
					</div>

					<div class="modal-body">

						<form role="form" id="frm" method="post" enctype="multipart/form-data"
							action="/approval/register">
							<table class="table table-striped table-bordered">

								<colgroup>
									<col width="30%" />
									<col width="70%" />
								</colgroup>

								<tbody>
									<tr>
										<th>??????(*)</th>
										<td><input type="text" id="apv_nm" name="apv_nm"
											class="form-control" placeholder="??????"></td>
									</tr>
									<tr>
										<th>????????????(*)</th>
										<td><select id="div_apv_sq" class="form-control"
											name="div_apv_sq">
												<option value="1">??????</option>
												<option value="2">??????</option>
												<option value="3">????????????</option>
												<option value="4">????????????</option>
												<option value="5">??????</option>
										</select></td>
									</tr>
									<tr>
										<th>???????????????(*)</th>
										<td><input type="text" id="stf_mid_sq" name="stf_mid_sq"
											class="form-control" placeholder="??????????????? ??????????????????"></td>
									</tr>
								<!-- 	<tr>
										<th>???????????? ??????</th>
										<td><input type="text" id="apv_pl_nm" name="apv_pl_nm"
											class="form-control"></td>
									</tr>  -->
									<tr>
										<th>???????????? ?????????</th>
										<td><input type="file" id="apv_pl_rt" name="file"
											class="form-control"></td>
									</tr>
								</tbody>

							</table>
						</form>
					</div>

					<div class="modal-footer">
						<button type="button" id="okbutton" class="btn btn-primary"
							data-dismiss="modal">??????</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">??????</button>
					</div>

				</div>

			</div>

		</div>

		<!--??????????????? ???  -->

		<!--??????????????? ?????? ??????-->

		<div id="content">
			<div class="col-md-13">
				<div class="box">
					<!-- <form id="rightTop" class="form-inline"> -->
					<div id="searchBox" class="col-sm-11 col-md-11 text-center">
						<form id="rightTop" class="form-inline" onsubmit="return false;">
							<select id="cate" class="control">
								<option value="1">?????????</option>
								<option value="2">??????</option>

								<div class="input-group">
									<input type="text" id="keyword" class="form-control" placeholder="Search">
									<button type="button" class="btn btn-default" id="search">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</select>
						</form>
					</div>

					<button type="button" id="officerInsert" class="btn btn-success"
						data-toggle="modal" data-target="#insertModal">????????????</button>
					<!-- </form> -->
					<div class="box-body">
						<div>
							<table id="list" class="table table-hover">
								<colgroup>
									<col width="40px" />
									<col width="150px" />
									<col width="60px" />
									<col width="60px" />
									<col width="40px" />

								</colgroup>
								<thead>
									<tr class="active">
										<th>??????</th>
										<th>??????</th>
										<th>?????????</th>
										<th>????????????</th>
										<th>????????????</th>
									</tr>
								</thead>

								<tbody>

									<c:forEach items="" var="approvalVO">
										<input type='hidden' name='div_apv_sq' id="div_apv_sq"
											value="">
										<tr>
											<td></td>
											<td class="apv_sq_rd" data-value=""><a
												href='#' data-toggle="modal" data-target="#readModal"></a></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div id="pageIndexList" class="text-center">
					</div>
				</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--??????????????? ?????? ??????-->

		<!-- ???????????? ?????? -->

		<div class="modal fade" id="readModal" role="dialog">
			<div class="modal-dialog modal-lg" style="width: 560px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">???????????????</h4>
					</div>
					<div class="modal-body">
						<div>
							<input type="hidden" id="apv" name="apv"
								value="">

						</div>

						<table class="table table-striped table-bordered">
							<colgroup>
								<col width="30%" />
								<col width="70%" />
							</colgroup>

							<tbody>
						<%-- 		<tr>
									<th>????????????</th>
									<td id="apv_pl_nm1">${approvalVO.apv_pl_nm}</td>
								</tr> --%>
								<tr>
									<th>??????</th>
									<td id="apv_nm1"></td>
								</tr>
								<tr>
									<th>????????????</th>
									<td id="div_apv_nm"></td>
								</tr>
								<tr>
									<th>?????????</th>
									<td id="stf_nm"></td>
								</tr>
								<tr>
									<th>???????????????</th>
									<td id="mid_nm"></td>
								</tr>
								<tr>
									<th>????????????</th>
									<td id="apv_ok"></td>
								</tr>
							</tbody>
							
						</table>
					<div id ="apv_pl_rt1">
						</div>
						
					</div>
					<div class="modal-footer">
						<select id="apv_ok_sq1" class="form-control" name="apv_ok_sq1"
							data-value="apv_ok_sq1">
							<option value="">??????</option>
							<option value="1">??????</option>
							<option id="mid_admn" value="2">??????(??????)</option>
							<option id="fnl_admn" value="4">??????(??????)</option>
						</select>

						<button type="button" id="apv_sq_md" class="btn btn-primary"
							data-dismiss="modal" style="margin-top: 15px">??????</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal"
							style="margin-top: 15px">??????</button>
					</div>
				</div>
			</div>
		</div>
		<!-- ???????????? ?????? -->
	</div>
	</section>

  </main><!-- End #main -->

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("????????? ?????????????????????.");
	}
</script>

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