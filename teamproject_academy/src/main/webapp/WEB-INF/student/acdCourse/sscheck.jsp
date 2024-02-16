<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학적사항 조회페이지</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/resources/share/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<%@ include file="/resources/student/include/navHead.jsp" %>
	<div id="layoutSidenav">
<%@ include file="/resources/student/include/navLeft.jsp" %>

		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">학적사항 조회</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item">학적/수강관리</li>
						<li class="breadcrumb-item active">학적사항 조회</li>
					</ol>

					<div class="card mb-4 white">
						<div class="card-header disNone">학적사항 조회</div>
						<div class="card-body">
							<div class="card mb-4">
								<div class="card-body">
									<img src="<%=request.getContextPath()%>/resources/share/assets/img/${sscheckMap.soriginnm}.png" alt="${sscheckMap.sno}">
								</div>
							</div>
							<div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
								<div class="datatable-container">
									<table class="datatable-table viewtable sschecktable">
										<tbody>
											<tr>
												<th>학번</th>
												<td>${sscheckMap.sid}</td>
												<th>성명</th>
												<td>${sscheckMap.sname }</td>
												<th>주민번호</th>
												<td>${sscheckMap.sregNo1 }-${sscheckMap.sregNo2 }</td>
											</tr>
											<tr>
												<th>생년월일</th>
												<td>${sscheckMap.sbirth }</td>
												<th>성별</th>
												<td>${sscheckMap.sgender }</td>
												<th>학적상태</th>
												<td>${sscheckMap.sstatus }</td>
											</tr>
											<tr>
												<th>대학</th>
												<td>${sscheckMap.suniv }</td>
												<th>학부</th>
												<td>${sscheckMap.sfaculty }</td>
												<th>전공</th>
												<td>${sscheckMap.smajor }</td>
											</tr>
											<tr>
												<th>학년</th>
												<td>${sscheckMap.sgrade }</td>
												<th>학과석차</th>
												<td>${sscheckMap.srank}</td>
												<th>입학일자</th>
												<td>${sscheckMap.scomeDate }</td>
											</tr>
											<tr>
												<th>제적일자</th>
												<td>${sscheckMap.soutDate }</td>
												<th>수료일자</th>
												<td>${sscheckMap.scompletionDate }</td>
												<th>졸업일자</th>
												<td>${sscheckMap.sgradDate }</td>
											</tr>
											<tr>
												<th>E-mail</th>
												<td>${sscheckMap.semail }</td>
												<th>휴대전화번호</th>
												<td>${sscheckMap.sphone }</td>
												<th>집전화번호</th>
												<td>${sscheckMap.scall }</td>
											</tr>
											<tr>
												<th>주소</th>
												<td colspan="3">${sscheckMap.saddr }</td>
												<th>우편번호</th>
												<td>${sscheckMap.szipCode }</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

				</div>
			</main>
<%@ include file="/resources/student/include/footer.jsp" %>
		</div>
	</div>

</body>
</html>