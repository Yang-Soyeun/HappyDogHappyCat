<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<section id="findPassword">
      <div id="login-container">
        <h1>비밀번호 찾기</h1>
        <div class="form-floating">
          <input
            type="text"
            class="form-control"
            id="floatingInput"
            placeholder="Id"
          />
          <label for="floatingInput">아이디</label>
        </div>
        <input
          type="submit"
          class="btn btn-dh"
          value="등록된 이메일로 인증번호 받기"
        />
        <div class="form-floating">
          <input
            type="text"
            class="form-control"
            id="floatingPassword"
            placeholder="000000"
          />
          <label for="floatingPassword">인증번호 6자리</label>
        </div>
        <input type="submit" class="btn btn-dh" value="다음" />
      </div>
    </section>
<%@ include file="/views/common/footer.jsp" %>
   