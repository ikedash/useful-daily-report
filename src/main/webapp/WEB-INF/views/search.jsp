<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
  <title>投稿内容確認画面</title>
  <link href="/webjars/Semantic-UI/2.2.9/semantic.min.css" rel="stylesheet">
  <link href="/css/main.css" rel="stylesheet">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
<div class="pusher">
  <jsp:include page="header.jsp" flush="true" />
  <div class="full height image">
    <div class="ui main container">
      <div class="ui information container">
        <h1 class="ui center aligned header">検索ワード：${word}</h1>
        <table class="ui celled table">
          <thead>
            <tr>
              <th>投稿日時</th>
              <th>投稿者</th>
              <th>タイトル</th>
              <th>タグ</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${dailyReportList}" var="list">
              <tr>
                <td>${list.createdAt}</td>
                <td>${list.contributor}</td>
                <td>${list.title}</td>
                <td>${list.tag}</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
</body>
</html>
