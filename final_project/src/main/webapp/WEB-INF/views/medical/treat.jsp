<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 본문 컨텐츠 시작 -->
<div class="main_content_iner ">
	<div class="container-fluid p-0">
		<div class="row justify-content-center">
			<div class="col-lg-12">
				<div class="messages_box_area2">
					<div class="messages_list">

						<!-- 코멘트 -->
						<div class="white_box shadow-sm comment mb-3" style="height: 473.062px;">
							<div class="message_pre_left">
								<div class="messges_info">
									<h4 class="mb-3">코멘트</h4>
								</div>
							</div>

							<div class="messages_chat">
								<div class="messages_list" style="height: 210px; overflow: auto;">
									<ul id="cmntList"></ul>
								</div>

								<hr class="my-4">

								<div class="form">
									<div class="form-group">
										<input type="hidden" name="cmntNo" id="cmntNo">
										<input type="hidden" name="pntCd" id="pntCd">
										<textarea id="cmntCont" name="cmntCont" class="form-control rounded"
											placeholder="코멘트 입력" style="resize: none; height: 60px;"
											aria-label="Small"></textarea>
									</div>
								</div>

								<div class="text-right">
									<button class="btn btn-outline-secondary px-4" type="button"
										onclick="javascript:fnSaveCmnt();">저장</button>
									<!-- <button class="btn btn-danger px-4" type="button" id="deleteCmntBtn" -->
									<!-- onclick="javascript:fnDeleteCmnt();">삭제</button> -->
								</div>
							</div>
						</div>

						<!--
						<div class="white_box shadow-sm mb-3" style="height: 473.062px;">
							<div class="message_pre_left">
								<div class="messges_info">
									<h4 class="mb-3">예약</h4>
								</div>
							</div>

							<table class="table" id="yeyakTb">
								<thead>
									<tr>
										<th scope="col">예약시각</th>
										<th scope="col">성함</th>
										<th scope="col">생년월일</th>
									</tr>
								</thead>
							</table>
						</div>
						-->

						<div class="white_box shadow-sm mb-3" style="height: 473.062px;">
							<div class="message_pre_left">
								<div class="messges_info">
									<h4 class="mb-3">대기</h4>
								</div>
							</div>

							<table class="table" id="daegiTb">
								<thead>
									<tr>
										<th scope="col">접수시각</th>
										<th scope="col">성함</th>
										<th scope="col">생년월일</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>

					<div class="messages_list mb_30">
						<form id="vitalFrm" name="vitalFrm" class="mb-0">
							<input type="hidden" id="pntCd" name="pntCd" />
							<input type="hidden" id="tmpRsvtNo" name="tmpRsvtNo" />
							<input type="hidden" id="setRcptNo" name="setRcptNo" />
							<input type="hidden" id="setStateCd" name="setStateCd" />
							<div class="white_box shadow-sm mb-3">
								<div class="message_pre_left">
									<div class="messges_info">
										<h4 class="mb-3">증상</h4>
									</div>
								</div>

								<div class="form">
									<label class="sr-only" for="">증상입력</label>
									<input type="text" id="symptoms" name="symptoms" readonly class="form-control">
								</div>

								<div class="row mt-5">
									<div class="col-lg-6">
										<div class="message_pre_left">
											<div class="messges_info">
												<h4 class="mb-3">바이탈 사인</h4>
											</div>
										</div>

										<div class="form-group">
											<div class="row mb-2">
												<div class="col">
													<div class="input-group input-group-sm flex-nowrap">
														<div class="input-group-prepend">
															<span class="input-group-text bg-white border-0">나이</span>
														</div>

														<input type="text" id="age" name="age" readonly class="form-control rounded">
													</div>
												</div>

												<div class="col">
													<div class="input-group input-group-sm flex-nowrap">
														<div class="input-group-prepend">
															<span class="input-group-text bg-white border-0">성별</span>
														</div>

														<input type="text" id="sex" name="sex" readonly class="form-control rounded">
													</div>
												</div>
											</div>

											<div class="row mb-2">
												<div class="col">
													<div class="input-group input-group-sm flex-nowrap">
														<div class="input-group-prepend">
															<span class="input-group-text bg-white border-0">신장</span>
														</div>

														<input type="text" id="height" name="height" class="form-control rounded">
													</div>
												</div>

												<div class="col">
													<div class="input-group input-group-sm flex-nowrap">
														<div class="input-group-prepend">
															<span class="input-group-text bg-white border-0">체중</span>
														</div>
														
														<input type="text" id="weight" name="weight" class="form-control rounded">
													</div>
												</div>
											</div>

											<div class="row mb-2">
												<div class="col">
													<div class="input-group input-group-sm flex-nowrap">
														<div class="input-group-prepend">
															<span class="input-group-text bg-white border-0">혈당</span>
														</div>

														<input type="text" class="form-control rounded" id="vsBs" name="vsBs">
													</div>
												</div>

												<div class="col">
													<div class="input-group input-group-sm flex-nowrap">
														<div class="input-group-prepend">
															<span class="input-group-text bg-white border-0">체온</span>
														</div>

														<input type="text" class="form-control rounded" id="vsTmp" name="vsTmp">
													</div>
												</div>
											</div>

											<div class="row mb-2">
												<div class="col">
													<div class="input-group input-group-sm flex-nowrap">
														<div class="input-group-prepend">
															<span class="input-group-text bg-white border-0">혈압
																<span class="text-muted">(최대/최소)</span>
															</span>
														</div>

														<input type="text" class="form-control rounded" id="vsBpMax" name="vsBpMax">&nbsp;&nbsp;
														<input type="text" class="form-control rounded" id="vsBpMin" name="vsBpMin">
													</div>
												</div>
											</div>

											<div class="text-center">
												<div class="row">
													<div class="col-6 pr-1">
														<button type="button" class="btn btn-info btn-block"
															data-toggle="modal" data-target="#recordBackdrop"
															id="vitalRecodeBtn">기록보기
														</button>
													</div>

													<div class="col-6 pl-0">
														<button type="button" class="btn btn-info btn-block" id="vitalCmplBtn">측정완료</button>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="col-lg-6">
										<div class="message_pre_left">
											<div class="messges_info">
												<h4 class="mb-3">검사</h4>
											</div>
										</div>

										<div class="form-group position-relative search">
											<div class="input-group input-group-sm mb-3">
												<input type="text" class="form-control border-right-0"
													id="soogiSchTxt" onkeypress="if(event.keyCode == 13) { fnSoogiSch(); }">
												<div class="input-group-append" id="soogiSchBtn">
													<span class="input-group-text bg-transparent">
														<img src="/resources/img/icon/icon_search.svg" alt="">
													</span>
												</div>
											</div>

											<div class="autocomplete rounded d-none" id="soogiSchResult"
												style="max-height: 300px; overflow-y: auto;">
												<table class="table table-sm table-borderless table-check">
													<thead>
														<tr>
															<th>수가코드</th>
															<th>검사명</th>
															<th>비용</th>
														</tr>
													</thead>
													<tbody id="soogiTable">
													</tbody>
												</table>
											</div>
										</div>

										<div class="border rounded" style="height: 100px; overflow-y: auto;">
											<table class="table table-sm table-borderless table-check"
												id="soogiResultTable">
												<thead>
													<tr>
														<th>수가코드</th>
														<th>검사명</th>
														<th>비용</th>
														<th></th>
													</tr>
												</thead>
												<tbody id="soogiResultTbody">
												</tbody>
											</table>
										</div>

										<!-- 검사하기 버튼 추가 -->
										<button type="button" class="btn btn-info btn-block mt-2" id="inspectionBtn">검사하기</button>
									</div>
								</div>

								<hr class="my-4">

								<div class="message_pre_left">
									<div class="messges_info">
										<h4 class="mb-3">진단 및 처방</h4>
									</div>
								</div>

								<div class="form-group position-relative search">
									<div class="input-group input-group-sm mb-3">
										<input type="text" class="form-control border-right-0" id="jindanSchTxt"
											onkeypress="if (event.keyCode == 13) { fnJindanSch(); }">
										<div class="input-group-append" id="jindanSchBtn">
											<span class="input-group-text bg-transparent">
												<img src="/resources/img/icon/icon_search.svg" alt="">
											</span>
										</div>
									</div>

									<div class="autocomplete rounded d-none p-3" id="jindanSchResult"
										style="max-height: 300px; overflow-y: auto;">
										<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
											<li class="nav-item" role="presentation">
												<a class="nav-link active" id="tab1" data-toggle="pill"
													href="#diagnose1" role="tab" aria-controls="diagnose1"
													aria-selected="true">병명</a>
											</li>

											<li class="nav-item" role="presentation">
												<a class="nav-link" id="tab2" data-toggle="pill"
													href="#diagnose2" role="tab" aria-controls="diagnose2"
													aria-selected="false">퀵오더</a>
											</li>

											<li class="nav-item" role="presentation">
												<a class="nav-link" id="tab3" data-toggle="pill"
													href="#diagnose3" role="tab" aria-controls="diagnose3"
													aria-selected="false">처방</a>
											</li>
										</ul>

										<div class="tab-content" id="pills-tabContent">
											<div class="tab-pane fade show active" id="diagnose1"
												role="tabpanel" aria-labelledby="pills-home-tab">
												<ul class="list-group list-group-flush list-group-none"></ul>
											</div>

											<div class="tab-pane fade" id="diagnose2" role="tabpanel"
												aria-labelledby="pills-profile-tab">
												<ul class="list-group list-group-flush list-group-none"></ul>
											</div>

											<div class="tab-pane fade" id="diagnose3" role="tabpanel"
												aria-labelledby="pills-contact-tab">
												<ul class="list-group list-group-flush list-group-none"></ul>
											</div>
										</div>
									</div>
								</div>

								<div class="border rounded px-2 py-1"
									style="min-height: 334px; max-height: 334px; overflow-y: auto;">
									<ul class="list-group list-group-flush">
										<li class="list-group-item py-1">
											<p><strong>질병코드</strong></p>
											<p id="disCd">[질병코드 입력]</p>
										</li>

										<li class="list-group-item py-1">
											<p><strong>병명</strong></p>
											<p id="disNm">[병명 입력]</p>
										</li>

										<li class="list-group-item py-1">
											<p><strong>퀵오더</strong></p>
											<p id="qoNm">[퀵오더 입력]</p>
										</li>

										<li class="list-group-item py-1">
											<p><strong>처방 약품명</strong></p>
											<table class="table table-sm table-borderless table-check">
												<thead>
													<tr>
														<th>의약품명</th>
														<th>일일복용량</th>
														<th>일회복용량</th>
														<th>처방기간</th>
													</tr>
												</thead>
												<tbody id="drugTable">
												</tbody>
											</table>

											<!--	
											<p>
												<input type="hidden" id="drugCd" name="drugCd" />
												<span class="text-muted mr-2" id="drugNm"></span>
											</p>

											<p class="form-inline">
											<div class="input-group input-group-sm">
												<div class="input-group-prepend">
													<span class="input-group-text bg-white text-muted px-0 mr-4 border-0">용량</span>
												</div>

												<input type="text" class="form-control form-control-sm rounded"
													style="max-width: 70px !important;" id="drugDoes" name="drugDoes">
											</div>

											<p class="form-inline mt-2">
											<div class="input-group input-group-sm">
												<div class="input-group-prepend">
													<span class="input-group-text bg-white text-muted px-0 mr-4 border-0">횟수</span>
												</div>

												<input type="text" class="form-control form-control-sm rounded"
													style="max-width: 70px !important;" id="drugTimes" name="drugTimes">
											</div>
											-->

										</li>
									</ul>
								</div>

								<div class="text-right mt-3">
									<!--
									<button class="btn btn-info btn-pill px-5 mr-2" type="button"
										data-toggle="modal" data-target="#checkupBackdrop">추가검사</button>
									-->

									<!-- 추가검사 모달 -> 입원 버튼으로 대체 -->
									<button class="btn btn-info btn-pill px-5 mr-2" id="entBtn" type="button"
 										data-state-cd="PS9" name="addCheckBtn">입원</button>
									<button class="btn btn-blue btn-pill px-5" id="camBtn" type="button">촬영</button>
								</div>
							</div>
						</form>
					</div>

					<div class="messages_list">
						<div class="white_box shadow-sm mb-3">
							<div class="message_pre_left">
								<div class="messges_info">
									<h4 class="mb-3">미리보기</h4>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-12">
									<div class="d-flex justify-content-center align-items-center border rounded-half-pill" style="min-height: 300px;">
										<input type="hidden" name="fileNo" id="fileNo" />
										<img id="patient-img" src="" onerror="this.src='/resources/images/no-img.png'" class="img-fluid">
									</div>
								</div>

								<div class="col-lg-12 mt-2 d-flex justify-content-end align-items-end">
									<div>
										<button class="btn btn-outline-secondary px-4 mr-2" type="button"
											data-toggle="modal" data-target="#pntImageBackdrop">사진보기</button>
										<button class="btn btn-danger px-4" type="button" id="patient-img-del">초기화</button>
									</div>
								</div>
							</div>

							<hr class="my-4">

							<div class="message_pre_left">
								<div class="messges_info">
									<h4 class="mb-3">진찰소견</h4>
								</div>

								<div class="row">
									<div class="col">
										<textarea class="form-control rounded"
											style="height: 370px; resize: none;" id="treatOp" name="treatOp"></textarea>
									</div>
								</div>

								<div class="text-right mt-3">
									<!-- 시연용 자동완성 버튼 추가 -->
									<button class="btn btn-info btn-pill px-5 mr-2" type="button" id="demoBtn">자동완성</button>
									<button class="btn btn-info btn-pill px-5" type="button" id="treatCmplBtn">완료</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="loding-center">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
</div>

<!-- 추가검사 Modal -->
<!--
<div class="modal fade" id="checkupBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1"
	aria-labelledby="checkupBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="checkupBackdropLabel">추가검사</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<div class="modal-body">
				<div class="text-center">
					<button type="button" data-state-cd="PS8" class="btn btn-primary" name="addCheckBtn">방사선 촬영</button>
					<button type="button" data-state-cd="PS9" class="btn btn-primary mx-3" name="addCheckBtn">입원</button>
					<button type="button" data-state-cd="PS11" class="btn btn-primary" name="addCheckBtn">수술</button>
				</div>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
-->

<!-- 사진 Modal -->
<div class="modal fade" id="pntImageBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1"
	aria-labelledby="pntImageBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-xl">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="pntImageBackdropLabel">환자이미지</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<div class="modal-body" id="img-list"></div>

			<div class="modal-header">
				<h5 class="modal-title">검사이미지</h5>
			</div>

			<div class="modal-body" id="img-list2"></div>

			<div class="modal-footer">
				<!-- <button type="button" class="btn btn-primary"><i class="fa fa-angle-left"></i></button> -->
				<!-- <button type="button" class="btn btn-primary"><i class="fa fa-angle-right"></i></button> -->
				<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<!-- 기록보기 Modal -->
<div class="modal fade" id="recordBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1"
	aria-labelledby="checkupBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-lg modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="recordBackdropLabel">기록보기</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<!-- 길어지면 스크롤 생성 -->
			<div class="modal-body" style="max-height: 500px; overflow: auto;">
				<table class="table table-sm text-center">
					<thead>
						<tr>
							<th>측정일</th>
							<th>혈당</th>
							<th>체온</th>
							<th>혈압(최대/최소)</th>
						</tr>
					</thead>
					<tbody id="recodeResult">
					</tbody>
				</table>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
	.loding-center {
		width: 100%;
		position: relative;
		z-index: 1;
	}

	.spinner-border {
		display: block;
		position: fixed;
		top: calc(50% - (58px / 2));
		right: calc(50% - (58px / 2));
	}

	table.dataTable tbody td {
		padding: 10px;
		font-size: 14px;
		color: #000000;
		font-weight: 300;
	}

	.dataTables_filter input {
		border-width: 1px;
	}

	table.dataTable tbody tr:hover {
		background-color: #eaf2f3 !important;
	}
</style>
</head>

<script>

	/**
	 * 함수 주석 양식
	 * 메뉴 항목을 추가한다.
	 * @param {string} id 항목에 대한 고유 식별자
	 * @param {string} url 항목 아이콘
	 * @param {string} title 항목 타이틀
	 * @param {function} callback 실행에 대한 호출 함수
	 * @returns {boolean} 성공 여부
	 */

	$(document).ready(function () {

		// 메인페이지에서 넘어온 환자정보
		var getParamPntCd = '${param.pntCd}';
		var getParamState = '${param.state}';
		var getParamRsvtNo = '${param.rsvtNo}';
		var getParamRcptNo = '${param.rcptNo}';

		if (getParamPntCd != '') {
			fnSelectVitalSignDetail(getParamPntCd, getParamRsvtNo);
			$('#pntCd').val(getParamPntCd);
		}

		if (getParamRcptNo != '') {
			$('#setRcptNo').val(getParamRcptNo);
		}

		if (getParamState == 'PS4') {
			$.ajax({
				url:'/medical/selectListOsDaegiInsp',
				type:'post',
				data: {"rcptNo":getParamRcptNo},
				beforeSend: function (jqXHR, settings) {
					// ajax 사용시 헤더에 스프링시큐리티 토큰 설정
					var token = '${_csrf.token}'
					var header = '${_csrf.headerName}'
					jqXHR.setRequestHeader(header, token);
				},
				success: function (res) {
					let list = res.response;

					if (list) {
						if (list.length > 0) {
							list.forEach(function (v, i) {
								var _creatDeleteBtn = '<td><button onclick="javascript:tableRowDel(this);" type="button" class="close"><span class="text-danger" aria-hidden="true">&times;</span></button></td>';
								$('#soogiResultTbody').append('<tr>' + '<td>' + v.sgCd + '</td><td>' + v.sgNm + '</td><td>' + v.sgAmt + '</td>' + _creatDeleteBtn + '</tr>');
								$("#soogiSchResult").addClass("d-none");
							});
						}
					}
				}
			})
		}

		$('.spinner-border').hide();

		fnSelectListMedicalYeyak();
		fnSelectListMedicalDaegi();

		// 환자사진 목록 조회
		fnSelectListAllCam();

		// 예약 테이블  row 클릭 이벤트 > 환자상세정보 셋팅
		$("#yeyakTb").on('click', 'tbody tr', function () {
			var row = $("#yeyakTb").DataTable().row($(this)).data();

			// 환자 선택했는지 플래그 값 체크
			// 저장 후 클릭시 인풋영역 활성화하기
			// 바이탈사인 최근 1건 상세보기 호출
			if (row != null && row != "") {
				$('#setRcptNo').val(row.rcptNo);
				fnSelectVitalSignDetail(row.pntCd, row.rsvtNo);
			} else {
				swal("", "환자를 선택해 주세요.", "warning");
			}
		});

		// 접수 테이블  row 클릭 이벤트 > 환자상세정보 셋팅
		$("#daegiTb").on('click', 'tbody tr', function () {
			var row = $("#daegiTb").DataTable().row($(this)).data();

			// 환자 선택했는지 플래그 값 체크
			// 저장 후 클릭시 인풋 영역 활성화하기
			// 바이탈사인 최근 1건 상세보기 호출
			if (row != null && row != "") {
				$('#setRcptNo').val(row.rcptNo);
				fnSelectVitalSignDetail(row.pntCd, row.rsvtNo);
			} else {
				swal("", "환자를 선택해 주세요.", "warning");
			}
		});

		// 사진 삭제버튼
		$("#patient-img-del").on("click", function () {
			$("#patient-img").attr("src", "");
		});

		// 촬영 팝업창, 접수번호 가져감
		$('#camBtn').click(function () {

			if ($('#pntCd').val().trim() == '') {
				swal("", "환자를 선택해주세요.", "warning");
				return false;
			}

			var paramObj = new Object();
			paramObj.pntCd = $('#pntCd').val();
			paramObj.rsvtNo = $('#setRsvtNo').val();
			paramObj.rcptNo = $('#setRcptNo').val();
			var strParam = $.param(paramObj);

			// 촬영 팝업 띄우기
			window.open("/medical/cam?" + strParam, "촬영", "width=975, height=750, top=100, left=100");
		});

		$("#jindanSchTxt").focus(function () {
			$("#jindanSchResult").removeClass("d-none");
		});

		$("#soogiSchTxt").focus(function () {
			$("#soogiSchResult").removeClass("d-none");
		});

		$('#jindanSchBtn').click(function () {
			fnJindanSch();
		});

		$('#soogiSchBtn').click(function () {
			fnSoogiSch();
		});

		// 다시측정 & 측정완료
		$('#vitalCmplBtn').click(function () {

			if ($('#pntCd').val().trim() == '') {
				Swal.fire({
					icon: 'warning', // Alert 타입 
					title: '환자를 선택해 주세요.', // Alert 제목 
				});
				return false;
			}

			var btnTxt = $(this).text();

			// 버튼 상태가 다시측정일 때와 측정완료일 때를 구분한다.
			if (btnTxt == "다시측정") {
				$('#vitalCmplBtn').text("측정완료");
				$('#height, #weight, #vsBs, #vsTmp, #vsBpMax, #vsBpMin').prop('readonly', false);
				$('#height, #weight, #vsBs, #vsTmp, #vsBpMax, #vsBpMin').val("");
			} else {
				if ($('#age').val().trim() == "") {
					Swal.fire({
						icon: 'warning', // Alert 타입 
						title: '나이를 입력해 주세요.', // Alert 제목 
					});
					$('#age').focus();
					return false;
				}

				if ($('#sex').val().trim() == "") {
					Swal.fire({
						icon: 'warning', // Alert 타입 
						title: '성별을 입력해 주세요.', // Alert 제목 
					});
					$('#sex').focus();
					return false;
				}

				if ($('#height').val().trim() == "") {
					swal("", "신장을 입력해 주세요.", "warning");
					$('#height').focus();
					return false;
				}

				if ($('#weight').val().trim() == "") {
					swal("", "체중을 입력해 주세요.", "warning");
					$('#weight').focus();
					return false;
				}

				if ($('#vsBs').val().trim() == "") {
					swal("", "혈당을 입력해주세요.", "warning");
					$('#vsBs').focus();
					return false;
				}

				if ($('#vsTmp').val().trim() == "") {
					swal("", "체온을 입력해주세요.", "warning");
					$('#vsTmp').focus();
					return false;
				}

				if ($('#vsBpMax').val().trim() == "") {
					swal("", "최대혈압을 입력해주세요.", "warning");
					$('#vsBpMax').focus();
					return false;
				}

				if ($('#vsBpMin').val().trim() == "") {
					swal("", "최소혈압을 입력해주세요.", "warning");
					$('#vsBpMin').focus();
					return false;
				}
				fnCommonAjax('post', $("#vitalFrm").serialize(), '/medical/insertVitalSign', fnInsertVitalSignSuccess);
			}

		});

		// 바이탈사인 기록보기 버튼, 검색조건은 환자키 pntCd
		$('#vitalRecodeBtn').click(function () {

			if ($('#pntCd').val().trim() == '') {
				Swal.fire({
					icon: 'warning', // Alert 타입 
					title: '환자를 선택해 주세요.', // Alert 제목 
				});
				return false;
			}
			fnCommonAjax('post', { 'pntCd': $('#pntCd').val() }, '/medical/selectListVitalSignRecord', fnSelectListVitalSignRecordSuccess);
		});

		// 입원 버튼 클릭시
		$("button[name=addCheckBtn]").click(function () {

			Swal.fire({
				title: '입원 처리하시겠습니까?',
				icon: 'info',
				showCancelButton: true,
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#d33',
				confirmButtonText: '입원처리',
				cancelButtonText: '취소'
			}).then(result => { // 만약 Promise 리턴을 받으면, 
				if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면 
					console.log($(this).data("state-cd"));

					// 환자상태 코드 셋팅, 진료완료 인서트시에 필요함
					$('#setStateCd').val($(this).data("state-cd"));
					$("#checkupBackdrop").modal('toggle');
				}
			})

		});
		
		// 자동완성 버튼 클릭시
		$('#demoBtn').click(function () {
			$('#treatOp').val('상기 환자 검사 결과 활동성 결핵 및 전염성 소견 없습니다. B형 항원 음성으로 전염성 없으나 항체가 없어서 예방접종은 하시는 게 좋겠습니다.');
		});

		// 진료완료 버튼, 최종 저장
		$('#treatCmplBtn').click(function () {

			if ($('#pntCd').val().trim() == "") {
				swal("", "환자를 선택해주세요.", "warning");
				return false;
			}

			if ($("#drugTable").find('tr').length > 0) {
				for (var i = 0; i < $("#drugTable").find('tr').length; i++) {
					if ( $($(".drugTimes")[i]).val().trim() == "") {
						swal("", "일일 복용 횟수를 입력해 주세요.", "warning");
						$($(".drugTimes")[i]).focus();
						return false;
					}

					if ($($(".drugDoes")[i]).val().trim() == "") {
						swal("", "일회 복용량을 입력해 주세요.", "warning");
						$($(".drugDoes")[i]).focus();
						return false;
					}

					if ($($(".drugTerm")[i]).val().trim() == "") {
						swal("", "처방 기간을 입력해 주세요.", "warning");
						$($(".drugTerm")[i]).focus();
						return false;
					}
				}
			}

			if ($('#treatOp').val().trim() == "") {
				swal("", "소견을 입력해 주세요.", "warning");
				$('#treatOp').focus();
				return false;
			}

			var drugList = [];
			for (var i = 0; i < $("#drugTable").find('tr').length; i++) {
				var map = { "drugCd" : $($(".drugs")[i]).attr('drugcd')
						  , "drugTimes" : $($(".drugTimes")[i]).val()
						  , "drugDoes" : $($(".drugDoes")[i]).val()
						  ,"prspTerm" : $($(".drugTerm")[i]).val() }
				drugList.push(map);
			}

			var sendData = {
				'empCd': '${loginUser.empCd}'
				, 'rsvtNo': $('#tmpRsvtNo').val()
				, 'pntCd': $('#pntCd').val()
				, 'disCd': $('#disCd').text()
				, 'disNm': $('#disNm').text()
				, 'prescription' : drugList
				, 'treatOp': $('#treatOp').val()
				, 'fileNo': $('#fileNo').val()
				, 'rcptNo': $('#setRcptNo').val()
				, 'stateCd': $('#setStateCd').val() != '' ? $('#setStateCd').val() : 'PS6' // 입원 처리시 PS9(입원대기), 아니면 PS6(수납대기)
			}

			console.log(sendData);
			
			// 보낼 때 한 필드가 배열이라 새로운 ajax옵션 작성
			$.ajax({
				async: false,
				type: 'POST',
				url: '/medical/insertTreat',
				data: JSON.stringify(sendData),
				dataType: 'json',
				contentType: 'application/json',
				cache: false,
				beforeSend: function (jqXHR, settings) {
					// ajax 사용시 헤더에 스프링시큐리티 토큰 설정
					var token = '${_csrf.token}'
					var header = '${_csrf.headerName}'
					jqXHR.setRequestHeader(header, token);
				},
				success: fnInsertTreatSuccess
			});

		});

		// 검사하기 클릭시
		$('#inspectionBtn').click(function () {
			if ($('#pntCd').val() == '') {
				swal("", "환자를 선택해주세요.", "warning");
				return false;
			}

			// 검사테이블에 저장할 수가코드 배열
			var sgCdArr = [];

			if ($('#soogiResultTbody > tr').length < 1) {
				swal("", "검사가 완료되지 않았습니다.", "warning");
				$('#soogiSchTxt').focus();
				return false;
			}

			$('#soogiResultTable tr').each(function (index) {
				var tdTxt = $(this).children().eq(0).text();
				if (tdTxt != '수가코드') { // th는 제외
					sgCdArr.push(tdTxt);
				}
			});

			var sendData = {
				'empCd': '${loginUser.empCd}'
				, 'rsvtNo': $('#tmpRsvtNo').val()
				, 'pntCd': $('#pntCd').val()
				, 'rcptNo': $('#setRcptNo').val()
				, 'sgCdArr': sgCdArr
				, 'stateCd': 'PS8' // 검사대기
			}

			console.log('sendData');
			console.log(sendData);

			$.ajax({
				async: false,
				type: 'POST',
				url: '/medical/insertInspection',
				data: JSON.stringify(sendData),
				dataType: 'json',
				contentType: 'application/json',
				cache: false,
				beforeSend: function (jqXHR, settings) {
					// ajax 사용시 헤더에 스프링시큐리티 토큰 설정
					var token = '${_csrf.token}'
					var header = '${_csrf.headerName}'
					jqXHR.setRequestHeader(header, token);
				},
				success: fnInsertInspectionSuccess
			});

		});

	})

	// 환자이미지 클릭시
	$(document).on("click", "#img-list img", function () {
		$('.spinner-border').show();
		$("#pntImageBackdrop").modal('toggle');
		$("#patient-img").attr("src", $(this).attr("src"));
		$('#fileNo').val($(this).data("fileNo"));
		$('.spinner-border').hide();
	});

	// 검사이미지 클릭시
	$(document).on("click", "#img-list2 img", function () {
		$('.spinner-border').show();
		$("#pntImageBackdrop").modal('toggle');
		$("#patient-img").attr("src", $(this).attr("src"));
		$('#fileNo').val($(this).data("fileNo"));
		$('.spinner-border').hide();
	});

	// 질병 클릭시
	$(document).on("click", "#diagnose1 > ul > li", function () {
		$('#disNm').text($(this).text());
		$('#disCd').text($(this).find('a').data("code"));
		$("#jindanSchResult").addClass("d-none");
	});

	// 퀵오더 클릭시
	$(document).on("click", "#diagnose2 > ul > li", function () {
		$('#qoNm').text($(this).text());
		fnCommonAjax('post', { 'qoCd': $(this).find('a').attr('data-code') }, '/medical/setQoCd', fnSetQoCd);
	});

	// 처방 클릭시
	$(document).on("click", "#diagnose3 > ul > li", function () {
		console.log($(this).find('a').data())
		var drugTimes = '<input type="text" class="form-control form-control-sm rounded drugTimes" style="max-width: 50px !important;" name="drugTimes">'
		var drugDoes = '<input type="text" class="form-control form-control-sm rounded drugDoes" style="max-width: 50px !important;" name="drugDoes">'
		var drugTerm = '<input type="text" class="form-control form-control-sm rounded drugTerm" style="max-width: 50px !important;" name="drugTerm">'
		
		var _creatDeleteBtn = '<td><button onclick="javascript:tableRowDel(this);" type="button" class="close"><span class="text-danger" aria-hidden="true">&times;</span></button></td>';
		$('#drugTable').append('<tr>' + '<td><p class="drugs" drugCd="'+ $(this).find('a').data("code") + '">' + $(this).text() + '</p></td><td>' + drugTimes + '</td><td>' + drugDoes + '</td><td>' + drugTerm + '</td>' + _creatDeleteBtn + '</tr>');
		$("#jindanSchResult").addClass("d-none");
	});

	// 수가코드 추가시 삭제버튼 추가
	$(document).on("click", "#soogiTable > tr", function () {
		var _creatDeleteBtn = '<td><button onclick="javascript:tableRowDel(this);" type="button" class="close"><span class="text-danger" aria-hidden="true">&times;</span></button></td>';
		$('#soogiResultTbody').append('<tr>' + $(this).html() + _creatDeleteBtn + '</tr>');
		$("#soogiSchResult").addClass("d-none");
	});

	// 사진 삭제버튼 클릭시
	$(document).on("click", ".img-close", function () {
		Swal.fire({
			title: '이 사진을 삭제 하시겠습니까?',
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '삭제',
			cancelButtonText: '취소'
		}).then(result => { // 만약 Promise 리턴을 받으면, 
			if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면 
				var fileNo = $(this).data("fileNo");
				fnDeleteCam(fileNo);
			}
		})

	});
	
	// 사진 삭제
	const fnDeleteCam = (fileNo) => {
		fnCommonAjax('post', { 'fileNo': fileNo }, '/medical/deleteCam', fnDeleteCamSuccess);
	}

	// 사진 삭제 성공 콜백함수
	const fnDeleteCamSuccess = (data) => {
		var message = data.message = 'success';
		if (message == 'success') {
			// 환자사진 목록 조회
			fnSelectListAllCam();
		}
	}
	
	// 사진목록 조회 function
	function fnSelectListAllCam() {
		fnCommonAjax('post', { 'rcptNo': $('#setRcptNo').val(), 'fileCls': '환자사진' }, '/medical/selectListCam', fnSelectListCamSuccess1);
 		fnCommonAjax('post', { 'rcptNo': $('#setRcptNo').val(), 'fileCls': '검사'}, '/medical/selectListCam', fnSelectListCamSuccess2);
	}

	// 사진 목록 조회 성공 콜백함수
	const fnSelectListCamSuccess1 = (data) => {

		$('#img-list').html("");

		// div 생성
		var result = "";
		var dummys = data.response;

		if (dummys.length > 0) {
			const splitedDummys = [];

			// 7개씩 쪼개기
			for (let i = 0; i < dummys.length; i += 7) {
				splitedDummys.push(dummys.slice(i, i + 7));
			}

			for (let dummys of splitedDummys) {
				const outerDiv = document.createElement("div");
				outerDiv.className = "row mb-3";
				for (let dummy of dummys) {

					const innerDiv = document.createElement("div");
					innerDiv.className = "col col-photo text-center";

					const innerBtn = document.createElement("button");
					innerBtn.className = "close img-close";
					innerBtn.dataset.fileNo = dummy.fileNo;

					const innerSpan = document.createElement("span");
					innerSpan.className = "text-danger";
					innerSpan.ariaHidden = "true";
					innerSpan.innerText = "×";

					innerBtn.appendChild(innerSpan);

					const innerImg = document.createElement("img");
					innerImg.className = "rounded img-fluid";
					innerImg.dataset.fileNo = dummy.fileNo;
					innerImg.src = dummy.base64img;

					const innerP = document.createElement("p");
					innerP.innerText = dummy.fileNm;

					innerDiv.appendChild(innerBtn);
					innerDiv.appendChild(innerImg);
					innerDiv.appendChild(innerP);
					outerDiv.appendChild(innerDiv);
				}
				result += outerDiv.outerHTML; // innerHTML은 자신을 기준으로 부모 안 나옴, outerHTML은 자신을 기준으로 부모 포함 다 나옴
			}
		} else {
			result += '<div>사진이 없습니다.</div>';
		}
		$('#img-list').html(result);

	}

	// 검사사진 목록 조회 성공 콜백함수
	const fnSelectListCamSuccess2 = (data) => {

		$('#img-list2').html("");

		// div 생성
		var result = "";
		var dummys = data.response;

		if (dummys.length > 0) {
			const splitedDummys = [];

			// 7개씩 쪼개기
			for (let i = 0; i < dummys.length; i += 7) {
				splitedDummys.push(dummys.slice(i, i + 7));
			}

			for (let dummys of splitedDummys) {
				const outerDiv = document.createElement("div");
				outerDiv.className = "row mb-3";
				for (let dummy of dummys) {

					const innerDiv = document.createElement("div");
					innerDiv.className = "col col-photo text-center";

					const innerBtn = document.createElement("button");
					innerBtn.className = "close img-close";
					innerBtn.dataset.fileNo = dummy.fileNo;

					const innerSpan = document.createElement("span");
					innerSpan.className = "text-danger";
					innerSpan.ariaHidden = "true";
					innerSpan.innerText = "×";

					innerBtn.appendChild(innerSpan);

					const innerImg = document.createElement("img");
					innerImg.className = "rounded img-fluid";
					innerImg.dataset.fileNo = dummy.fileNo;
					innerImg.src = dummy.base64img;

					const innerP = document.createElement("p");
					innerP.innerText = dummy.fileNm;

					innerDiv.appendChild(innerBtn);
					innerDiv.appendChild(innerImg);
					innerDiv.appendChild(innerP);
					outerDiv.appendChild(innerDiv);
				}
				result += outerDiv.outerHTML; // innerHTML은 자신을 기준으로 부모 안 나옴, outerHTML은 자신을 기준으로 부모 포함 다 나옴
			}
		} else {
			result += '<div>사진이 없습니다.</div>';
		}
		$('#img-list2').html(result)

	}

	// 선택한 테이블 tr 삭제
	const tableRowDel = (obj) => {
		var tr = obj.parentNode.parentNode;
		tr.parentNode.removeChild(tr);
	}

	/**
	 * 환자의 코멘트를 저장한다.
	 */
	const fnSaveCmnt = () => {

		if ($('#tmpRsvtNo').val() == "") {
			Swal.fire({
				icon: 'warning', // Alert 타입 
				title: '환자를 선택해 주세요.', // Alert 제목 
			});
			return false;
		}

		Swal.fire({
			title: '코멘트를 저장하시겠습니까?',
			icon: 'info',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '저장'
		}).then(result => { // 만약 Promise 리턴을 받으면, 
			if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면 

				let _cmntNo = $('#cmntNo').val();
				let _data = {
					'cmntCont': $('#cmntCont').val()
					, 'pntCd': $('#pntCd').val()
					, 'rsvtNo': $('#tmpRsvtNo').val()
					, 'empCd': '${loginUser.empCd}'
				}

				// 코멘트 키가 있으면 전송 데이터에 추가
				fnCommonAjax('post', _data, '/medical/insertCmnt', fnReloadCmnt);
				$('#cmntCont').val('');
			}
		})
	}
	
	const fnReloadCmnt = (data) => {
		var res = data.response;
		console.log(res);
		fnSelectVitalSignDetail(res.pntCd,res.rsvtNo);
	}

	/**
	 * 환자의 코멘트를 삭제한다.
	 */
	const fnDeleteCmnt = (cmntNo) => {

		if ($('#rsvtNo').val() == "") {
			Swal.fire({
				icon: 'warning', // Alert 타입 
				title: '환자를 선택해 주세요.', // Alert 제목 
			});
			return false;
		}

		Swal.fire({
			title: '코멘트를 삭제하시겠습니까?',
			text: "삭제한 데이터는 복구되지 않습니다.",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '삭제'
		}).then(result => { // 만약 Promise 리턴을 받으면, 
			if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면 
				let _cmntNo = cmntNo;
				let _rsvtNo = $('#tmpRsvtNo').val();
				fnCommonAjax('post', { 'cmntNo': _cmntNo, 'rsvtNo': _rsvtNo }, '/medical/deleteCmnt', fnReloadCmnt);
			}
		})
	}
	
	// 진단 검색 호출
	const fnJindanSch = () => {
		var schTxt = $('#jindanSchTxt').val();
		if (schTxt === "") {
			$("#jindanSchResult").addClass("d-none");
		} else {
			// 처방
			fnSelectListJindanSch1(schTxt);

			// 병명
			fnSelectListJindanSch2(schTxt);

			// 퀵오더
			fnSelectListJindanSch3(schTxt);
			$("#jindanSchResult").removeClass("d-none");
		}
	}

	// 수가코드 검색 호출
	const fnSoogiSch = () => {
		var schTxt = $('#soogiSchTxt').val();
		if (schTxt === "") {
			$("#soogiSchResult").addClass("d-none");
		} else {
			// 처방
			fnSelectListSoogiSch(schTxt);
			$("#soogiSchResult").removeClass("d-none");
		}
	}

	// 진료 완료 성공 콜백 함수
	const fnInsertTreatSuccess = (data) => {
		console.log('fnInsertTreatSuccess');
		console.log(data);
		if (data.message == 'success') {
			swal({
				title: '',
				text: '진료 완료',
				icon: 'success',
				buttons: {
					confirm: {
						text: '확인',
						value: false,
						className: 'btn btn-success'
					}
				}
			}).then((result) => {
				location.href = '/medical/main';
			});
		}
	}

	// 검사 추가 성공 콜백 함수
	const fnInsertInspectionSuccess = (data) => {
		console.log('fnInsertInspectionSuccess');
		console.log(data);
		if (data.message == 'success') {
			swal({
				title: '',
				text: '검사가 추가되었습니다.',
				icon: 'success',
				buttons: {
					confirm: {
						text: '확인',
						value: false,
						className: 'btn btn-success'
					}
				}
			}).then((result) => {
				location.href = '/medical/main';
			});
		}
	}

	// 바이탈사인 추가 성공 콜백 함수
	const fnInsertVitalSignSuccess = (data) => {
		if (data.response > 0) {
			swal("", "바이탈 사인 저장 완료", "success");
			$('#vitalCmplBtn').text("다시측정");
			$('#height, #weight, #vsBs, #vsTmp, #vsBpMax, #vsBpMin').prop('readonly', true);
		}
	}

	// 기록보기 목록 조회 성공 콜백 함수
	const fnSelectListVitalSignRecordSuccess = (data) => {
		var list = data.response;
		$('#recodeResult').html("");
		if (list.length > 0) {
			list.forEach(function (v, i) {
				$('#recodeResult').append('<tr><td>' + v.vsDt + '</td><td>' + v.vsBs + '</td><td>' + v.vsTmp + '</td><td>(' + v.vsBpMax + '/' + v.vsBpMin + ')</td></tr>');
			});
		}
	}

	/**
	 * 바이탈사인을 상세 조회한다.
	 * @param {string} pntCd 상세정보를 위한 환자키 값
	 * @param {string} rsvtNo 증상 정보를 위한 접수키
	 */
	const fnSelectVitalSignDetail = (pntCd, rsvtNo) => {
		console.log(pntCd,rsvtNo)
		$('#tmpRsvtNo').val(rsvtNo);
		fnCommonAjax('post', { 'pntCd': pntCd, 'rsvtNo': rsvtNo }, '/medical/selectVitalSignDetail', fnSelectVitalSignDetailSuccess);
	}

	/**
	 * 환자정보를 상세 조회 성공의 Callback 함수
	 * @param {object} data 서버의 응답 데이터
	 */
	const fnSelectVitalSignDetailSuccess = (data) => {
		let _obj = data.response;

		console.log('fnSelectVitalSignDetailSuccess');
		console.log(_obj);

		if (_obj) {
			// Object의 key만큼 배열을 반복한다.
			for (let i in Object.keys(_obj)) {
				var _id = Object.keys(_obj)[i];
				var _tagType = $('#' + _id).prop('tagName');
				var _value = _obj[Object.keys(_obj)[i]];
				
				if (_id == "cmnt") {
					var cmnts = "";
					console.log(_value);

					if (_value[0].cmntNo == null) {
						cmnts += `<h5>저장된 코멘트가 없습니다.</h5>`
					} else {
						for (var j = 0; j < _value.length; j++) {
							if (j > 0) {
								cmnts += `<br />`
							}
							cmnts += `<li>`
							cmnts += `<div class="message_pre_left">`
							cmnts += `<div class="messges_info">`
							cmnts += `<h5 style="display: inline-block;">\${_value[j].empNm}</h5>`

							if (_value[j].empCd == '${loginUser.empCd}') {
								cmnts += `<button class="btn btn-danger px-4" type="button" id="deleteCmntBtn" `
								cmnts += `onclick="javascript:fnDeleteCmnt(\${_value[j].cmntNo});" style="float:right;">삭제</button>`
							}
							cmnts += `<p>\${_value[j].cmntCont}</p>`
							cmnts += `</div>`
							cmnts += `</div>`
							cmnts += `<div class="messge_time">`
							cmnts += `<span>\${_value[j].cmntDate} \${_value[j].cmntTime}</span>`
							cmnts += `</div>`
							cmnts += `</li>`
						}
					}
					$("#cmntList").html(cmnts);
				}

				if (_tagType !== undefined && _tagType !== "INPUT") {
					$('#' + _id).text(_value);
				} else if (_tagType == "INPUT" || _tagType == "TEXTAREA") {
					$('#' + _id).val(_value);
				}
			}

			$('#vitalCmplBtn').text("다시측정");
			$('#height, #weight, #vsBs, #vsTmp, #vsBpMax, #vsBpMin').prop('readonly', true);
		} else {
			$('#vitalCmplBtn').text("측정완료");
			$('#height, #weight, #vsBs, #vsTmp, #vsBpMax, #vsBpMin').prop('readonly', false);
			$('#height, #weight, #vsBs, #vsTmp, #vsBpMax, #vsBpMin').val("");
		}

	}

	/**
	 * 예약목록을 조회한다.
	 */
	var fnSelectListMedicalYeyak = () => {
		fnCommonAjax('get', { "empCd": "${loginUser.empCd}" }, '/medical/selectListMedicalYeyak', fnSelectListMedicalYeyakSuccess);
	}

	/**
	 * 접수목록을 조회한다.
	 */
	const fnSelectListMedicalDaegi = () => {
		fnCommonAjax('get', { "empCd": "${loginUser.empCd}" }, '/medical/selectListMedicalDaegi', fnSelectListMedicalDaegiSuccess);
	}

	/**
	 * 예약목록 조회 성공의 Callback 함수
	 * @param {object} data 서버의 응답 데이터
	 */
	const fnSelectListMedicalYeyakSuccess = (data) => {
		let list = data.response;
		fnSetDataYeyekTable(list);
	}

	/**
	 * 접수목록 조회 성공의 Callback 함수
	 * @param {object} data 서버의 응답 데이터
	 */
	const fnSelectListMedicalDaegiSuccess = (data) => {
		let list = data.response;
		fnSetDataDaegiTable(list);
	}

	/**
	 * 병명 검색결과를 조회한다.
	 */
	const fnSelectListJindanSch1 = (schTxt) => {
		fnCommonAjax('get', { 'type': 1, 'schTxt': schTxt }, '/medical/selectListJindanSch', fnSelectListJindanSchSuccess1);
	}

	/**
	 * 퀵오더 검색결과를 조회한다.
	 */
	const fnSelectListJindanSch2 = (schTxt) => {
		fnCommonAjax('get', { 'type': 2, 'schTxt': schTxt }, '/medical/selectListJindanSch', fnSelectListJindanSchSuccess2);
	}

	/**
	 * 처방 검색결과를 조회한다.
	 */
	const fnSelectListJindanSch3 = (schTxt) => {
		fnCommonAjax('get', { 'type': 3, 'schTxt': schTxt }, '/medical/selectListJindanSch', fnSelectListJindanSchSuccess3);
	}

	/**
	 * 수가코드 검색결과를 조회한다.
	 */
	const fnSelectListSoogiSch = (schTxt) => {
		fnCommonAjax('get', { 'schTxt': schTxt }, '/medical/selectListSoogiSch', fnSelectListSoogiSchSuccess);
	}

	/**
	 * 진단 및 처방 검색 조회 성공의 Callback 함수
	 * @param {object} data 서버의 응답 데이터
	 */
	const fnSelectListJindanSchSuccess1 = (data) => {
		let list = data.response;

		console.log('fnSelectListJindanSchSuccess1');
		console.log(list);

		$("#diagnose1 > ul").html("");

		if (list.length > 0) {
			list.forEach(function (v, i) {
				$("#diagnose1 > ul").append('<li class="list-group-item"><a href="#none" data-code="' + v.disCd + '">' + v.disNm + '</a></li>');
			});
		}
	}

	/**
	 * 진단 및 처방 검색 조회 성공의 Callback 함수
	 * @param {object} data 서버의 응답 데이터
	 */
	const fnSelectListJindanSchSuccess2 = (data) => {
		let list = data.response;

		console.log('fnSelectListJindanSchSuccess2');
		console.log(list);

		$("#diagnose2 > ul").html("");

		if (list.length > 0) {
			list.forEach(function (v, i) {
				$("#diagnose2 > ul").append('<li class="list-group-item"><a href="#none" data-code="' + v.qoCd + '">' + v.qoNm + '</a></li>');
			});
		}
	}
	
	/**
	 * 진단 및 처방 검색 조회 성공의 Callback 함수
	 * @param {object} data 서버의 응답 데이터
	 */
	const fnSelectListJindanSchSuccess3 = (data) => {
		let list = data.response;

		console.log('fnSelectListJindanSchSuccess3');
		console.log(list);

		$("#diagnose3 > ul").html("");

		if (list.length > 0) {
			list.forEach(function (v, i) {
				$("#diagnose3 > ul").append('<li class="list-group-item"><a href="#none" data-code="' + v.drugCd + '">' + v.drugNm + '</a></li>');
			});
		}
	}

	/**
	 * 수가코드 검색 조회 성공의 Callback 함수
	 * @param {object} data 서버의 응답 데이터
	 */
	const fnSelectListSoogiSchSuccess = (data) => {
		let list = data.response;

		console.log('fnSelectListSoogiSchSuccess');
		console.log(list);

		$("#soogiTable").html("");

		if (list.length > 0) {
			list.forEach(function (v, i) {
				$("#soogiTable").append('<tr><td>' + v.sgCd + '</td><td>' + v.sgNm + '</td><td>' + v.sgAmt + '</td></tr>');
			});
		}
	}
	
	const fnSetQoCd = (data) => {
		let list = data.response;

		for (drug of list) {
			var drugTimes = '<input type="text" class="form-control form-control-sm rounded drugTimes" style="max-width: 50px !important;" name="drugTimes" value="' + drug.drugTimes + '">'
			var drugDoes = '<input type="text" class="form-control form-control-sm rounded drugDoes" style="max-width: 50px !important;" name="drugDoes" value="' + drug.drugDoes + '">'
			var drugTerm = '<input type="text" class="form-control form-control-sm rounded drugTerm" style="max-width: 50px !important;" name="drugTerm" value="' + drug.prspTerm + '">'
			
			var _creatDeleteBtn = '<td><button onclick="javascript:tableRowDel(this);" type="button" class="close"><span class="text-danger" aria-hidden="true">&times;</span></button></td>';
			$('#drugTable').append('<tr>' + '<td><p class="drugs" drugCd="'+ drug.drugCd + '">' + drug.drugNm + '</p></td><td>' + drugTimes + '</td><td>' + drugDoes + '</td><td>' + drugTerm + '</td>' + _creatDeleteBtn + '</tr>');
			$("#jindanSchResult").addClass("d-none");
		}
	}

	/**
	 * jQuery DataTable 라이브러리로 예약 목록을 셋팅한다.
	 * @param {array} list DataTable 값을 셋팅하기위한 jsonArray
	 */
	const fnSetDataYeyekTable = (list) => {

		$('#yeyakTb').DataTable({
			"data": list,
			"dataSrc": "",
			"columns": [
				{ 'data': 'rsvtRegTime', "className": "text-center" },
				{ 'data': 'pntNm', "className": "text-center" },
				{ 'data': 'pntPrno', "className": "text-center" },
			],
			"bLengthChange": false, // thought this line could hide the LengthMenu
			"pageLength": 5,
			"language": {
				"emptyTable": "예약 환자가 없습니다.",
				"info": "총 _TOTAL_명",
				"search": "환자검색 : ",
				"zeroRecords": "일치하는 환자가 없습니다.",
				"paginate": {
					"first": "처음",
					"last": "마지막",
					"next": "다음",
					"previous": "이전"
				},
			}
		});
	}

	/**
	 * jQuery DataTable 라이브러리로 대기 목록을 셋팅한다.
	 * @param {array} list DataTable 값을 셋팅하기위한 jsonArray
	 */
	const fnSetDataDaegiTable = (list) => {

		$('#daegiTb').DataTable({
			"data": list,
			"dataSrc": "",
			"columns": [
				{ 'data': 'rsvtRegTime', "className": "text-center" },
				{ 'data': 'pntNm', "className": "text-center" },
				{ 'data': 'pntPrno', "className": "text-center" },
			],
			"bLengthChange": false, // thought this line could hide the LengthMenu
			"pageLength": 5,
			"language": {
				"emptyTable": "대기 환자가 없습니다.",
				"info": "총 _TOTAL_명",
				"search": "환자검색 : ",
				"zeroRecords": "일치하는 환자가 없습니다.",
				"paginate": {
					"first": "처음",
					"last": "마지막",
					"next": "다음",
					"previous": "이전"
				},
			}
		});
	}

	/**
	 * ajax 공통호출 함수
	 * @param {string} 통신 method 타입
	 * @param {string} 서버로 전송하는 request 데이터
	 * @param {string} request 호출 주소
	 * @param {function} successFn 성공 콜백함수
	 */
	const fnCommonAjax = (type, data, url, successFn) => {
		// 로딩바 보이기
		$('.spinner-border').show();
		$.ajax({
			'type': type,
			'data': data,
			'async': false,
			'url': url,
			beforeSend: function (jqXHR, settings) {
				// ajax 사용시 헤더에 스프링시큐리티 토큰 설정
				var token = '${_csrf.token}'
				var header = '${_csrf.headerName}'
				jqXHR.setRequestHeader(header, token);
			}
			, success: successFn
		})
		.done((data) => {
			// 로딩바 숨기기
			$('.spinner-border').hide();
		})
		.fail((data) => {
			swal("", "통신에러 발생", "error");
			$('.spinner-border').hide();
		});
	}

</script>

<div class="footer_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="footer_iner text-center">
					<p>2020 © Influence - Designed by <a href="#"><i class="ti-heart"></i></a>
						<a href="#">Dashboard</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>