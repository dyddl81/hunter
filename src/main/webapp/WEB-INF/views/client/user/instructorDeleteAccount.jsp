<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../page_init.jsp" %>
	
<!-- =======================
Page Banner START -->
<section class="pt-0">
	<!-- Main banner background image -->
	<div class="container-fluid px-0">
		<div class="bg-blue h-100px h-md-200px rounded-0" style="background:url(assets/images/pattern/04.png) no-repeat center center; background-size:cover;">
		</div>
	</div>
	<div class="container mt-n4">
		<div class="row">
			<!-- Profile banner START -->
			<div class="col-12">
				<div class="card bg-transparent card-body p-0">
					<div class="row d-flex justify-content-between">
						<!-- Avatar -->
						<div class="col-auto mt-4 mt-md-0">
							<div class="avatar avatar-xxl mt-n3">
								<img class="avatar-img rounded-circle border border-white border-3 shadow" src="assets/images/avatar/01.jpg" alt="">
							</div>
						</div>
						<!-- Profile info -->
						<div class="col d-md-flex justify-content-between align-items-center mt-4">
							<div>
								<h1 class="my-1 fs-4">Lori Stevens <i class="bi bi-patch-check-fill text-info small"></i></h1>
								<ul class="list-inline mb-0">
									<li class="list-inline-item h6 fw-light me-3 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-2"></i>4.5/5.0</li>
									<li class="list-inline-item h6 fw-light me-3 mb-1 mb-sm-0"><i class="fas fa-user-graduate text-orange me-2"></i>12k Enrolled Students</li>
									<li class="list-inline-item h6 fw-light me-3 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-2"></i>25 Courses</li>
								</ul>
							</div>
							<!-- Button -->
							<div class="d-flex align-items-center mt-2 mt-md-0">
								<a href="instructor-create-course.html" class="btn btn-success mb-0">Create a course</a>
							</div>
						</div>
					</div>
				</div>
				<!-- Profile banner END -->

				<!-- Advanced filter responsive toggler START -->
				<!-- Divider -->
				<hr class="d-xl-none">
				<div class="col-12 col-xl-3 d-flex justify-content-between align-items-center">
					<a class="h6 mb-0 fw-bold d-xl-none" href="#">Menu</a>
					<button class="btn btn-primary d-xl-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
						<i class="fas fa-sliders-h"></i>
					</button>
				</div>
				<!-- Advanced filter responsive toggler END -->
			</div>
		</div>
	</div>
</section>
<!-- =======================
Page Banner END -->

<!-- =======================
Page content START -->
<section class="pt-0">
	<div class="container">
		<div class="row">

			<!-- Right sidebar START -->
			<div class="col-xl-3">
				<!-- Responsive offcanvas body START -->
				<nav class="navbar navbar-light navbar-expand-xl mx-0">
					<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
						<!-- Offcanvas header -->
						<div class="offcanvas-header bg-light">
							<h5 class="offcanvas-title" id="offcanvasNavbarLabel">My profile</h5>
							<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
						</div>
						<!-- Offcanvas body -->
						<div class="offcanvas-body p-3 p-xl-0">
							<div class="bg-dark border rounded-3 pb-0 p-3 w-100">
								<!-- Dashboard menu -->
								<div class="list-group list-group-dark list-group-borderless">
									<a class="list-group-item" href="instructor-dashboard.html"><i class="bi bi-ui-checks-grid fa-fw me-2"></i>Dashboard</a>
									<a class="list-group-item" href="instructor-manage-course.html"><i class="bi bi-basket fa-fw me-2"></i>My Courses</a>
									<a class="list-group-item" href="instructor-earning.html"><i class="bi bi-graph-up fa-fw me-2"></i>Earnings</a>
									<a class="list-group-item" href="instructor-studentlist.html"><i class="bi bi-people fa-fw me-2"></i>Students</a>
									<a class="list-group-item" href="instructor-order.html"><i class="bi bi-folder-check fa-fw me-2"></i>Orders</a>
									<a class="list-group-item" href="instructor-review.html"><i class="bi bi-star fa-fw me-2"></i>Reviews</a>
									<a class="list-group-item" href="instructor-edit-profile.html"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit Profile</a>
									<a class="list-group-item" href="instructor-payout.html"><i class="bi bi-wallet2 fa-fw me-2"></i>Payouts</a>
									<a class="list-group-item" href="instructor-setting.html"><i class="bi bi-gear fa-fw me-2"></i>Settings</a>
									<a class="list-group-item active" href="instructor-delete-account.html"><i class="bi bi-trash fa-fw me-2"></i>Delete Profile</a>
									<a class="list-group-item text-danger bg-danger-soft-hover" href="sign-in.html"><i class="fas fa-sign-out-alt fa-fw me-2"></i>Sign Out</a>
								</div>
							</div>
						</div>
					</div>
				</nav>
				<!-- Responsive offcanvas body END -->
			</div>
			<!-- Right sidebar END -->

			<!-- Main content START -->
			<div class="col-xl-9">
				<!-- Title and select START -->
				<div class="card border bg-transparent rounded-3 mb-0">
					<!-- Card header -->
					<div class="card-header bg-transparent border-bottom">
						<h3 class="card-header-title mb-0">Deactivate Account</h3>
					</div>
					<!-- Card body -->
					<div class="card-body">
						<h6>Before you go...</h6>
						<ul>
							<li>Take a backup of your data <a href="#">Here</a> </li>
							<li>If you delete your account, you will lose your all data.</li>
						</ul>
						<div class="form-check form-check-md my-4">
							<input class="form-check-input" type="checkbox" value="" id="deleteaccountCheck">
							<label class="form-check-label" for="deleteaccountCheck">Yes, I'd like to delete my account</label>
						</div>
						<a href="#" class="btn btn-success-soft mb-2 mb-sm-0">Keep my account</a>
						<a href="#" class="btn btn-danger mb-0">Delete my account</a>
					</div>
				</div>
				<!-- Title and select END -->
			</div>
			<!-- Main content END -->
		</div>
	</div>	
</section>
<!-- =======================
Page content END -->
