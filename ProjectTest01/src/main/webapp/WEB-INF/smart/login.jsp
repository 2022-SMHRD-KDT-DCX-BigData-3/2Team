<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>결재</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
/* Remove the navbar's default rounded borders and increase the bottom margin */
.box {
	width: 65%;
	margin: auto; /* 화면 중앙에 배치*/
}

.box-title {
	margin: auto;
	text-align: center;
}

.newBtn {
	float: right;
}

.regButton {
	float: right;
}
</style>
</head>
<body>
	<div id="wrap">
		<div class="content"></div>
		<div class="row">
			<!-- left column -->


			<div class="col-md-12">

				<div class='box'></div>

				<div class="box">
					<h3 class="box-title">자료실</h3>
					<div id ="searchBox" class="col-sm-11 col-md-11 text-right">
							<form id="rightTop" class="form-inline" onsubmit="return false;">
								<select id="cate" class="form-control">
									<option value="1">작성자</option>
									<option value="2">제목</option>
								</select>

								<div class="input-group">
									<input type="text" id="keyword" class="form-control"
										placeholder="Search">
									<div class="input-group-btn">
										<button type="button" class="btn btn-default" id="search">
											<i class="glyphicon glyphicon-search"></i>
										</button>
									</div>
								</div>
							</form>
						</div>
					<div class="regButton">
						<button type="button" class="btn btn-primary" id='newBtn'>자료등록</button>
					</div>
					<div class="box-body">

						<table id ="list" class="table table-striped">
						<thead>
							<tr>
								<th style="width: 55px">번호</th>
								<th>제목</th>
								<th style="width: 120px">작성자</th>
								<th style="width: 200px">작성일</th>
								<th style="width: 80px">조회수</th>
							</tr>
                       </thead>
                       <tbody>
							<c:forEach items="" var="dataVO">

								<tr>
									<td></td>
									<td><a href='/data/read?data_sq='></a></td>
									<td></td>
									<td></td>
									<td><span class="badge bg-red"></span></td>
								</tr>

							</c:forEach>
                      </tbody>
						</table>

					</div>
				 	<div id="pageIndexList" class="text-center">
						
					</div>

				</div>
				<!-- /.box-footer-->
			</div>
		</div>
</body>

</html>