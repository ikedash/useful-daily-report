<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
  <title>タイムライン</title>
  <link href="/webjars/Semantic-UI/2.2.9/semantic.min.css" rel="stylesheet">
  <link href="/css/main.css" rel="stylesheet">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>

<jsp:include page="header.jsp" flush="true" />

<div class="ui main container">
  <h5 class="ui top attached header">
    キーワードでしぼりこむ<c:if test="${!empty tag}">（<c:out value="${tag}" />で絞込中）</c:if>
  </h5>
  <div class="ui raised attached segment" id="labels">
    <form name="filterForm" class="ui form" method="get" action="/daily-report">
      <input type="submit" class="ui button" name="tag" value="Java"/>
      <input type="submit" class="ui button" name="tag" value="JavaScript"/>
      <input type="submit" class="ui button" name="tag" value="JSP"/>
      <input type="submit" class="ui button" name="tag" value="DB"/>
    </form>
  </div>
</div>

<div class="ui information container">
  <div class="ui one column grid">
    <c:forEach items="${dailyReportList}" var="list">
      <div class="column">
        <div class="ui fluid card">
          <div class="content">
            <div class="meta">
              <c:out value="${list.contributor}さんの投稿" />
              <span class="right floated time">
                <i class="at icon" ></i>
                <c:out value="${list.createdAt}" />
              </span>
            </div>
          </div>
          <div class="content">
            <a class="header"><c:out value="${list.title}" /></a>
            <div class="description"><c:out value="${list.body}" /></div>
          </div>
          <div class="extra content">
            <a class="ui label"><c:out value="${list.tag}" /></a>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>
</div>
</body>
</html>
