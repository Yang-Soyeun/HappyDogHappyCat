<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<section id="enterMyPage">
      <div id="login-container">
        <h1>마이페이지</h1>
        <div class="form-floating">
          <input
            type="password"
            class="form-control"
            id="floatingInput"
            placeholder="Password"
          />
          <label for="floatingInput">비밀번호 확인</label>
        </div>
        <input type="submit" class="btn btn-dh" value="다음" />
      </div>
    </section>
<%@ include file="/views/common/footer.jsp" %>
   