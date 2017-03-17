<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
  <title>投稿内容確認画面</title>
  <link href="http://fonts.googleapis.com/css?family=Exo:900" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/semantic-ui/2.2.6/semantic.min.css" rel="stylesheet">
  <style>/** CSS：Area */
  body {
    padding-top: 50px;
  }
  </style>
  <script src="/js/jquery.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <script src="/js/ie10-viewport-bug-workaround.js"></script>
</head>

<body>
<div class="pusher">
  <jsp:include page="header.jsp" flush="true" />
  <div class="full height image">
    <div class="ui main container">
      <div class="ui information container">
        <h1 class="ui center aligned header">投稿する内容を確認してください。</h1>
        <form name="reportForm" class="ui form" method="post" action="/daily-report/post">
          <div class="field">
            <label>タイトル</label>
            <p class="msg">${title}</p>
            <input type="hidden" name="title" value="${title}" />
          </div>

          <div class="field">
            <label>内容</label>
            <p class="msg">${body}</p>
            <input type="hidden" name="body" value="${body}" />
          </div>

          <div class="field">
            <label>本日の研修満足度</label>
            <p class="msg">${ss}</p>
            <input type="hidden" name="ss" value="${ss}" />
          </div>

          <div class="field">
            <label>満足度の理由</label>
            <p class="msg">${causeOfSs}</p>
            <input type="hidden" name="causeOfSs" value="${causeOfSs}" />
          </div>

          <div class="field">
            <label>内容</label>
            <p class="msg">${tag}</p>
            <input type="hidden" name="tag" value="${tag}" />
          </div>

          <div class="field">
            <input type="submit" class="ui fluid green button" value="投稿する" />
          </div>

          <div class="field">
            <input type="submit" class="ui fluid button" value="戻る" onclick="document.reportForm.action = '/daily-report/back'"/>
          </div>

        </form>
      </div>
    </div>
  </div>
</div>

</body>
</html>