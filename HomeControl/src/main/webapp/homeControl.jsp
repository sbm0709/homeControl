<%@ page import="com.example.homecontrol.Machine" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.homecontrol.DB.DBManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>


<sql:setDataSource
        var="dataSource"
        driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://redcan.iptime.org:4322/home"
        user="root"
        password="1234"
        scope="application"/>

<c:set var="sql_query"
       value="select * from machine" />
<sql:query var="result" dataSource="${dataSource}" sql="${sql_query}" />
<c:forEach var="row" items="${result.rows}">
    <%
        List<Machine> machineList = new ArrayList<>();

    %>
    ${row['id']} ${row['test_value']}
</c:forEach>

<html>
<style>
    main{
        width: 100%;
        height: 800px;
        margin-bottom: 10px;
    }
    .container{
        height:800px;
        width: 1200px;
        border:1px solid black;
        margin: 0 auto;
    }
    footer{
        height: 100px;
        display: flex;
        background-color: #a7cbff;
        justify-content: center;
        align-items: center;
    }
</style>
<head>
    <title>Title</title>
</head>
<body>
    <main>
        <div class="container">

        </div>
    </main>
    <footer>
        본 페이지는 상업적 목적이 아닌 개인 프로젝트용으로 제작되었습니다.<br>
        &#169;PORTFOLIO Daegil Chae. All rights reserved.
    </footer>
</body>
</html>
