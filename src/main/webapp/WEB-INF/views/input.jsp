<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>

<head>
  <title>日報投稿画面</title>
  <link href="/webjars/Semantic-UI/2.2.9/semantic.min.css" rel="stylesheet">
  <link href="/css/main.css" rel="stylesheet">
</head>

<body>
  <jsp:include page="header.jsp" flush="true" />
  <div class="full height">
    <div class="ui main container">
      <h1 class="ui center aligned header">日報投稿画面</h1>
      <form:form modelAttribute="dailyReportForm" class="ui form" method="post" action="/daily-report/confirm">
        <div class="field">
          <label>タイトル</label>
          <form:input path="title" value="${title}"/>
          <form:errors path="title" cssClass="error-messages" />
        </div>

        <div class="field">
          <label>内容</label>
          <textarea name="body">${body}</textarea>
          <form:errors path="body" cssClass="error-messages" />
        </div>

        <div class="field">
          <label>本日の満足度</label>
          <div class="ui slider checkbox">
            <form:radiobutton path="ss" value="VeryGood" />
            <label>VeryGood</label>
          </div>
          <div class="ui slider checkbox">
            <form:radiobutton path="ss" value="Good" />
            <label>Good</label>
          </div>
          <div class="ui slider checkbox">
            <form:radiobutton path="ss" value="Medium" />
            <label>Medium</label>
          </div>
          <div class="ui slider checkbox">
            <form:radiobutton path="ss" value="Bad" />
            <label>Bad</label>
          </div>
          <div class="ui slider checkbox">
            <form:radiobutton path="ss" value="VeryBad" />
            <label>VeryBad</label>
          </div>
          <form:errors path="ss" cssClass="error-messages" />
        </div>

        <div class="field">
          <label>満足度の理由</label>
          <textarea name="causeOfSs">${causeOfSs}</textarea>
          <form:errors path="causeOfSs" for="causeOfSs" cssClass="error-messages" />
        </div>

        <div class="five wide field">
          <label>関連するタグ</label>
          <form:select path="tag" class="ui dropdown" name="tag">
            <form:option value="">選択してください</form:option>
            <form:option value="Java">Java</form:option>
            <form:option value="JavaScript">JavaScript</form:option>
            <form:option value="JSP">JSP</form:option>
            <form:option value="DB">DB</form:option>
          </form:select>
          <form:errors path="tag" cssClass="error-messages" />
        </div>

        <div class="field">
          <input class="ui fluid green button" type="submit" value="投稿する" />
        </div>
      </form:form>
    </div>
  </div>
</body>
</html>
