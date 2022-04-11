<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../page_init.jsp" %>

	<!-- Page main content START -->
	<div class="page-content-wrapper border">

		<!-- Title -->
		<div class="row mb-3">
			<div class="col-12 d-sm-flex justify-content-between align-items-center">
				<h1 class="h3 mb-2 mb-sm-0">프로젝트</h1>
				<a href="javascript:projectAdd();" data-toggle="modal" data-target="#exampleModal" class="btn btn-sm btn-primary mb-0" >등록</a>
			</div>
		</div>

		<!-- Course boxes START -->
		<div class="row g-4 mb-4">
			<!-- Course item -->
			<div class="col-sm-6 col-lg-4">
				<div class="text-center p-4 bg-primary bg-opacity-10 border border-primary rounded-3">
					<h5>전체</h5>
					<h3 class="mb-0 fs-1 text-primary">1200</h3>
				</div>
			</div>

			<!-- Course item -->
			<div class="col-sm-6 col-lg-4">
				<div class="text-center p-4 bg-success bg-opacity-10 border border-success rounded-3">
					<h5>진행</h5>
					<h3 class="mb-0 fs-1 text-success">996</h3>
				</div>
			</div>

			<!-- Course item -->
			<div class="col-sm-6 col-lg-4">
				<div class="text-center p-4  bg-warning bg-opacity-15 border border-warning rounded-3">
					<h5>종료</h5>
					<h3 class="mb-0 fs-1 text-warning">200</h3>
				</div>
			</div>
		</div>
		<!-- Course boxes END -->

		<!-- Card START -->
		<div class="card bg-transparent border">

			<!-- Card header START -->
			<div class="card-header bg-light border-bottom">
				<!-- Search and select START -->
				<div class="row g-3 align-items-center justify-content-between">
					<!-- Search bar -->
					<div class="col-md-8">
						<form class="rounded position-relative">
							<input class="form-control bg-body" type="search" placeholder="Search" aria-label="Search">
							<button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
						</form>
					</div>

					<!-- Select option -->
					<div class="col-md-3">
						<!-- Short by filter -->
						<form>
							<select class="form-select js-choice border-0 z-index-9" aria-label=".form-select-sm">
								<option value="">Sort by</option>
								<option>Newest</option>
								<option>Oldest</option>
								<option>Accepted</option>
								<option>Rejected</option>
							</select>
						</form>
					</div>
				</div>
				<!-- Search and select END -->
			</div>
			<!-- Card header END -->

			<!-- Card body START -->
			<div class="card-body">
				<!-- Course table START -->
				<div class="table-responsive border-0 rounded-3">
					<!-- Table START -->
					<table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
						<!-- Table head -->
						<thead>
							<tr>
								<th scope="col" class="border-0 rounded-start">프로젝트명</th>
								<th scope="col" class="border-0">업무</th>
								<th scope="col" class="border-0">금액</th>
								<th scope="col" class="border-0">필요인력</th>
								<th scope="col" class="border-0">지원자수</th>
								<th scope="col" class="border-0">시작일 ~ 종료일</th>
								<th scope="col" class="border-0 rounded-end">상태</th>
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
										<!-- Title -->
										<h6 class="mb-0 ms-2">	
											<a href="#" class="stretched-link">[상주] 현대카드 블록체인 시스템 관리 - Java, Node.js</a>
										</h6>
									</div>
								</td>

								<!-- Table data -->
								<td>
									개발
								</td>
								<!-- Table data -->
								<td>600만원 ~ 750만원 월 단위</td>
								<!-- Table data -->
								<td>3</td>
								<!-- Table data -->
								<td>1</td>
								<!-- Table data -->
								<td> 2022-03-02 ~ 2022-03-02</td>
								<!-- Table data -->
								<td>
									진행중
								</td>
							</tr>

							<!-- Table row -->
							<tr>
								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center position-relative">
										<!-- Image -->
										<div class="w-60px">
											<img src="/assets/images/courses/4by3/10.jpg" class="rounded" alt="">
										</div>
										<!-- Title -->
										<h6 class="mb-0 ms-2">	
											<a href="#" class="stretched-link">Bootstrap 5 From Scratch</a>
										</h6>
									</div>
								</td>

								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center mb-3">
										<!-- Avatar -->
										<div class="avatar avatar-xs flex-shrink-0">
											<img class="avatar-img rounded-circle" src="/assets/images/avatar/04.jpg" alt="avatar">
										</div>
										<!-- Info -->
										<div class="ms-2">
											<h6 class="mb-0 fw-light">Billy Vasquez</h6>
										</div>
									</div>
								</td>

								<!-- Table data -->
								<td>16 Oct 2021</td>

								<!-- Table data -->
								<td> <span class="badge bg-purple text-white">Intermediate</span> </td>

								<!-- Table data -->
								<td>$256</td>

								<!-- Table data -->
								<td>
									<span class="badge bg-warning bg-opacity-15 text-warning">Pending</span>
								</td>

								<!-- Table data -->
								<td>
									<a href="#" class="btn btn-sm btn-success-soft me-1 mb-1 mb-md-0">Approve</a>
									<button class="btn btn-sm btn-secondary-soft mb-0">Reject</button>
								</td>
							</tr>

							<!-- Table row -->
							<tr>
								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center position-relative">
										<!-- Image -->
										<div class="w-60px">
											<img src="/assets/images/courses/4by3/02.jpg" class="rounded" alt="">
										</div>
										<!-- Title -->
										<h6 class="mb-0 ms-2">	
											<a href="#" class="stretched-link">Graphic Design Masterclass</a>
										</h6>
									</div>
								</td>

								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center mb-3">
										<!-- Avatar -->
										<div class="avatar avatar-xs flex-shrink-0">
											<img class="avatar-img rounded-circle" src="/assets/images/avatar/05.jpg" alt="avatar">
										</div>
										<!-- Info -->
										<div class="ms-2">
											<h6 class="mb-0 fw-light">Carolyn Ortiz</h6>
										</div>
									</div>
								</td>

								<!-- Table data -->
								<td>28 Aug 2021</td>

								<!-- Table data -->
								<td> <span class="badge bg-orange text-white">All level</span> </td>

								<!-- Table data -->
								<td>$347</td>

								<!-- Table data -->
								<td>
									<span class="badge bg-success bg-opacity-15 text-success">Live</span>
								</td>

								<!-- Table data -->
								<td>
									<a href="#" class="btn btn-sm btn-dark me-1 mb-1 mb-md-0">Edit</a>
								</td>
							</tr>

							<!-- Table row -->
							<tr>
								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center position-relative">
										<!-- Image -->
										<div class="w-60px">
											<img src="/assets/images/courses/4by3/04.jpg" class="rounded" alt="">
										</div>
										<!-- Title -->
										<h6 class="mb-0 ms-2">	
											<a href="#" class="stretched-link">Learn Invision</a>
										</h6>
									</div>
								</td>

								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center mb-3">
										<!-- Avatar -->
										<div class="avatar avatar-xs flex-shrink-0">
											<img class="avatar-img rounded-circle" src="/assets/images/avatar/06.jpg" alt="avatar">
										</div>
										<!-- Info -->
										<div class="ms-2">
											<h6 class="mb-0 fw-light">Frances Guerrero</h6>
										</div>
									</div>
								</td>

								<!-- Table data -->
								<td>15 June 2021</td>

								<!-- Table data -->
								<td> <span class="badge bg-orange text-white">All level</span> </td>

								<!-- Table data -->
								<td>$445</td>

								<!-- Table data -->
								<td>
									<span class="badge bg-success bg-opacity-15 text-success">Live</span>
								</td>

								<!-- Table data -->
								<td>
									<a href="#" class="btn btn-sm btn-dark me-1 mb-1 mb-md-0">Edit</a>
								</td>
							</tr>

							<!-- Table row -->
							<tr>
								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center position-relative">
										<!-- Image -->
										<div class="w-60px">
											<img src="/assets/images/courses/4by3/06.jpg" class="rounded" alt="">
										</div>
										<!-- Title -->
										<h6 class="mb-0 ms-2">	
											<a href="#" class="stretched-link">Angular – The Complete Guider</a>
										</h6>
									</div>
								</td>

								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center mb-3">
										<!-- Avatar -->
										<div class="avatar avatar-xs flex-shrink-0">
											<img class="avatar-img rounded-circle" src="/assets/images/avatar/07.jpg" alt="avatar">
										</div>
										<!-- Info -->
										<div class="ms-2">
											<h6 class="mb-0 fw-light">Louis Ferguson</h6>
										</div>
									</div>
								</td>

								<!-- Table data -->
								<td>10 Dec 2020</td>

								<!-- Table data -->
								<td> <span class="badge bg-purple text-white">Intermediate</span> </td>

								<!-- Table data -->
								<td>$165</td>

								<!-- Table data -->
								<td>
									<span class="badge bg-success bg-opacity-15 text-success">Live</span>
								</td>

								<!-- Table data -->
								<td>
									<a href="#" class="btn btn-sm btn-dark me-1 mb-1 mb-md-0">Edit</a>
								</td>
							</tr>

							<!-- Table row -->
							<tr>
								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center position-relative">
										<!-- Image -->
										<div class="w-60px">
											<img src="/assets/images/courses/4by3/09.jpg" class="rounded" alt="">
										</div>
										<!-- Title -->
										<h6 class="mb-0 ms-2">	
											<a href="#" class="stretched-link">JavaScript: Full Understanding</a>
										</h6>
									</div>
								</td>

								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center mb-3">
										<!-- Avatar -->
										<div class="avatar avatar-xs flex-shrink-0">
											<img class="avatar-img rounded-circle" src="/assets/images/avatar/08.jpg" alt="avatar">
										</div>
										<!-- Info -->
										<div class="ms-2">
											<h6 class="mb-0 fw-light">Samuel Bishop</h6>
										</div>
									</div>
								</td>

								<!-- Table data -->
								<td>09 Nov 2020</td>

								<!-- Table data -->
								<td> <span class="badge bg-primary text-white">Beginner</span> </td>

								<!-- Table data -->
								<td>$575</td>

								<!-- Table data -->
								<td>
									<span class="badge bg-success bg-opacity-15 text-success">Live</span>
								</td>

								<!-- Table data -->
								<td>
									<a href="#" class="btn btn-sm btn-dark me-1 mb-1 mb-md-0">Edit</a>
								</td>
							</tr>

							<!-- Table row -->
							<tr>
								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center position-relative">
										<!-- Image -->
										<div class="w-60px">
											<img src="/assets/images/courses/4by3/11.jpg" class="rounded" alt="">
										</div>
										<!-- Title -->
										<h6 class="mb-0 ms-2">	
											<a href="#" class="stretched-link">Build Responsive Websites with HTML</a>
										</h6>
									</div>
								</td>

								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center mb-3">
										<!-- Avatar -->
										<div class="avatar avatar-xs flex-shrink-0">
											<img class="avatar-img rounded-circle" src="/assets/images/avatar/02.jpg" alt="avatar">
										</div>
										<!-- Info -->
										<div class="ms-2">
											<h6 class="mb-0 fw-light">Dennis Barrett</h6>
										</div>
									</div>
								</td>

								<!-- Table data -->
								<td>21 Aug 2020</td>

								<!-- Table data -->
								<td> <span class="badge bg-primary text-white">Beginner</span> </td>

								<!-- Table data -->
								<td>$268</td>

								<!-- Table data -->
								<td>
									<span class="badge bg-success bg-opacity-15 text-success">Live</span>
								</td>

								<!-- Table data -->
								<td>
									<a href="#" class="btn btn-sm btn-dark me-1 mb-1 mb-md-0">Edit</a>
								</td>
							</tr>

							<!-- Table row -->
							<tr>
								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center position-relative">
										<!-- Image -->
										<div class="w-60px">
											<img src="/assets/images/courses/4by3/12.jpg" class="rounded" alt="">
										</div>
										<!-- Title -->
										<h6 class="mb-0 ms-2">	
											<a href="#" class="stretched-link">Build Websites with CSS</a>
										</h6>
									</div>
								</td>

								<!-- Table data -->
								<td>
									<div class="d-flex align-items-center mb-3">
										<!-- Avatar -->
										<div class="avatar avatar-xs flex-shrink-0">
											<img class="avatar-img rounded-circle" src="/assets/images/avatar/03.jpg" alt="avatar">
										</div>
										<!-- Info -->
										<div class="ms-2">
											<h6 class="mb-0 fw-light">Joan Wallace</h6>
										</div>
									</div>
								</td>

								<!-- Table data -->
								<td>02 April 2020</td>

								<!-- Table data -->
								<td> <span class="badge bg-orange text-white">All level</span> </td>

								<!-- Table data -->
								<td>$370</td>

								<!-- Table data -->
								<td>
									<span class="badge bg-success bg-opacity-15 text-success">Live</span>
								</td>

								<!-- Table data -->
								<td>
									<a href="#" class="btn btn-sm btn-dark me-1 mb-1 mb-md-0">Edit</a>
								</td>
							</tr>

						</tbody>
						<!-- Table body END -->
					</table>
					<!-- Table END -->
				</div>
				<!-- Course table END -->
			</div>
			<!-- Card body END -->

			<!-- Card footer START -->
			<div class="card-footer bg-transparent pt-0">
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

			<!-- Modal Start -->
			<div class="modal " id="modal" tabindex="-1" >
			  <div class="modal-dialog" >
				<div class="modal-content">
				  <div class="modal-header">
					<h5 class="modal-title"><span id="title"/></h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				  </div>
				  <div class="modal-body">
						<div class="row g-4">
							<!-- Course title -->
							<!-- Course time -->
							<div class="col-md-6">
								<label class="form-label">회사명</label>
								<input class="form-control" type="text" placeholder="Enter course time">
							</div>

							<!-- Course time -->
							<div class="col-md-6">
								<label class="form-label">담당자성함</label>
								<input class="form-control" type="text" placeholder="Enter course time">
							</div>

							<!-- Total lecture -->
							<div class="col-md-6">
								<label class="form-label">담당자이메일</label>
								<input class="form-control" type="text" placeholder="Enter total lecture">
							</div>

							<!-- Total lecture -->
							<div class="col-md-6">
								<label class="form-label">담당자연락처</label>
								<input class="form-control" type="text" placeholder="Enter total lecture">
							</div>

							<div class="col-12">
								<label class="form-label">프로젝트명</label>
								<input class="form-control" type="text" placeholder="Enter course title">
							</div>

							<!-- Switch -->
							<div class="col-12">
								<div class="form-check form-switch form-check-md">
									<input class="form-check-input" type="checkbox" id="checkPrivacy1">
									<label class="form-check-label" for="checkPrivacy1">프로젝트 시작 협의가능 여부</label>
								</div>
							</div>

							<div class="col-md-6">
								<label class="form-label">시작일</label>
								<input class="form-control" type="text" placeholder="Enter total lecture">
							</div>

							<!-- Total lecture -->
							<div class="col-md-6">
								<label class="form-label">종료일</label>
								<input class="form-control" type="text" placeholder="Enter total lecture">
							</div>

							<div class="col-12">
								<label class="form-label">프로젝트 예산</label>
								<select class="form-select js-choice border-0 z-index-9 bg-transparent" aria-label=".form-select-sm" data-search-enabled="true">
									<option value="">선택</option>
									<option>월 단위</option>
									<option>프로젝트 단위</option>
								</select>
							</div>

							<div class="col-md-6">
								<label class="form-label">최소금액</label>
								<input class="form-control" type="text" placeholder="Enter total lecture">
							</div>

							<!-- Total lecture -->
							<div class="col-md-6">
								<label class="form-label">최대금액</label>
								<input class="form-control" type="text" placeholder="Enter total lecture">
							</div>

							<div class="col-md-6">
								<label class="form-label">근무방식</label>
								<select class="form-select js-choice border-0 z-index-9 bg-transparent" aria-label=".form-select-sm" data-search-enabled="true">
									<option value="">선택</option>
									<option>상주</option>
									<option>재택</option>
								</select>
							</div>

							<div class="col-12">
								<label class="form-label">상세근무지</label>
								<input class="form-control" type="text" placeholder="Enter course title">
							</div>

							<!-- Short description -->
							<div class="col-12">
								<label class="form-label">현재진행사항</label>
								<textarea class="form-control" rows="2" placeholder="Enter keywords"></textarea>
							</div>

							<!-- Short description -->
							<div class="col-12">
								<label class="form-label">담당업무</label>
								<textarea class="form-control" rows="2" placeholder="Enter keywords"></textarea>
							</div>

							<div class="col-12">
								<label class="form-label">업무범위</label>
								<textarea class="form-control" rows="2" placeholder="Enter keywords"></textarea>
							</div>

							<div class="col-12">
								<label class="form-label">기타 전달사항 또는 우대사항</label>
								<textarea class="form-control" rows="2" placeholder="Enter keywords"></textarea>
							</div>

							<!-- Course category -->
							<div class="col-12">
								<label class="form-label">필요인력</label>
								<input class="form-control" type="text" placeholder="Enter course title">
							</div>

							<div class="col-md-6">
								<label class="form-label">연차시작</label>
								<input class="form-control" type="text" placeholder="Enter course title">
							</div>

							<div class="col-md-6">
								<label class="form-label">연차종료</label>
								<input class="form-control" type="text" placeholder="Enter course title">
							</div>

							<!-- Language -->
							<div class="col-12">
								<label class="form-label">요구스킬</label>
								<select class="form-select js-choice border-0 z-index-9 bg-transparent" multiple="multiple" aria-label=".form-select-sm" data-max-item-count="3" data-remove-item-button="true">
									<option value="">Select language</option>
									<option>English</option>
									<option>German</option>
									<option>French</option>
									<option>Hindi</option>
								</select>
							</div>
							
						</div>
				  </div>
				  <div class="modal-footer">
					<button type="button" class="btn btn-primary">저장</button>
					<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				  </div>
				</div>
			  </div>
			</div>
			<!-- Modal End -->

	</div>
	<!-- Page main content END -->


<script>

	$(document).ready(function() {
	
	    /**
	     * 모달 취소 외에 막기
	     */		
		$(".modal").modal({
			backdrop:'static'
		});		
		$('.modal-dialog').draggable({ 
			handle: ".modal-header" 
		});	 
		
		$.fn.serializeObject = function () {
		  'use strict';
		  let result = {};
		  let extend = function (i, element) {
		    let node = result[element.name];
		    if ('undefined' !== typeof node && node !== null) {
		      if ($.isArray(node)) {
		        node.push(element.value);
		      } else {
		        result[element.name] = [node, element.value];
		      }
		    } else {
		      result[element.name] = element.value;
		    }
		  };
		
		  $.each(this.serializeArray(), extend);
		  return result;
		};
		
		
	});  

	function projectAdd(){
		$('#modal').modal('show');
		$('#title').text('프로젝트 등록');
		$('body').css('padding-right', '0px');
		$('body').css('overflow', 'auto');	
	}

</script>
