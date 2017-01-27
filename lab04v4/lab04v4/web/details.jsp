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
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <%! Customer customer; %>
        <% 
            customer = Customers.getCustomer(Integer.parseInt(request.getParameter("index"))); 
        %>
        
        
        
        <table border="1">
            
                <tr>
                    <td>ID</td>
                    <td><%=customer.getCustomerId()%></td>
                </tr>
                <tr>
                    <td>Discount code</td>
                    <td><%=customer.getDiscountCode()%></td>
                </tr>
                <tr>
                    <td>ZIP</td>
                    <td><%=customer.getZip()%></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><%=customer.getName()%></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><%=customer.getAddressline1()%> <%=customer.getAddressline2()%><br></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td><%=customer.getCity()%></td>
                </tr>
                <tr>
                    <td>State</td>
                    <td><%=customer.getState()%></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><%=customer.getPhone()%></td>
                </tr>
                <tr>
                    <td>Fax</td>
                    <td><%=customer.getFax()%></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><%=customer.getEmail()%></td>
                </tr>
                
           
            </c:forEach>
        </table>
            
        
    

