<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../page_init.jsp" %>

	<!-- Page main content START -->
	<div class="page-content-wrapper border">

		<!-- Title -->
		<div class="row">
			<div class="col-12">
				<h1 class="h3 mb-2 mb-sm-0">헤드헌터</h1>
			</div>
		</div>

		<!-- Card START -->
		<div class="card bg-transparent">

			<!-- Card header START -->
			<div class="card-header bg-transparent border-bottom px-0">
				<!-- Search and select START -->
				<div class="row g-3 align-items-center justify-content-between">

					<!-- Search bar -->
					<div class="col-md-8">
						<form class="rounded position-relative">
							<input class="form-control bg-transparent" type="search" placeholder="Search" aria-label="Search">
							<button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
						</form>
					</div>

					<!-- Tab buttons -->
					<div class="col-md-3">
						<!-- Tabs START -->
						<ul class="list-inline mb-0 nav nav-pills nav-pill-dark-soft border-0 justify-content-end" id="pills-tab" role="tablist">
							<!-- Grid tab -->
							<li class="nav-item">
								<a href="#nav-preview-tab-1" class="nav-link mb-0 me-2 active" data-bs-toggle="tab">
									<i class="fas fa-fw fa-th-large"></i>
								</a>
							</li>
							<!-- List tab -->
							<li class="nav-item">
								<a href="#nav-html-tab-1" class="nav-link mb-0" data-bs-toggle="tab">
									<i class="fas fa-fw fa-list-ul"></i>
								</a>
							</li>
						</ul>
						<!-- Tabs end -->
					</div>
				</div>
				<!-- Search and select END -->
			</div>
			<!-- Card header END -->

			<!-- Card body START -->
			<div class="card-body px-0">
				<!-- Tabs content START -->
				<div class="tab-content">

					<!-- Tabs content item START -->
					<div class="tab-pane fade show active" id="nav-preview-tab-1">
						<div class="row g-4">

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="/assets/images/avatar/09.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">넥사크로 / JAVA 개발자</a></h5>
												<p class="mb-0 small">한국감정평가사협회 / 용인</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare1" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare1">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">java,javascript,jsp</h6>
											</div>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">경력</h6>
											</div>
											<span class="mb-0 fw-bold">4~12년</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="/assets/images/avatar/01.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Carolyn Ortiz</a></h5>
												<p class="mb-0 small">Web Developer</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare2" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare2">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">15,523</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">10</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="/assets/images/avatar/03.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Dennis Barrett</a></h5>
												<p class="mb-0 small">Developer and Instructor</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare3" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare3">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">2,546</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">09</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="/assets/images/avatar/04.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Billy Vasquez</a></h5>
												<p class="mb-0 small">Full Stack Web Developer</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare4" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare4">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">12,786</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">07</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="/assets/images/avatar/05.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Jacqueline Miller</a></h5>
												<p class="mb-0 small">Engineering Architect</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare5" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare5">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">21,245</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">05</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="/assets/images/avatar/06.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Amanda Reed</a></h5>
												<p class="mb-0 small">Medical Science</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare6" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare6">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">8,546</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">06</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="/assets/images/avatar/07.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Samuel Bishop</a></h5>
												<p class="mb-0 small">Finance manager</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare7" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare7">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">5,354</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">15</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="/assets/images/avatar/10.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Louis Ferguson</a></h5>
												<p class="mb-0 small">Civil Engineer</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare8" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare8">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">2,578</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">02</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

						</div> <!-- Row END -->
					</div>
					<!-- Tabs content item END -->

					<!-- Tabs content item START -->
					<div class="tab-pane fade" id="nav-html-tab-1">
						<!-- Table START -->
						<div class="table-responsive border-0">
							<table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
								<!-- Table head -->
								<thead>
									<tr>
										<th scope="col" class="border-0 rounded-start">제목</th>
										<th scope="col" class="border-0">기업명 / 지역</th>
										<th scope="col" class="border-0">기술</th>
										<th scope="col" class="border-0">경력</th>
										<th scope="col" class="border-0 rounded-end">등록일자</th>
									</tr>
								</thead>

								<!-- Table body START -->
								<tbody>
									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="/assets/images/avatar/09.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">넥사크로 / JAVA 개발자</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">한국감정평가사협회 / 용인</h6>
										</td>

										<!-- Table data -->
										<td>java,javascript,jsp</td>

										<!-- Table data -->
										<td>5</td>

										<!-- Table data -->
										<td>
											2022-01-11 11:11:11
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="/assets/images/avatar/01.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Carolyn Ortiz</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Web Developer</h6>
										</td>

										<!-- Table data -->
										<td>10</td>

										<!-- Table data -->
										<td>15,523</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="/assets/images/avatar/03.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Dennis Barrett</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Developer and Instructor</h6>
										</td>

										<!-- Table data -->
										<td>09</td>

										<!-- Table data -->
										<td>2,546</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="/assets/images/avatar/04.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Billy Vasquez</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Full Stack Web Developer</h6>
										</td>

										<!-- Table data -->
										<td>07</td>

										<!-- Table data -->
										<td>12,786</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="/assets/images/avatar/05.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Jacqueline Miller</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Engineering Architect</h6>
										</td>

										<!-- Table data -->
										<td>05</td>

										<!-- Table data -->
										<td>21,245</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="/assets/images/avatar/06.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Amanda Reed</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Medical Science</h6>
										</td>

										<!-- Table data -->
										<td>06</td>

										<!-- Table data -->
										<td>8,546</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="/assets/images/avatar/07.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Samuel Bishop</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Finance manager</h6>
										</td>

										<!-- Table data -->
										<td>15</td>

										<!-- Table data -->
										<td>5,354</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="/assets/images/avatar/10.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Louis Ferguson</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Civil Engineer</h6>
										</td>

										<!-- Table data -->
										<td>02</td>

										<!-- Table data -->
										<td>2,578</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

								</tbody>
								<!-- Table body END -->
							</table>
						</div>
						<!-- Table END -->
					</div>
					<!-- Tabs content item END -->

				</div>
				<!-- Tabs content END -->
			</div>
			<!-- Card body END -->

			<!-- Card footer START -->
			<div class="card-footer bg-transparent p-0">
				<!-- Pagination START -->
				<div class="d-sm-flex justify-content-sm-between align-items-sm-center">
					<!-- Content -->
					<p class="mb-0 text-center text-sm-start">Showing 1 to 8 of 20 entries</p>
					<!-- Pagination -->
					<nav class="d-flex justify-content-center mb-0" aria-label="navigation">
						<ul class="pagination pagination-sm pagination-primary-soft mb-0 pb-0">
							<li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-left"></i></a></li>
							<li class="page-item mb-0"><a class="page-link" href="#">1</a></li>
							<li class="page-item mb-0 active"><a class="page-link" href="#">2</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#">3</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
						</ul>
					</nav>
				</div>
				<!-- Pagination END -->
			</div>
			<!-- Card footer END -->
		</div>
		<!-- Card END -->
	</div>
	<!-- Page main content END -->

