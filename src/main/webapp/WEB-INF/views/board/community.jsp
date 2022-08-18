<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>커뮤니티</title>
<link href="${path}/resources/css/styles.css" rel="stylesheet" />
<link href="${path}/resources/css/styles2.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
 
 
 <c:if test="${not empty sessionScope.user_no}">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand ps-3" href="/">FROGame</a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<!--<input type="text" placeholder="검색" style="position: relative; left: 30%; padding: 10px;">  상단 검색바-->
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/logout" id="logoutBtn">로그아웃</a></li>
				<li class="nav-item"><a class="nav-link" href="#!">장바구니</a></li>
				<li class="nav-item"><a class="nav-link" href="#!">고객센터</a></li>
			</ul>
		</div>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="#"> <i class="fas fa-tachometer-alt"></i>
							장르별 게임
						</a>
						<div class="sb-sidenav-menu-heading">커뮤니티</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 게시판
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="#">자유게시판</a> <a class="nav-link"
									href="#">공략게시판</a> <a class="nav-link" href="#">거래게시판</a> <a
									class="nav-link" href="#">사건사고게시판</a>
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">추가기능</div>
						<a class="nav-link" href="#">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 버그 제보 및 신고
						</a> <a class="nav-link" href="#"> <i class="fas fa-table"></i>
							문의사항
						</a>
					</div>
				</div>
				<!-- <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div> -->
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">Tables</h1>

					<div class="card mb-4">
						<div class="card-body">
							DataTables is a third party plugin that is used to generate the
							demo table below. For more information about DataTables, please
							visit the <a target="_blank" href="#">official DataTables
								documentation</a> .
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-columns"></i> 자유게시판
						</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>글쓴이</th>
										<th>등록일</th>
										<th>조회수</th>
										<th>추천수</th>
									</tr>
								</thead>
								<tbody>
								
									<tr>
										<td>1</td>
										<td><a href="#">글 제목1</a></td>
										<td>글쓴이1</td>
										<td>2022/04/25</td>
										<td>1</td>
										<td>1</td>
									</tr>
									
								</tbody>
							</table>
						</div>
					</div>
					<a class="nav-item" href="/boardInsert">글 작성하기</a>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div>
						<div class="text-muted">Copyright &copy; Your Website 2022</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	</c:if>
	
	
	
	
	
	<c:if test="${empty sessionScope.user_no}">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand ps-3" href="/">FROGame</a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<!--<input type="text" placeholder="검색" style="position: relative; left: 30%; padding: 10px;">  상단 검색바-->
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/moveLogin">로그인</a></li>
				<li class="nav-item"><a class="nav-link" href="/moveRegist">회원가입</a></li>
				<li class="nav-item"><a class="nav-link" href="#!">장바구니</a></li>
				<li class="nav-item"><a class="nav-link" href="#!">고객센터</a></li>
			</ul>
		</div>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="#"> <i class="fas fa-tachometer-alt"></i>
							장르별 게임
						</a>
						<div class="sb-sidenav-menu-heading">커뮤니티</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 게시판
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="#">자유게시판</a> <a class="nav-link"
									href="#">공략게시판</a> <a class="nav-link" href="#">거래게시판</a> <a
									class="nav-link" href="#">사건사고게시판</a>
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">추가기능</div>
						<a class="nav-link" href="#">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 버그 제보 및 신고
						</a> <a class="nav-link" href="#"> <i class="fas fa-table"></i>
							문의사항
						</a>
					</div>
				</div>
				<!-- <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div> -->
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">Tables</h1>

					<div class="card mb-4">
						<div class="card-body">
							DataTables is a third party plugin that is used to generate the
							demo table below. For more information about DataTables, please
							visit the <a target="_blank" href="#">official DataTables
								documentation</a> 
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-columns"></i> 자유게시판
						</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>글쓴이</th>
										<th>등록일</th>
										<th>조회수</th>
										<th>추천수</th>
									</tr>
								</thead>
								<tbody>
								
									<tr>
										<td>1</td>
										<td><a href="#">글 제목1</a></td>
										<td>글쓴이1</td>
										<td>2022/04/25</td>
										<td>1</td>
										<td>1</td>
									</tr>
									
								</tbody>
							</table>
						</div>
					</div>
					<a class="nav-item" href="/boardInsert">글 작성하기</a>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div>
						<div class="text-muted">Copyright &copy; Your Website 2022</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	</c:if>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="../../../resources/js/community.js"></script>
</body>
</html>
