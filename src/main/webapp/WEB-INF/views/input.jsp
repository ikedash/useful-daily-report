<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
  <title>日報投稿画面</title>
  <link href="/webjars/Semantic-UI/2.2.9/semantic.min.css" rel="stylesheet">
  <link href="/css/main.css" rel="stylesheet">
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
          </div>

          <div class="field">
            <label>内容</label>
            <textarea name="body">${body}</textarea>
          </div>

          <div class="field">
            <label>本日の研修満足度</label>
            <div class="ui slider checkbox">
              <input type="radio" name="ss" value="VeryGood">
              <label>VeryGood</label>
            </div>
            <div class="ui slider checkbox">
              <input type="radio" name="ss" value="Good">
              <label>Good</label>
            </div>
            <div class="ui slider checkbox">
              <input type="radio" name="ss" value="Medium">
              <label>Medium</label>
            </div>
            <div class="ui slider checkbox">
              <input type="radio" name="ss" value="Bad">
              <label>Bad</label>
            </div>
            <div class="ui slider checkbox">
              <input type="radio" name="ss" value="VeryBad">
              <label>VeryBad</label>
            </div>
          </div>

          <div class="field">
            <label>満足度の理由</label>
            <textarea name="causeOfSs">${causeOfSs}</textarea>
          </div>

          <div class="five wide field">
            <label>関連するタグ</label>
            <select class="ui dropdown" name="tag">
              <option value="">選択してください</option>
              <option value="java">Java</option>
              <option value="JavaScript">JavaScript</option>
              <option value="JSP">JSP</option>
              <option value="DB">DB</option>
            </select>
          </div>

          <div class="field">
            <input class="ui fluid green button" type="submit" value="投稿する" />
          </div>

        </form>
      </div>
    </div>
  </div>
</div>

</body>
</html>