<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp" %>

<div class="container">
    <form class="joinForm">
        <h2>회원가입</h2>
        <div class="form-group">
            <input type="text" class="form-control" id="username" placeholder="아이디">
        </div>
        <div class="form-group">
            <input id="password" type="password" class="form-control" placeholder="비밀번호">
        </div>
        <div class="form-group">
            <input id="password2" type="password" class="form-control" placeholder="비밀번호 확인">
        </div>
        <div class="form-group">
            <input id="nickname" type="text" class="form-control" placeholder="닉네임">
        </div>
        <div class="form-group">
            <input id="email" type="email" class="form-control" placeholder="이메일">
        </div>

    </form>
    <button id="btn-save" class="btn btn-primary">회원가입 완료</button>
</div>
<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>
