<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../page_init.jsp" %>

	<!-- Page main content START -->
	<div class="page-content-wrapper border">

		<!-- Title -->
		<div class="row mb-3">
			<div class="col-12">
				<h1 class="h3 mb-0">구매내역</h1>
			</div>
		</div>

		<div class="row g-4 mb-4">
			<!-- Earning item -->
			<div class="col-sm-6 col-lg-4">
				<div class="p-4 bg-primary bg-opacity-10 rounded-3">
					<h6>1일</h6>
					<h2 class="mb-0 fs-1 text-primary">100</h2>
				</div>
			</div>

			<!-- Earning item -->
			<div class="col-sm-6 col-lg-4">
				<div class="p-4 bg-purple bg-opacity-10 rounded-3">
					<h6>7일
					</h6>
					<h2 class="mb-0 fs-1 text-purple">300</h2>
				</div>
			</div>

			<!-- Earning item -->
			<div class="col-sm-6 col-lg-4">
				<div class="p-4 bg-orange bg-opacity-10 rounded-3">
					<h6>30일</h6>
					<h2 class="mb-0 fs-1 text-orange">600</h2>
				</div>
			</div>
		</div> <!-- Row END -->
		
		<!-- All review table START -->
		<div class="card bg-transparent border">

			<!-- Card header START -->
			<div class="card-header bg-light border-bottom">
				<h5 class="mb-0">Total 100</h5>
			</div>
			<!-- Card header END -->

			<!-- Card body START -->
			<div class="card-body pb-0">
				<!-- Table START -->
				<div class="table-responsive-xxl border-0">
					<table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
						<!-- Table head -->
						<thead>
							<tr>
								<th scope="col" class="border-0 rounded-start">번호</th>
								<th scope="col" class="border-0">사용자</th>
								<th scope="col" class="border-0">마일리지명</th>
								<th scope="col" class="border-0">마일리지코드</th>
								<th scope="col" class="border-0">마일리지</th>
								<th scope="col" class="border-0 rounded-end">구매일자</th>
							</tr>
						</thead>

						<!-- Table body START -->
						<tbody>
						
							<!-- Table row -->
							<tr>
								<!-- Table data -->
								<td>1</td>

								<!-- Table data -->
								<td>
									<h6 class="mb-0"><a href="#">조덕용</a></h6>
								</td>

								<!-- Table data -->
								<td>
									<h6 class="mb-0"><a href="#">구매</a></h6>
								</td>

								<!-- Table data -->
								<td>
									ASDGD
								</td>

								<!-- Table data -->
								<td>
								100
								</td>

								<!-- Table data -->
								<td>
									2022-01-12 11:11:11
								</td>

							</tr>

							<!-- Table row -->
							<tr>
								<!-- Table data -->
								<td>1</td>

								<!-- Table data -->
								<td>
									<h6 class="mb-0"><a href="#">조덕용</a></h6>
								</td>

								<!-- Table data -->
								<td>
									<h6 class="mb-0"><a href="#">구매</a></h6>
								</td>

								<!-- Table data -->
								<td>
									ASDGD
								</td>

								<!-- Table data -->
								<td>
								100
								</td>

								<!-- Table data -->
								<td>
									2022-01-12 11:11:11
								</td>

							</tr>

						</tbody>
						<!-- Table body END -->
					</table>
				</div>
				<!-- Table END -->
			</div>
			<!-- Card body END -->

			<!-- Card footer START -->
			<div class="card-footer bg-transparent">
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
		<!-- All review table END -->
	</div>
	<!-- Page main content END -->
