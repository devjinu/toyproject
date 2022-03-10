<%--
Created by IntelliJ IDEA.
User: Moon
Date: 2022-03-10
Time: 오후 12:27
To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp" %>
<div>
    <div class="container">
        <form>
            <input type="hidden" id="id" value="${board.id}" />
            <div class="form-group">
                <input value="${board.title}" type="text" class="form-control" id="title">
            </div>

            <div class="form-group">
                <textarea class="form-control summernote" rows="5" id="content">${board.content}</textarea>
            </div>
        </form>
        <button id="btn-update" class="btn btn-primary">글수정 완료</button>
    </div>
</div>
<script>
    $('.summernote').summernote({
        tabsize: 2,
        height: 300
    });
</script>
<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp" %>
