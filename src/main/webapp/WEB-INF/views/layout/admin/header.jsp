<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<!-- Top bar START -->
		<nav class="top-bar navbar-light border-bottom py-0 py-xl-3">
			<div class="container-fluid p-0">
				<div class="d-flex align-items-center w-100">

					<!-- Logo START -->
					<div class="d-flex align-items-center d-xl-none">
						<a class="navbar-brand" href="index.html">
							<img class="light-mode-item navbar-brand-item h-30px" src="/assets/images/logo-mobile.svg" alt="">
							<img class="dark-mode-item navbar-brand-item h-30px" src="/assets/images/logo-mobile-light.svg" alt="">
						</a>
					</div>
					<!-- Logo END -->

					<!-- Toggler for sidebar START -->
					<div class="navbar-expand-xl sidebar-offcanvas-menu">
						<button class="navbar-toggler me-auto" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar" aria-expanded="false" aria-label="Toggle navigation" data-bs-auto-close="outside">
							<i class="bi bi-text-right fa-fw h2 lh-0 mb-0 rtl-flip" data-bs-target="#offcanvasMenu"> </i>
						</button>
					</div>
					<!-- Toggler for sidebar END -->
					
					<!-- Top bar left -->
					<div class="navbar-expand-lg ms-auto ms-xl-0">
						
						<!-- Toggler for menubar START -->
						<button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTopContent" aria-controls="navbarTopContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-animation">
								<span></span>
								<span></span>
								<span></span>
							</span>
						</button>
						<!-- Toggler for menubar END -->

					</div>
					<!-- Top bar left END -->
					
					<!-- Top bar right START -->
					<div class="ms-xl-auto">
						<ul class="navbar-nav flex-row align-items-center">

							<!-- Notification dropdown START -->
							<li class="nav-item ms-2 ms-md-3 dropdown">
								<!-- Notification button -->
								<a class="btn btn-light btn-round mb-0" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
									<i class="bi bi-bell fa-fw"></i>
								</a>
								<!-- Notification dote -->
								<span class="notif-badge animation-blink"></span>
	
								<!-- Notification dropdown menu START -->
								<div class="dropdown-menu dropdown-animation dropdown-menu-end dropdown-menu-size-md p-0 shadow-lg border-0">
									<div class="card bg-transparent">
										<div class="card-header bg-transparent border-bottom py-4 d-flex justify-content-between align-items-center">
											<h6 class="m-0">Notifications <span class="badge bg-danger bg-opacity-10 text-danger ms-2">2 new</span></h6>
											<a class="small" href="#">Clear all</a>
										</div>
										<div class="card-body p-0">
											<ul class="list-group list-unstyled list-group-flush">
												<!-- Notif item -->
												<li>
													<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
														<div class="me-3">
															<div class="avatar avatar-md">
																<img class="avatar-img rounded-circle" src="/assets/images/avatar/08.jpg" alt="avatar">
															</div>
														</div>
														<div>
															<p class="text-body small m-0">Congratulate <b>Joan Wallace</b> for graduating from <b>Microverse university</b></p>
															<u class="small">Say congrats</u>
														</div>
													</a>
												</li>
	
												<!-- Notif item -->
												<li>
													<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
														<div class="me-3">
															<div class="avatar avatar-md">
																<img class="avatar-img rounded-circle" src="/assets/images/avatar/02.jpg" alt="avatar">
															</div>
														</div>
														<div>
															<h6 class="mb-1">Larry Lawson Added a new course</h6>
															<p class="small text-body m-0">What's new! Find out about new features</p>
															<u class="small">View detail</u>
														</div>
													</a>
												</li>
	
												<!-- Notif item -->
												<li>
													<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
														<div class="me-3">
															<div class="avatar avatar-md">
																<img class="avatar-img rounded-circle" src="/assets/images/avatar/05.jpg" alt="avatar">
															</div>
														</div>
														<div>
															<h6 class="mb-1">New request to apply for Instructor</h6>
															<u class="small">View detail</u>
														</div>
													</a>
												</li>
	
												<!-- Notif item -->
												<li>
													<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
														<div class="me-3">
															<div class="avatar avatar-md">
																<img class="avatar-img rounded-circle" src="/assets/images/avatar/03.jpg" alt="avatar">
															</div>
														</div>
														<div>
															<h6 class="mb-1">Update v2.3 completed successfully</h6>
															<p class="small text-body m-0">What's new! Find out about new features</p>
															<small class="text-body">5 min ago</small>
														</div>
													</a>
												</li>
											</ul>
										</div>
										<!-- Button -->
										<div class="card-footer bg-transparent border-0 py-3 text-center position-relative">
											<a href="#" class="stretched-link">See all incoming activity</a>
										</div>
									</div>
								</div>
								<!-- Notification dropdown menu END -->
							</li>
							<!-- Notification dropdown END -->

							<!-- Profile dropdown START -->
							<li class="nav-item ms-2 ms-md-3 dropdown">
								<!-- Avatar -->
								<a class="avatar avatar-sm p-0" href="#" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
									<img class="avatar-img rounded-circle" src="/assets/images/avatar/01.jpg" alt="avatar">
								</a>

								<!-- Profile dropdown START -->
								<ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3" aria-labelledby="profileDropdown">
									<!-- Profile info -->
									<li class="px-3">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar me-3">
												<img class="avatar-img rounded-circle shadow" src="/assets/images/avatar/01.jpg" alt="avatar">
											</div>
											<div>
												<a class="h6 mt-2 mt-sm-0" href="#">Lori Ferguson</a>
												<p class="small m-0">example@gmail.com</p>
											</div>
										</div>
										<hr>
									</li>

									<!-- Links -->
									<li><a class="dropdown-item" href="#"><i class="bi bi-person fa-fw me-2"></i>Edit Profile</a></li>
									<li><a class="dropdown-item" href="#"><i class="bi bi-gear fa-fw me-2"></i>Account Settings</a></li>
									<li><a class="dropdown-item" href="#"><i class="bi bi-info-circle fa-fw me-2"></i>Help</a></li>
									<li><a class="dropdown-item bg-danger-soft-hover" href="#"><i class="bi bi-power fa-fw me-2"></i>Sign Out</a></li>
									<li> <hr class="dropdown-divider"></li>

									<!-- Dark mode switch START -->
									<li>
										<div class="modeswitch-wrap" id="darkModeSwitch">
											<div class="modeswitch-item">
												<div class="modeswitch-icon"></div>
											</div>
											<span>Dark mode</span>
										</div>
									</li> 
									<!-- Dark mode switch END -->
								</ul>
								<!-- Profile dropdown END -->
							</li>
							<!-- Profile dropdown END -->
						</ul>
					</div>
					<!-- Top bar right END -->
				</div>
			</div>
		</nav>
		<!-- Top bar END -->