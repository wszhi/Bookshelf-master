<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html ng-app="myAPP">
<head>
    <meta charset="utf-8">
    <title>fake douban</title>
    <script type="text/javascript" src="js/angular.min.js"></script>
    <script type="text/javascript" src="js/underscore.min.js"></script>
    <script type="text/javascript" src="js/data.js"></script>
    <script type="text/javascript" src="js/app.js"></script>
    <link rel="stylesheet" href="css/bookshelf.css" media="screen" title="no title" charset="utf-8">
</head>
<body ng-controller="mainController">
<div id='books'>
    <h1 id="tag-title">豆瓣图书</h1>
    <a href="index"> <h2>我的书架</h2></a>
    <br />
    <div class="book-list">
        <div class="book" ng-repeat="book in books">
            <div class="book-img-part"><img src="{{book.images.small}}" alt="{{book.title}}" /></div>
            <div class="book-description-part">
                <h4 class='bookname' data-detail="{{book.url}}" name="title">{{book.title}}</h4>
                <div class='book-info'>
                    <p class="authors"><span class="author" ng-repeat="author in book.author" >{{author}}/</span></p>
                    <p class="price"><span name="price">{{book.price}}</span>起</p>
                    <span class='publisher' >{{book.publisher}}</span>
                    <span class='pubdate' >{{book.pubdate}}</span></div>
                <p class="tags"><span class=tag ng-repeat="tag in book.tags">{{tag.name}}  </span></p>
                <p><a href="addbooks?bookurl={{book.url}}&title={{book.title}}&author={{book.author}}&introduce={{book.summary}}&price={{book.price}}&imageurl={{book.image}}">加入自己的书架</a></p>
            </div>
            </form>
        </div>
    </div>
    <br />
    <button class='load-more' ng-click="loadmorebook()">加载更多</button>
    <a href="javascript:scrollTo(0,0)" hidefocus="true"><div id="top">顶部</div></a>

</div>
<div class="nav">
    <img class="logo" src="img/icon.jpg" />
    <div class="nav-items" >搜索书籍</div>
    <div class='nav-search'>
        <div  ng-controller="SelectCtrl">
            <select class="selected" ng-model="selectedTip"  ng-options="obj.name for obj in selecttip"></select>
            <select class="selected" ng-model="selectedGenre" ng-change="searchbookinlist(selectedTip,selectedGenre)">
                <option ng-repeat="label in selecttip[selectedTip.id].interest">{{label}}</option>
            </select>
            <input type ="text" id="nav-search-content" ng-model="searchContent" placeholder="搜索书籍" />
            <button id='nav-search-btn' ng-click="searchbook(searchContent)">搜索</button>
        </div>
    </div>
</div>
<div  id="book-err" ng-show="searchvisible">
    <div ng-show="isShow">没有符合要求的书籍~~~~(>_<)~~~~</div>
    <div  ng-hide="isShow">没有更多的书籍了~~~~(>_<)~~~~</div>
    <button id="back" ng-click="showorhide()">返回</button>
</div>
</body>
</html>
