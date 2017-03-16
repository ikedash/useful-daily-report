<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
  <title>日報投稿画面</title>
  <link href="http://fonts.googleapis.com/css?family=Exo:900" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/semantic-ui/2.2.6/semantic.min.css" rel="stylesheet">
  <style>/** CSS：Area */
  body {
    padding-top: 50px;
  }
  </style>
</head>

<body>
<div class="pusher">
  <jsp:include page="header.jsp" flush="true" />
  <div class="full height image">
    <div class="ui main container">
      <div class="ui information container">
        <h1 class="ui center aligned header">日報投稿画面</h1>
        <form class="ui form" method="post" action="/daily-report/confirm">
          <div class="field">
            <label>タイトル</label>
            <input type="text" name="title" value="${title}"/>
            <label>内容</label>
            <input type="text" name="body" value="${body}"/>
          </div>
          <input class="ui fluid green button" type="submit" value="投稿する" />
        </form>
      </div>
    </div>
  </div>
</div>

</body>
</html>