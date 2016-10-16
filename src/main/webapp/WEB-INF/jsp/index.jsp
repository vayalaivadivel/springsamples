<%-- 
    Document   : index
    Created on : Oct 8, 2016, 3:10:32 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--        <h1><b>Pournami Charitable Trust. It is under construction.... By IT Team</b></h1>-->
        <h1><b>HelloWorld Different Message: </b></h1><br/>
        Request Scope: ${requestScope.message} <br/>
        Session Scope: ${sessionMessage} <br/>
        Application Scope: ${appMessage} <br/>
    </body>
</html>
