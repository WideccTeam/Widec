<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="util"%>
<html>

<util:header></util:header>    

 
 
<body>
    <h2>List of Users</h2>  
    <table>
        <tr>
            <td>NAME</td><td>Email</td><td>Photo</td>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.photo}</td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <!-- <a href="<c:url value='/new' />">Add New Employee</a> --> 
    
</body>
</html>