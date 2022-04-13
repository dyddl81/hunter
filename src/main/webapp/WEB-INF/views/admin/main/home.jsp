<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../page_init.jsp" %>

	<!-- Page main content START -->
	<div class="page-content-wrapper border">

		<!-- Title -->
		<div class="row">
			<div class="col-12 mb-3">
				<h1 class="h3 mb-2 mb-sm-0">전체</h1>
			</div>
		</div>

		<!-- Counter boxes START -->
		<div class="row g-4 mb-4">
			<!-- Counter item -->
			<div class="col-md-6 col-xxl-3">
				<div class="card card-body bg-warning bg-opacity-15 p-4 h-100">
					<div class="d-flex justify-content-between align-items-center">
						<!-- Digit -->
						<div>
							<h2 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="1958" data-purecounter-delay="200">0</h2>
							<span class="mb-0 h6 fw-light">프로젝트</span>
						</div>
						<!-- Icon -->
						<div class="icon-lg rounded-circle bg-warning text-white mb-0"><i class="fas fa-tv fa-fw"></i></div>
					</div>
				</div>
			</div>

			<!-- Counter item -->
			<div class="col-md-6 col-xxl-3">
				<div class="card card-body bg-purple bg-opacity-10 p-4 h-100">
					<div class="d-flex justify-content-between align-items-center">
						<!-- Digit -->
						<div>
							<h2 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="1600"	data-purecounter-delay="200">0</h2>
							<span class="mb-0 h6 fw-light">프리랜서</span>
						</div>
						<!-- Icon -->
						<div class="icon-lg rounded-circle bg-purple text-white mb-0"><i class="fas fa-user-tie fa-fw"></i></div>
					</div>
				</div>
			</div>

			<!-- Counter item -->
			<div class="col-md-6 col-xxl-3">
				<div class="card card-body bg-primary bg-opacity-10 p-4 h-100">
					<div class="d-flex justify-content-between align-items-center">
						<!-- Digit -->
						<div>
							<h2 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="1235"	data-purecounter-delay="200">0</h2>
							<span class="mb-0 h6 fw-light">결제금액</span>
						</div>
						<!-- Icon -->
						<div class="icon-lg rounded-circle bg-primary text-white mb-0"><i class="fas fa-user-graduate fa-fw"></i></div>
					</div>
				</div>
			</div>

			<!-- Counter item -->
			<div class="col-md-6 col-xxl-3">
				<div class="card card-body bg-success bg-opacity-10 p-4 h-100">
					<div class="d-flex justify-content-between align-items-center">
						<!-- Digit -->
						<div>
							<div class="d-flex">
								<h2 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="845"	data-purecounter-delay="200">0</h2>
							</div>
							<span class="mb-0 h6 fw-light">문의사항</span>
						</div>
						<!-- Icon -->
						<div class="icon-lg rounded-circle bg-success text-white mb-0"><i class="bi bi-stopwatch-fill fa-fw"></i></div>
					</div>
				</div>
			</div>
		</div>
		<!-- Counter boxes END -->

		<!-- Chart and Ticket START -->
		<div class="row g-4 mb-4">

			<!-- Chart START -->
			<div class="col-xxl-8">
				<div class="card shadow h-100">

					<!-- Card header -->
					<div class="card-header p-4 border-bottom">
						<h5 class="card-header-title">통계</h5>
					</div>

					<!-- Card body -->
					<div class="card-body">
						<!-- Apex chart -->
						<div id="ChartPayout"></div>
					</div>
				</div>
			</div>
			<!-- Chart END -->

			<!-- Ticket START -->
			<div class="col-xxl-4">
				<div class="card shadow h-100">
					<!-- Card header -->
					<div class="card-header border-bottom d-flex justify-content-between align-items-center p-4">
						<h5 class="card-header-title">프로젝트</h5>
						<a href="#" class="btn btn-link p-0 mb-0">View all</a>
					</div>

					<!-- Card body START -->
					<div class="card-body p-4">

						<!-- Ticket item START -->
						<div class="d-flex justify-content-between position-relative">
							<div class="d-sm-flex">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
										<h6 class="mb-0">디자인</h6>
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-0"><a href="#" class="stretched-link">600만원 ~ 750만원 월 단위</a></h6>
									<p class="mb-0">[상주] 현대카드 블록체인 시스템 관리 - Java, Node.js</p>
									<span class="small">2022-03-02 ~ 2022-03-02</span>
								</div>
							</div>
						</div>
						<!-- Ticket item END -->

						<hr><!-- Divider -->

						<!-- Ticket item START -->
						<div class="d-flex justify-content-between position-relative">
							<div class="d-sm-flex">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
										<h6 class="mb-0">디자인</h6>
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-0"><a href="#" class="stretched-link">600만원 ~ 750만원 월 단위</a></h6>
									<p class="mb-0">[상주] 현대카드 블록체인 시스템 관리 - Java, Node.js</p>
									<span class="small">2022-03-02 ~ 2022-03-02</span>
								</div>
							</div>
						</div>
						<!-- Ticket item END -->

						<hr><!-- Divider -->

						<!-- Ticket item START -->
						<div class="d-flex justify-content-between position-relative">
							<div class="d-sm-flex">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
										<h6 class="mb-0">디자인</h6>
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-0"><a href="#" class="stretched-link">600만원 ~ 750만원 월 단위</a></h6>
									<p class="mb-0">[상주] 현대카드 블록체인 시스템 관리 - Java, Node.js</p>
									<span class="small">2022-03-02 ~ 2022-03-02</span>
								</div>
							</div>
						</div>
						<!-- Ticket item END -->

						<hr><!-- Divider -->

						<!-- Ticket item START -->
						<div class="d-flex justify-content-between position-relative">
							<div class="d-sm-flex">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
										<h6 class="mb-0">디자인</h6>
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-0"><a href="#" class="stretched-link">600만원 ~ 750만원 월 단위</a></h6>
									<p class="mb-0">[상주] 현대카드 블록체인 시스템 관리 - Java, Node.js</p>
									<span class="small">2022-03-02 ~ 2022-03-02</span>
								</div>
							</div>
						</div>
						<!-- Ticket item END -->
						
					</div>
					<!-- Card body END -->
				</div>
			</div>
			<!-- Ticket END -->
		</div>
		<!-- Chart and Ticket END -->

		<!-- Top listed Cards START -->
		<div class="row g-4">

			<!-- Top instructors START -->
			<div class="col-lg-6 col-xxl-4">
				<div class="card shadow h-100">

					<!-- Card header -->
					<div class="card-header border-bottom d-flex justify-content-between align-items-center p-4">
						<h5 class="card-header-title">프리랜서</h5>
						<a href="#" class="btn btn-link p-0 mb-0">View all</a>
					</div>

					<!-- Card body START -->
					<div class="card-body p-4">

						<!-- Instructor item START -->
						<div class="d-sm-flex justify-content-between align-items-center">
							<!-- Avatar and info -->
							<div class="d-sm-flex align-items-center mb-1 mb-sm-0">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
									<img class="avatar-img rounded-circle" src="/assets/images/avatar/09.jpg" alt="avatar">
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-1">조덕용</h6>
									<ul class="list-inline mb-0 small">
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-1"></i>희망급여 500이상</li>
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-1"></i>경력 5년차</li>
									</ul>
								</div>
							</div>
							<!-- Button -->
							<a href="#" class="btn btn-sm btn-light mb-0">View</a>
						</div>
						<!-- Instructor item END -->

						<hr><!-- Divider -->

						<!-- Instructor item START -->
						<div class="d-sm-flex justify-content-between align-items-center">
							<!-- Avatar and info -->
							<div class="d-sm-flex align-items-center mb-1 mb-sm-0">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
									<img class="avatar-img rounded-circle" src="/assets/images/avatar/09.jpg" alt="avatar">
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-1">조덕용</h6>
									<ul class="list-inline mb-0 small">
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-1"></i>희망급여 500이상</li>
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-1"></i>경력 5년차</li>
									</ul>
								</div>
							</div>
							<!-- Button -->
							<a href="#" class="btn btn-sm btn-light mb-0">View</a>
						</div>
						<!-- Instructor item END -->

						<hr><!-- Divider -->

						<!-- Instructor item START -->
						<div class="d-sm-flex justify-content-between align-items-center">
							<!-- Avatar and info -->
							<div class="d-sm-flex align-items-center mb-1 mb-sm-0">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
									<img class="avatar-img rounded-circle" src="/assets/images/avatar/09.jpg" alt="avatar">
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-1">조덕용</h6>
									<ul class="list-inline mb-0 small">
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-1"></i>희망급여 500이상</li>
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-1"></i>경력 5년차</li>
									</ul>
								</div>
							</div>
							<!-- Button -->
							<a href="#" class="btn btn-sm btn-light mb-0">View</a>
						</div>
						<!-- Instructor item END -->

						<hr><!-- Divider -->

						<!-- Instructor item START -->
						<div class="d-sm-flex justify-content-between align-items-center">
							<!-- Avatar and info -->
							<div class="d-sm-flex align-items-center mb-1 mb-sm-0">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
									<img class="avatar-img rounded-circle" src="/assets/images/avatar/09.jpg" alt="avatar">
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-1">조덕용</h6>
									<ul class="list-inline mb-0 small">
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-1"></i>희망급여 500이상</li>
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-1"></i>경력 5년차</li>
									</ul>
								</div>
							</div>
							<!-- Button -->
							<a href="#" class="btn btn-sm btn-light mb-0">View</a>
						</div>
						<!-- Instructor item END -->

						<hr><!-- Divider -->

						<!-- Instructor item START -->
						<div class="d-sm-flex justify-content-between align-items-center">
							<!-- Avatar and info -->
							<div class="d-sm-flex align-items-center mb-1 mb-sm-0">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
									<img class="avatar-img rounded-circle" src="/assets/images/avatar/09.jpg" alt="avatar">
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-1">조덕용</h6>
									<ul class="list-inline mb-0 small">
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-1"></i>희망급여 500이상</li>
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-1"></i>경력 5년차</li>
									</ul>
								</div>
							</div>
							<!-- Button -->
							<a href="#" class="btn btn-sm btn-light mb-0">View</a>
						</div>
						<!-- Instructor item END -->
						
					</div>
					<!-- Card body END -->
				</div>
			</div>
			<!-- Top instructors END -->

			<!-- Notice Board START -->
			<div class="col-lg-6 col-xxl-4">
				<div class="card shadow h-100">
					<!-- Card header -->
					<div class="card-header border-bottom d-flex justify-content-between align-items-center p-4">
						<h5 class="card-header-title">결제금액</h5>
						<a href="#" class="btn btn-link p-0 mb-0">View all</a>
					</div>

					<!-- Card body START -->
					<div class="card-body p-4">
						<div class="custom-scrollbar h-300px">

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-purple bg-opacity-10 text-purple rounded-2 flex-shrink-0"><i class="bi bi-currency-dollar fa-fw"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">조덕용</a></h6>
										<p class="mb-0">구매 100</p>
										<span class="small">2022-01-12 11:11:11</span>
									</div>
								</div>
							</div>
							<!-- Notice Board item END -->

							<hr><!-- Divider -->

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-purple bg-opacity-10 text-purple rounded-2 flex-shrink-0"><i class="bi bi-currency-dollar fa-fw"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">조덕용</a></h6>
										<p class="mb-0">구매 100</p>
										<span class="small">2022-01-12 11:11:11</span>
									</div>
								</div>
							</div>
							<!-- Notice Board item END -->

							<hr><!-- Divider -->

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-purple bg-opacity-10 text-purple rounded-2 flex-shrink-0"><i class="bi bi-currency-dollar fa-fw"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">조덕용</a></h6>
										<p class="mb-0">구매 100</p>
										<span class="small">2022-01-12 11:11:11</span>
									</div>
								</div>
							</div>
							<!-- Notice Board item END -->

							<hr><!-- Divider -->

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-purple bg-opacity-10 text-purple rounded-2 flex-shrink-0"><i class="bi bi-currency-dollar fa-fw"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">조덕용</a></h6>
										<p class="mb-0">구매 100</p>
										<span class="small">2022-01-12 11:11:11</span>
									</div>
								</div>
							</div>

							<!-- Notice Board item END -->
						</div>
					</div>
					<!-- Card body END -->

					<!-- Card footer START -->
					<div class="card-footer border-top">
						<div class="alert alert-success d-flex align-items-center mb-0 py-2">
							<div>
								<small class="mb-0">45 more notices listed</small>
							</div>
							<div class="ms-auto">
								<a class="btn btn-sm btn-success-soft mb-0" href="#!"> View all </a>
							</div>
						</div>
					</div>
					<!-- Card footer START -->
				</div>
			</div>
			<!-- Notice Board END -->

			<!-- Notice Board START -->
			<div class="col-lg-6 col-xxl-4">
				<div class="card shadow h-100">
					<!-- Card header -->
					<div class="card-header border-bottom d-flex justify-content-between align-items-center p-4">
						<h5 class="card-header-title">문의사항</h5>
						<a href="#" class="btn btn-link p-0 mb-0">View all</a>
					</div>

					<!-- Card body START -->
					<div class="card-body p-4">
						<div class="custom-scrollbar h-300px">

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-purple bg-opacity-10 text-purple rounded-2 flex-shrink-0"><i class="fas fa-user-tie fs-5"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">문의사항입니다</a></h6>
										<p class="mb-0">조덕용</p>
										<span class="small">2022-02-21 13:12:12</span>
									</div>
								</div>
							</div>
							<!-- Notice Board item END -->

							<hr><!-- Divider -->

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-purple bg-opacity-10 text-purple rounded-2 flex-shrink-0"><i class="fas fa-user-tie fs-5"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">문의사항입니다</a></h6>
										<p class="mb-0">조덕용</p>
										<span class="small">2022-02-21 13:12:12</span>
									</div>
								</div>
							</div>
							<!-- Notice Board item END -->

							<hr><!-- Divider -->

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-purple bg-opacity-10 text-purple rounded-2 flex-shrink-0"><i class="fas fa-user-tie fs-5"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">문의사항입니다</a></h6>
										<p class="mb-0">조덕용</p>
										<span class="small">2022-02-21 13:12:12</span>
									</div>
								</div>
							</div>
							<!-- Notice Board item END -->

							<hr><!-- Divider -->

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-purple bg-opacity-10 text-purple rounded-2 flex-shrink-0"><i class="fas fa-user-tie fs-5"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">문의사항입니다</a></h6>
										<p class="mb-0">조덕용</p>
										<span class="small">2022-02-21 13:12:12</span>
									</div>
								</div>
							</div>
							<!-- Notice Board item END -->
						</div>
					</div>
					<!-- Card body END -->

					<!-- Card footer START -->
					<div class="card-footer border-top">
						<div class="alert alert-success d-flex align-items-center mb-0 py-2">
							<div>
								<small class="mb-0">45 more notices listed</small>
							</div>
							<div class="ms-auto">
								<a class="btn btn-sm btn-success-soft mb-0" href="#!"> View all </a>
							</div>
						</div>
					</div>
					<!-- Card footer START -->
				</div>
			</div>
			<!-- Notice Board END -->

		</div>
		<!-- Top listed Cards END -->

	</div>
	<!-- Page main content END -->

	<!-- Back to top -->
	<div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>
	
	<!-- Bootstrap JS -->
	<script src="/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	
	<!-- Vendors -->
	<script src="/assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
	<script src="/assets/vendor/apexcharts/js/apexcharts.min.js"></script>
	<script src="/assets/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>
	
	<!-- Template Functions -->
	<script src="/assets/js/functions.js"></script>