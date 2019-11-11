<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
<title>1대1게시판 등록</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript" src="/test/2979/js/jquery.raty.js"></script>
<style type="text/css">
p {
	width: 600px;
	text-align: right;
}

table tbody tr th {
	background-color: gray;
}

</style>

<script type="text/javascript">
	function goUrl(url) {
		location.href=url;
	}
	function boardWriteCheck() {
		var form = document.boardWriteForm;
		return true;
	}

</script>
<script type="text/javascript">
</script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>

	<h2 align="center"> 상품평 등록하기</h2>
	<form name="boardWriteForm" action="boardProcess.jsp" method="post" onsubmit="return boardWriteCheck();">
	<input type="hidden" name="mode" value="W" />
	<table border="1" summary="게시판 등록 폼" align="center">
		<colgroup>
			<col width="100" />
			<col width="500" />
		</colgroup>
		<tbody>
			<tr>
				<th align="center">제목</th>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<th align="center">작성자</th>
				<td><input type="text" /></td>
			</tr>
				<td colspan="2"><textarea rows="10" cols="100"></textarea></td>
			</tr>
		</tbody>
	</table>
	<p >
		<input type="button" value="목록" onclick="goUrl('packge1.html');" />
		<input  type="submit" value="글쓰기" onclick="goUrl('QuestionboardWrite.html');" />
	</p>
	</form>
</body>
</html>


