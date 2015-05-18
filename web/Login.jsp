<%-- 
    Document   : Login
    Created on : May 18, 2015, 11:24:06 AM
    Author     : edpena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lyo" uri="/WEB-INF/tlds/customTagLibrary.tld" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Login</title>
        <link rel="stylesheet" href="css/plantilla.css" />
    </head>
    <body>
        <form action="autentificar">
            Usuario<input type="text" name="usuario" id="usuario"/>
            <br/>
            Contraseña<input type="password" name="contra" id="contra"/>
            <br/>
            <button type="submit">Entrar</button>
        </form>
        <c:if test="${requestScope.mensaje != null}">
            <lyo:errorMsg texto="${requestScope.mensaje}" />
        </c:if>
    </body>
</html>