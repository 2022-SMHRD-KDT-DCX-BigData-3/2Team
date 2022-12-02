
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="css/login.css" rel="stylesheet" />
		<div class="login-box">
  <h2>Login</h2>
  <form action="/login" method="post">
    <div class="user-box">
      <input type="text" name="MEMBER_id" required="required">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="MEMBER_PW" required="required">
      <label>Password</label>
    </div>
    <span></span>
      <span></span>
      <span></span>
      <span></span>
    <button type="submit" class="btn btn-primary">로그인</button>
  </form>
</div>
