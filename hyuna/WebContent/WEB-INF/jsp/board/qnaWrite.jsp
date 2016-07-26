<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	 <%@ page trimDirectiveWhitespaces="true" %>
<div id="wrapper">
	<div class="bottom">
		<form id="faq_write">
			<table class="table table table-bordered">
				<tr>
					<td width="10%">제목</td>
					<td width="90%"><input type="text" id="faq_title" name="faq_title" class="form-control"></td>
				</tr>
				<tr>
					<td colspan="2"><textarea id="text_area" name="text_area" class="form-control"></textarea><script>
	                // Replace the <textarea id="editor1"> with a CKEditor
	                // instance, using default configuration.
	                CKEDITOR.replace( 'text_area' );
	            </script></td>
	            </tr>
	            <tr>
	            
	            </tr>
			</table>
			<div class="col-md-1 col-md-offset-0" >
				<input type="button" value="목록">
			</div>
			<div class="col-md-1 col-md-offset-9">
				<input type="button" value="등록">
			</div>
			<div class="col-md-1 col-md-offset-0">
				<input type="button" value="취소">
			</div>
		</form>
	</div>
</div>







