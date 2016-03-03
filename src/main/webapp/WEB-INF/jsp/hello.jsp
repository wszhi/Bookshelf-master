<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>书架</title>
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <link rel="stylesheet" href="css/bookshelf.css" charset="utf-8">
    <script>
        $(document).ready(function(){
            $('#updatebookform').hide();
        });
        function showupdate(bookid)
        {
            $('#updatebookform').show();
            $('.updatebookid').val(bookid);
        }
        function closeupdate(){
            $('#updatebookform').hide();
        }
        function checkid(){
            $('.queryid').val(0);
        }
    </script>
</head>
<body>
<div class="nav">
    <img class="logo" src="img/icon.jpg" /><a href="morebooksonline"> <h1>去豆瓣添加图书</h1></a>
</div>
<div id="updatebookform"><center>
    <form action="updatebook" method="post">
        <label>ID：</label><input type="text" class="updatebookid" name="id"><br>
        <label>书的URL：</label><input type="text" name="bookurl"><br>
        <label>书名：</label><input type="text" name="title"><br>
        <label>作者：</label><input type="text" name="author"><br>
        <label>价格：</label><input type="text" name="price"><br>
        <label>书的图片地址：</label><input type="text" name="imageurl"><br>
        <label>介绍：</label><input type="text" name="introduce"><br>
        <input  type="submit" value="确定" class="buttonstyle">
    </form>
    <button onclick="closeupdate()" class="buttonstyle">取消</button></center>
</div>
<div class="searchlocal">

    <h3>查询条件</h3>
    <form id="queryBook" action="showBook" onsubmit="checkid();" method="post">
        <div>
            <label>ID：</label><input type="text" name="id" class="queryid">
            <label>书名：</label><input type="text" name="title">
            <label>作者：</label><input type="text" name="author">
            <input type="submit" class="buttonstyle" value="查询">

        </div>
    </form>
</div>


<table id="inforTable"  width="100%" cellspacing="1" cellpadding="0" border="0">
    <tr>
        <th>ID</th>
        <th>封面</th>
        <th>书名</th>
        <th>作者</th>
        <th>介绍</th>
        <th>价格</th>
        <th>操作</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${books}" var="book" >
        <tr>
            <td><div>${book.id}</div></td>
            <td><div><img src="${book.imageurl}" alt=""></div></td>
            <td><div>${book.title}</div></td>
            <td><div>${book.author}</div></td>
            <td><div>${book.introduce}</div></td>
            <td><div>${book.price}</div></td>
            <td><div><button onclick="showupdate(${book.id})" class="buttonstyle">修改</button></div></td>
            <td><div><a href="delbook?id=${book.id}" class="buttonstyle">删除</a></div></td>
        </tr>
    </c:forEach>
</table>

<div id="addbookform"><h3>手动添加图书</h3>
<form action="addbook" method="post">
    <center>
        <label>书的URL：</label><input type="text" name="bookurl">
        <label>书名：</label><input type="text" name="title">
        <label>作者：</label><input type="text" name="author"><br>
        <label>价格：</label><input type="text" name="price">
        <label>书的图片地址：</label><input type="text" name="imageurl">
        <label>介绍：</label><input type="text" name="introduce"><br>
        <input  type="submit" value="确定" class="buttonstyle">
    </center>
</form>
</div>
</body>
</html>