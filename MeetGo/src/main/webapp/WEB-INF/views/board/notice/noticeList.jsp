<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
        @font-face {
            font-family: 'Pretendard-Regular';
            src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
            font-weight: 400;
            font-style: normal;
        }

        * {
            font-family: 'Pretendard-Regular';

        }

        @import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css");

        .wrap {
            margin: auto;
            height: 1000px;
            width: 1000px;
            box-sizing: border-box;

        }

        .notice_header {
            height: 100px;
            width: 1000px;
            box-sizing: border-box;
            text-align: center;
            margin-top: 50px;
        }

        .notice_body_1 {
            height: 40px;
            box-sizing: border-box;
            width: 1000px;
            display: flex;

        }

        .notice_body_1_1 {

            height: 40px;
            box-sizing: border-box;
            width: 10%;
            float: left;
        }

        .notice_body_1_2 {

            height: 40px;
            box-sizing: border-box;
            width: 60%;
            float: center;
            text-align: center;
        }

        .notice_body_1_3 {
            height: 40px;
            box-sizing: border-box;
            width: 18%;
            float: right;
        }

        .notice_main {

            width: 1000px;
            box-sizing: border-box;
            height: 630px;

        }

        table, th, td {

            border-collapse: collapse;
            width: 1000px;
        }

        .notice_notice {
            box-sizing: border-box;

            width: 70%;
        }

        .notice_first {
            background-color: #e8f6ff;

        }

        .notice_content {
            box-sizing: border-box;

            width: 1000px;
            height: 630px;
        }

        .bno {

            width: 10%;
            height: 10px;
            box-sizing: border-box;

        }

        .notice_footer {
            float: center;
            width: 1000px;
            height: 100px;
            box-sizing: border-box;

        }

        .center-button {
            display: block;
            margin: auto;
        }

        table, th, td {

            border-collapse: collapse;
            width: 1000px;
        }
		.noticeList {
			text-align: center;
		}
		.noticeList > thead{
			font-weight: 900;
			border-bottom: 1px solid lightgray;
		}
        .noticeList tr{
			height: 40px;
		}
        .noticeList tbody>tr:hover{
			cursor: pointer;
			background-color: lightgray;
		}
	</style>
</head>
<body>
<jsp:include page="../../common/header.jsp"/>
<jsp:include page="../../common/side.jsp"/>

<div class="wrap">
	
	<div class="notice_header">
		<h2>공지사항 게시판</h2>
	</div>
	<div class="notice_main">
		<table class="noticeList">
			<thead>
			<tr>
				<td>No</td>
				<td>제목</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="m" items="${ requestScope.list }">
				<tr onclick="sendNoticeDetail( ${m.board.boardNo} )">
					<td class="bno" width="10%">${m.board.boardNo}</td>
					<td class="notice_content_1" style="width :40%;">${m.board.boardTitle}</td>
					<td class="notice_content_2 "style=" width:15%;">${m.board.createDate}</td>
					<td class="notice_content_3" style="width:10%;">${m.board.boardCount}</td>
				</tr>
			</c:forEach>
			</tbody>
		
		</table>
	</div>
	<div>
		<%--            <a href="noticeWrite.bo">--%>
		<%--            	<c:choose>--%>
		<%--	            	<c:when test="${  not empty sessionScope.loginUser }">--%>
		<%--		                <button type="submit" class="btn btn-primary" >글작성</button>--%>
		<%--	            	</c:when>--%>
		<%--            	</c:choose>--%>
		<%--            </a>--%>
	</div>
	<div>
	
	</div>
	<br>
	<div id="pagingArea">
		<ul class="pagination">
			<c:choose>
				<c:when test="${ requestScope.pi.currentPage eq 1 }">
					<li class="page-item disabled">
						<a class="page-link" href="#">Previous</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="page-item">
						<a class="page-link"
						   href="noticeList.bo?cpage=${ requestScope.pi.currentPage - 1 }">Previous</a>
					</li>
				</c:otherwise>
			</c:choose>
			
			<c:forEach var="p" begin="${ requestScope.pi.startPage }"
					   end="${ requestScope.pi.endPage }"
					   step="1">
				<li class="page-item">
					<a class="page-link" href="noticeList.bo?cpage=${ p }">${ p }</a>
				</li>
			</c:forEach>
			
			<c:choose>
				<c:when test="${ requestScope.pi.currentPage eq requestScope.pi.maxPage }">
					<li class="page-item disabled">
						<a class="page-link" href="#">Next</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="page-item">
						<a class="page-link" href="noticeList.bo?cpage=${ requestScope.pi.currentPage + 1 }">Next</a>
					</li>
				</c:otherwise>
			</c:choose>
		
		</ul>
	</div>

</div>


<jsp:include page="../../common/footer.jsp"/>


<script>

    function sendNoticeDetail(bno) {
        location.href = "noticeDetail.bo?bno=" + bno;

    };


</script>


</body>
</html>