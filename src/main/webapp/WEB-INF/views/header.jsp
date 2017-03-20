<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

  <header class="ui fixed inverted main menu">
  <div class="ui container">

    <div class="left menu">
      <a class="item" href="/home">
        <i class="home icon"></i> Home
      </a>

      <a class="item" href="/daily-report/input">
        <i class="write icon"></i> 投稿
      </a>
      
      <form name="searchForm" class="ui form" method="get" action="/daily-report/search">
        <div class="ui icon input">
          <input placeholder="Search..." type="text" name="word" />
          <button class="ui icon button">
            <i class="search icon"></i>
          </button>
        </div>
      </form>
    </div>

    <div class="right menu">
      <a class="item" href="/login">
        <i class="sign in icon"></i> Sign in
      </a>
      <a class="item" href="/join">
        <i class="user icon"></i> Sign up
      </a>
    </div>

  </div>
  </header>
