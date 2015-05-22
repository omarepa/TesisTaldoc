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
            <title>. : NSTaldoc : .</title>
            <meta name="viewport" content="width=device-width">
            <link rel="stylesheet" type="text/css" href="css/tablaPersonalizada.css" />
            <link rel="stylesheet" href="css/login.css" />
            <link rel="icon" href="media/ailog.png" />
	</head>
	<body>
            <section id="fondo1">
            </section>
            <section id="raya">
            </section>
            <section id="fondo2">
            </section>
            <form action="autentificar" class="login">
                <article id="logoM">
                    <img src="media/unam.png" alt="UNAM" />
                </article>
                <article id="logoS">
                    <img src="media/taldoc.png" alt="SIGA" />
                </article>
                <input type="text" name="usuario" class="login-input" placeholder="Usuario" autofocus />
                <input type="password" name="contra" class="login-input" placeholder="Contraseña" />
                <input type="submit" value="ENTRAR" class="login-submit" />
                <br/><hr/><br/>
                <p class="login-help"><a href="#" onclick="javascript:alert('¡Pues que tonto! Preguntale a Janete o Alejandro');">¿Olvidaste tu contrase&ntilde;a?</a></p>
                <c:if test="${requestScope.mensaje != null}">
                    <lyo:errorMsg texto="${requestScope.mensaje}" />
                </c:if>
            </form>
	</body>
</html>