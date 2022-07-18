<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="stylesheet" href="/static/css/user/login.css"/>
    <title></title>
</head>
<body>
    <div class="login-wrapper">

        <form class="login-frm" action="/user/login" method="post">
            <div>
                <strong>로그인</strong>
            </div>
            <div class="login-data">
                <div class="form-floating mb-3">
                    <input type="text" name="uid" class="form-control" id="floatingInput"">
                    <label for="floatingInput">아이디</label>
                </div>
                <div class="form-floating">
                    <input type="password" name="upw" class="form-control" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">비밀번호</label>
                </div>
                <div class="login-check">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                            아이디 저장
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                        <label class="form-check-label" for="flexCheckChecked">
                            자동 로그인
                        </label>
                    </div>
                </div>
                <div>
                    <button type="submit" class="btn btn-dark login-btn">로그인</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>