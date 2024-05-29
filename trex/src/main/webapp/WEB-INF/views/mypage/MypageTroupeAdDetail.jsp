<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div id="contentswrap">

	<!-- subvisual -->
	<div id="subvisual">
		<div class="subv_performance">
			<div class="subv_pat">
				<p>
					<strong><img src="/resources/images/ma_service_type.png"
						alt="Daejeon Arts Center"></strong> 문화로 시민을 행복하게! 대전예술의전당
				</p>
			</div>
		</div>
	</div>
	<!-- //subvisual -->

	<!-- navigation -->
	<div id="navigation">
		<div class="naviwrap">
			<a href="/html/kr/" class="nv_home">HOME</a>&gt;
			<navi>
			<a href="<%=request.getContextPath() %>/mypage/MypageTroupeList">마이페이지</a>&gt;<a
				href="<%=request.getContextPath() %>/mypage/MypageTroupeAdList">광고신청조회</a>
			<div class="nv_service">
				<a class="nvs_print" href="#total"
					onclick="printContent('/html/kr/performance/performance_010101.html?mode=V&amp;code=2946');return false"><span
					class="hide">Print</span></a>
			</div>
		</div>
	</div>
	<!-- //navigation -->

	<!-- container -->
	<div id="container">
		<%@ include file="/WEB-INF/views/board/commons/submenu.jsp"%>

		<!-- content-->
		<div id="content">
			<!-- 컨텐츠 타이틀 -->
			<h3 class="cnt_ti">광고신청조회</h3>
			<div id="txt">
			<div class="right top_mar_15">
				</div>

				<table width="100%" class="table1" border="0" cellspacing="0"
					cellpadding="0" summary="테이블의 설명이 들어가는 부분입니다.">
					<colgroup>
						<col style="width: 96px;">
						<col style="width: 544px;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row" class="t_head t_left center">제목</th>
							<td class="t_end">${ad.title }</td>
						</tr>
						<tr>
							<th scope="row" class="t_head t_left center">작성자</th>
							<td class="t_end">${ad.writer }</td>
						</tr>

						<tr>
							<th scope="row" class="t_head t_left center">작성일</th>
							<td class="t_end">${ad.regist_date }</td>
						</tr>

						<td class="t_end EditText" colspan="2">${ad.cont}</td>
					</tbody>
				</table>
			</div>
		</div>
		<div class="board_butt">
					<button type="button" id="listBtn">목록</button>
			</div>
		<script>
			$('#listBtn').on('click', function(e) {
				location="<%=request.getContextPath()%>/mypage/MypageTroupeAdList"
			});
		</script>
	</div>
	<!-- //container -->
</div>