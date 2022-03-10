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
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" class="form-control" id="title">
            </div>

            <div class="form-group">
                <label for="content">Content</label>
                <textarea class="form-control summernote" rows="5" id="content"></textarea>
            </div>
        </form>
        <button id="btn-save" class="btn btn-primary">글쓰기 완료</button>
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