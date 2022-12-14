
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="css/login.css" rel="stylesheet" />
    <div class="login-con">
        <div class="logo-box">
            <img src="./assets/img/smh.png" class="logo">
            <span class="logo-name">Smart Groupwear</span>
        </div>
        <div class="login-box">
            <h2>Login</h2>
            <form action="/login" method="post">
              <div class="user-box">
                <input type="text" name="MEMBER_id" required="required">
                <label>사원번호</label>
              </div>
              <div class="user-box">
                <input type="password" name="MEMBER_PW" required="required">
                <label>비밀번호</label>
              </div>
              <span></span>
                <span></span>
                <span></span>
                <span></span>
              <button type="submit" class="btn btn-primary"><span>로그인</span></button>
            </form>
          </div>
    </div>
