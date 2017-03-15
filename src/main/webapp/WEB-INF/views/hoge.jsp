<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Helo Page</title>
</head>
<body>
        <h1>Hello!</h1>
        <p>これはサンプルのページです。</p>
        <p class="msg">${datas}</p>
        <hr>
        <form method="POST" action="/post">
          <input type="text" name="id"><br>
          <input type="text" name="name"><br>
          <input type="submit">
        </form>
</body>
</html>