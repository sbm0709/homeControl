<%@ page import="com.example.homecontrol.Machine" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.homecontrol.DB.DBManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>


<c:set var="user_id" value="4"/>
<sql:setDataSource 
        var="dataSource"
        driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://redcan.iptime.org:4322/home"
        user="root"
        password="1234"
        scope="application"/>
<c:set var="sql_query"
       value="SELECT * FROM machine" />
<sql:query var="result" scope="page" dataSource="${dataSource}" sql="${sql_query}"/>

<%--<c:forEach var="row" items="${result.rows}">--%>
<%--    ${row['id_num']} ${row['user_id']} ${row['machine_name']}${row['machine_state']}--%>
<%--</c:forEach>--%>

<html>
<style>
    header{
        height:800px;
        width: 1200px;
        border:1px solid black;
        margin: 0 auto;
    }
    main{
        width: 100%;
        height: 800px;
        margin-bottom: 10px;
    }
    .machine_list{
        height:800px;
        width: 1200px;
        border:1px solid black;
        margin: 0 auto;
    }
    .machine_con{
        border:1px solid black;
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
        <div class="btn_div">
            <button>추가</button>
            <button>수정</button>
            <button>삭제</button>
        </div>
        <div class="machine_list">
<%--            <c:forEach var="row" items="${result.rows}">--%>
<%--                <div class="machine_con">--%>
<%--                    <div>${row['machine_name']}</div>--%>
<%--                    <div>${row['machine_state']}</div>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
        </div>
    </main>
    <footer>
        본 페이지는 상업적 목적이 아닌 개인 프로젝트용으로 제작되었습니다.<br>
        &#169;PORTFOLIO Daegil Chae. All rights reserved.
    </footer>
</body>
</html>
