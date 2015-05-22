<%-- 
    Document   : Bitacora
    Created on : May 19, 2015, 10:45:52 AM
    Author     : edpena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Bitácora</title>
            <link rel="stylesheet" type="text/css" href="css/plantilla.css" />
            <link rel="stylesheet" type="text/css" href="css/bitacora.css" />
        </head>
        <body>
            <h1>Bienvenido</h1>
            <c:if test="${requestScope.empleado != null}">
                <h1><c:out value="${requestScope.empleado}" /></h1>
            </c:if>
            <c:if test="${requestScope.empleado == null}">
                <h1>Usuario anónimo</h1>
            </c:if>
            
            
            <section class="accion">
                <fieldset>
                    <legend class="legendQuien">Fecha: <input type="date" /></legend>
                    <table>
                        <tr>
                            <td>
                                <fieldset>
                                    <legend class="legendQuien">¿Quién reporta?</legend>
                                    <select>
                                        <option value="0">Selecciona un empleado</option>
                                        <c:forEach items="${requestScope.empleados}" var="empleado">
                                            <option value="${empleado}"><c:out value="${empleado}"/></option>
                                        </c:forEach>
                                    </select>
                                </fieldset>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 <fieldset>
                                    <legend class="legendMaterial">¿Material?</legend>
                                    <select>
                                        <option value="0">Ningún material</option>
                                        <c:forEach items="${requestScope.materiales}" var="material">
                                            <option value="${material}"><c:out value="${material}"/></option>
                                        </c:forEach>
                                    </select>
                                </fieldset>
                                <fieldset>
                                    <legend class="legendMaterial">¿Tipo de evento?</legend>
                                    <select>
                                        <option value="0">Ningún evento</option>
                                        <c:forEach items="${requestScope.eventos}" var="evento">
                                            <option value="${evento}"><c:out value="${evento}"/></option>
                                        </c:forEach>
                                    </select>
                                </fieldset>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <fieldset>
                                    <legend class="legendSalon">¿Salón?</legend>
                                    <select>
                                        <option value="0">Ningún salón</option>
                                        <c:forEach items="${requestScope.salones}" var="salon">
                                            <option value="${salon}"><c:out value="${salon}"/></option>
                                        </c:forEach>
                                    </select>
                                </fieldset>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <article class="bitacora">
                                    <textarea cols="35" rows="20" maxlength="600" placeholder="Evento"></textarea>
                                </article>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="submit">Guardar</button>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </section>
            
        </body>
    </html>