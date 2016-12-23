<%-- 
    Document   : empsql
    Created on : 23 Dec, 2016, 11:49:40 AM
    Author     : mca1
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="emp" driver="oracle.jdbc.driver.OracleDriver" 
                           url="jdbc:oracle:thin:@172.16.20.20:1521:orcl"
                           user="c##mca27" password="mca27"/>
        <sql:query dataSource="${emp}" var="result">
            select * from employee
        </sql:query>
    <center><h1>Select Statement</h1>
        <h3><u>Employee table</u></h3></center>
    <table cellpadding="8" algin="center" border="0" width="50%" >
        <tr bgcolor="#949494">
            <th>Emp ID</th>
            <th>Name</th>
            <th>Lname</th>
            <th>DOB</th>
            <th>GENDER</th>
            <th>HIREDATE</th>
            <th>BASICSALARY</th>
            <th>DEPT_ID</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.empno}"/></td>
                <td><c:out value="${row.fname}"/></td>
                <td><c:out value="${row.lname}"/></td>
                <td><c:out value="${row.dob}"/></td>
                <td><c:out value="${row.gender}"/></td>
                <td><c:out value="${row.hiredate}"/></td>
                <td><c:out value="${row.basicsalary}"/></td>
                <td><c:out value="${row.dept_id}"/></td>
           </tr>
        </c:forEach>
    </table>
    </body>
</html>
