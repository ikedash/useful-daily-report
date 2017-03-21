<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
  <title>投稿内容確認画面</title>
  <link href="/webjars/Semantic-UI/2.2.9/semantic.min.css" rel="stylesheet">
  <link href="/css/main.css" rel="stylesheet">
</head>

<body>
<div class="pusher">
  <jsp:include page="header.jsp" flush="true" />
  <div class="full height image">
    <div class="ui main container">
      <h1 class="ui center aligned header">投稿する内容を確認してください。</h1>
      <form name="reportForm" class="ui form" method="post" action="/daily-report/post">
        <div class="field">
          <label>タイトル</label>
          <p class="msg"><c:out value="${title}" /></p>
          <input type="hidden" name="title" value="${title}" />
        </div>

        <div class="field">
          <label>内容</label>
          <p class="msg"><c:out value="${body}" /></p>
          <input type="hidden" name="body" value="${body}" />
        </div>

        <div class="field">
          <label>本日の研修満足度</label>
          <p class="msg"><c:out value="${ss}" /></p>
          <input type="hidden" name="ss" value="${ss}" />
        </div>

        <div class="field">
          <label>満足度の理由</label>
          <p class="msg"><c:out value="${causeOfSs}" /></p>
          <input type="hidden" name="causeOfSs" value="${causeOfSs}" />
        </div>

        <div class="field">
          <label>内容</label>
          <p class="msg"><c:out value="${tag}" /></p>
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
</body>
</html>
