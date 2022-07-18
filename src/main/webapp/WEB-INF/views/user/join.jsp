<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
    <div>
        <form action="/user/join" method="post">
            <div>
                <label>
                    아이디
                    <input type="text" name="uid" placeholder="User ID">
                </label>
            </div>
            <div>
                <div>
                    <label>
                        비밀번호
                        <input type="password" name="upw" placeholder="User Password">
                    </label>
                </div>
                <div>
                    <label>
                        비밀번호 확인
                        <input type="password" name="upw_chk" placeholder="Password Check">
                    </label>
                </div>
            </div>
            <div>
                <label>
                    이름
                    <input type="text" name="nm" placeholder="User Name">
                </label>
            </div>
            <div>
                <label>
                    이메일
                    <input type="text" name="email" placeholder="User Email">
                </label>
            </div>
            <div>
                <input type="submit" value="회원가입">
            </div>
        </form>
    </div>
</body>
</html>