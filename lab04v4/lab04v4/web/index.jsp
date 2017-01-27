<%-- 
    Document   : lista
    Created on : 2017-01-08, 12:24:45
    Author     : student
--%>

<%@page import="pl.pollub.Customer"%>
<%@page import="pl.pollub.Customers"%>
<%@page import="java.sql.Array"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        
        <%
            try {
                List<Customer> list = Customers.getCustomers();
                pageContext.setAttribute("list", list);
            } catch(Exception e) {
                out.print("Error!!!!");
                out.print(e);
            }
        %>
         
        <table border="1">
            <tr>
                <th>ID</th>
                <th>name</th>
                <th>phone</th>
                <th>email</th>
                <th>city</th>
                <th>details</th>
                
            </tr>
            
            <c:forEach items="${list}" var="element">
                <tr>      
                    <td>${element.customerId}</td>
                    <td>${element.name}</td>
                    <td>${element.phone}</td>
                    <td>${element.email}</td>
                    <td>${element.city}</td>
                    <td><a href="details.jsp?index=${element.customerId}">Details</a></td> 
                </tr>
            </c:forEach>
        </table>
            
            <h3><a href="addCustomer.html">Dodaj klienta</a></h3>
            
        
    

