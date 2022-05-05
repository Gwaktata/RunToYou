<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<style>
	.side_menu_title {
		margin: 4%;
		margin-left: 20%;
	}
	.side_menu_title:hover {
		background-color: #d6d6d6;
		transition: 1.35s;
		transform: scale(1.35);
	}
</style>

<script>

</script>
<nav class="sidebar">
	<div class="logo d-flex justify-content-between">
		<a href="/"><img src="/resources/img/doclogo3.png" style="width: 250px; margin-left: -19%;" alt=""></a>
		<div class="sidebar_close_icon d-lg-none">
			<i class="ti-close"></i>
		</div>
	</div>
	<ul id="sidebar_menu">
		<sec:authorize access="isAuthenticated()">
		<!-- 공지사항 -->
		<a href="/notice/home">
			<li class="side_menu_title"><span><i class="fa fa-satellite-dish">&nbsp;공지사항</i></span></li>
		</a>
		</sec:authorize>
	
		<sec:authorize access="hasAnyRole('ROLE_DOCTOR','ROLE_NURSE','ROLE_ENGI','ROLE_WONMU')">
		<!-- 환자 -->
		<a href="/patients/patientsList"><li class="side_menu_title"><span><i class="fa fa-user-injured">&nbsp;환자</i></span></li></a>
		</sec:authorize>
		
		<sec:authorize access="hasAnyRole('ROLE_DOCTOR','ROLE_NURSE')">
		<!-- 예약 -->
		<a href="/reservation/main">
			<li class="side_menu_title"><span><i class="fa fa-calendar">&nbsp;예약</i></span></li>
		</a>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_DOCTOR')">
		<!-- 진료 -->
		<a href="/medical/main">
			<li class="side_menu_title"><span><i class="fa fa-stethoscope">&nbsp;진료</i></span></li>
		</a>
		</sec:authorize>

		<!-- 현황 -->
<!-- 		<a href=""> -->
<!-- 			<li class="side_menu_title"><span><i class="fa fa-chalkboard">현황</i></span></li> -->
<!-- 		</a> -->
		
		<sec:authorize access="hasRole('ROLE_ENGI')">
		<!-- 검사 -->
		<a href="/inspection">
			<li class="side_menu_title"><span><i class="fa fa-vial"></i>&nbsp;검사</i></span></li>
		</a>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_DOCTOR')">
		<!-- 입원 -->
		<a href="/ent/enting"><li class="side_menu_title"><span><i class="fa fa-bed">&nbsp;입원</i></span></li></a>
		</sec:authorize>
		
		<sec:authorize access="hasAnyRole('ROLE_WONMU','ROLE_NURSE')">
		<!-- 입원 -->
		<a href="/ent/entHome"><li class="side_menu_title"><span><i class="fa fa-bed">&nbsp;입원</i></span></li></a>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_WONMU')">
		<!-- 수납 -->
		<a href="/receive/receiveHome?color=0">
			<li class="side_menu_title"><span><i class="fa fa-cash-register">&nbsp;수납</i></span></li>
		</a>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_DOCTOR')">
		<!-- 수술 -->
		<a href="/operation/main">
			<li class="side_menu_title"><span><i class="fa fa-microscope">&nbsp;수술</i></span></li>
		</a>
		</sec:authorize>

		<sec:authorize access="hasRole('ROLE_ADMIN')">
		<!-- 부서 관리 -->
		<a href="/sec/home">
			<li class="side_menu_title"><span><i class="fa fa-users">&nbsp;부서 관리</i></span></li>
		</a>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_ADMIN')">
		<!-- 직원 관리 -->
		<a href="/emp/home">
			<li class="side_menu_title"><span><i class="fa fa-id-card">&nbsp;직원 관리</i></span></li>
		</a>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_ADMIN')">
		<!-- 통계 -->
		<a href="/stats/home">
			<li class="side_menu_title"><span><i class="fa fa-chart-line">&nbsp;통계</i></span></li>
		</a>
		</sec:authorize>
	</ul>
</nav>