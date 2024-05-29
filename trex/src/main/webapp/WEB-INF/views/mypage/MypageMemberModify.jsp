<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/Perform.css"
	type="text/css" media="all">
<div id="contentswrap">

	<!-- subvisual -->
	<div id="subvisual">
		<div class="subv_performance">
			<div class="subv_pat">
				<p>문화로 시민을 행복하게! 대전예술의전당</p>
			</div>
		</div>
	</div>
	<!-- //subvisual -->

	<!-- navigation -->
	<div id="navigation">
		<div class="naviwrap">
			<a href="<%=request.getContextPath()%>/">HOME</a>&gt;
			<navi> <a
				href="<%=request.getContextPath()%>/mypage/MypageMemberList">마이페이지</a>&gt;
			<a href="<%=request.getContextPath()%>/mypage/MypageMemberModify">회원정보수정</a>
			</navi>
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
			<h3 class="cnt_ti">회원정보수정</h3>

		<form action="/mypage/MypageMemberModify" method="post">

			<div id="txt">
			
				<table cellpadding="0" cellspacing="0" width="100%" border="0"
					class="table1">
					<tbody>
						<tr>
							<td>회원코드</td>
							<td><input name="mem_code" value="${loginUser.mem_code}"
								readonly="readonly"></td>
						</tr>
						
						<tr>
							<td>* 아이디</td>
							<td><input name="mem_id" value="${loginUser.mem_id}"
								readonly="readonly"></td>
						</tr>
						
						<tr>
							<td>* 패스워드</td>
							<td><input name="mem_pwd" value="${loginUser.mem_pwd}"></td>
						</tr>
						
						<tr>
							<td>* 이메일</td>
							<td><input name="mem_email" value="${loginUser.mem_email}"></td>
						</tr>
					</tbody>
				</table>
				
				<div id="txt">
					<table cellpadding="0" cellspacing="0" width="100%" border="0" class="table1">

						<tbody class="text-center">
							<tr>
								<td>* 이름</td>
							<td>
								<input name="name" value="${gmem.name}"readonly="readonly">
							</td>
							</tr>
							<tr>
								<td>* 나이</td>
								<td><input type="birth" value="${gmem.birth}"
									readonly="readonly"></td>
							</tr>
							<tr>
								<td>* 주소</td>
								<td><input name="address" value="${gmem.address}"></td>
							</tr>
							<tr>
								<td>* 성별</td>
								<td><input name="gender" value="${gmem.gender}"
									readonly="readonly"></td>
							</tr>
							<tr>
								<td>* 휴대전화</td>
								<td><input name="tell" value="${gmem.tell}"></td>
							</tr>
							<tr>
								<td>마일리지</td>
								<td><input name="mile" value="${gmem.mile}"
									readonly="readonly"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			</form>

			<div class="board_butt">
				<button type="button" id="ModifyBtn">수정</button>
				<button type="button" id="listBtn">취소</button>
				
			</div>
			<script>
				$('#ModifyBtn').on('click', function(e) {
					
					$('form').submit();
					<%-- location="<%=request.getContextPath()%>/mypage/MypageMemberList" --%>
				});
				$('#listBtn').on('click', function(e) {
					location="<%=request.getContextPath()%>/mypage/MypageMemberList"
				});
			</script>
		</div>
	</div>
		<!-- //container -->
	</div>