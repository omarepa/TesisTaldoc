<%-- 
    Document   : Inicio
    Created on : May 18, 2015, 11:26:36 AM
    Author     : edpena
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Bienvenido</title>
            <script src="js/jquery-1.11.3.min.js"></script>
            <script src="js/menuAdmin.js"></script>
            <script src="js/menuUser.js"></script>
            <link rel="stylesheet" type="text/css" href="css/plantilla.css" />
            <link rel="stylesheet" type="text/css" href="css/menuAdmin.css" />
            <link rel="stylesheet" type="text/css" href="css/common.css" />
            <link rel="stylesheet" type="text/css" href="css/menuUser.css" />
        </head>
        <body>
            <h1>Bienvenido</h1>
            <c:if test="${requestScope.empleado != null}">
                <h1><c:out value="${requestScope.empleado}" /></h1>
            </c:if>
            <c:if test="${requestScope.empleado == null}">
                <h1>Usuario anónimo</h1>
            </c:if>
            
            <!-- NAVEGACION DEL ADMINISTRADOR -->
            <div class="content">
                <div id="admin"><b id="admin_text" onclick="javascript:menuAdmin();">Configuración</b></div>
                <div id="settings" onclick="javascript:menuAdmin();" class="fa fa-cog"><img width="25" height="25" src="media/configuration.png" /></div>
                <div id="menu">
                    <div id="arrow"></div>
                    <a href="#">Usuarios <i id="firstIcon" class="fa fa-user"><img width="25" height="25" src="media/admin.png" /></i></a>
                    <a href="#">Profesores <i id="secondIcon" class="fa fa-bar-chart-o"><img width="25" height="25" src="media/users.png" /></i></a>
                    <a href="#">Salones <i id="thirdIcon" class="fa fa-cloud-upload"><img width="25" height="25" src="media/notepad.png" /></i></a>
                    <a href="#">Ayuda <i id="fourthIcon" class="fa fa-pencil"><img width="25" height="25" src="media/tick.png" /></i></a>
                </div>
            </div>
                

            <!-- NAVEGACION DEL EMPLEADO -->
            <div class="accion">
                <ul class="ch-grid">
                    <li>
                        <div class="ch-item ch-img-1">
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="ch-info-front ch-img-1"><br/>BÍTACORA</div>
                                    <div class="ch-info-back">
                                        <h3>
                                            <a href="opcion?opcion=bitacora">
                                            En la bitácora electrónica podrás registrar los eventos realizados
                                            durante el día complementado cada evento con diferentes tipos de
                                            atributos.
                                            </a>
                                        </h3>
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-2">
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="ch-info-front ch-img-2"><br/><br/>INVENTARIO</div>
                                    <div class="ch-info-back">
                                        <h3>INVENTARIO</h3>
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-1">
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="ch-info-front ch-img-1"><br/>SALONES</div>
                                    <div class="ch-info-back">
                                        <h3>INVENTARIO</h3>
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-2">
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="ch-info-front ch-img-2"><br/><br/>PROFESORES</div>
                                    <div class="ch-info-back">
                                        <h3>INVENTARIO</h3>
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-1">
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="ch-info-front ch-img-1"><br/>LÁMPARAS</div>
                                    <div class="ch-info-back">
                                        <h3>INVENTARIO</h3>
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-2">
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="ch-info-front ch-img-2"><br/><br/>SOFTWARE</div>
                                    <div class="ch-info-back">
                                        <h3>INVENTARIO</h3>
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-1">
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="ch-info-front ch-img-1"></div>
                                    <div class="ch-info-back">
                                        <h3>INVENTARIO</h3>
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-2">
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="ch-info-front ch-img-2"></div>
                                    <div class="ch-info-back">
                                        <h3>INVENTARIO</h3>
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-1">
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="ch-info-front ch-img-1"></div>
                                    <div class="ch-info-back">
                                        <h3>INVENTARIO</h3>
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-2">
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="ch-info-front ch-img-2"></div>
                                    <div class="ch-info-back">
                                        <h3>INVENTARIO</h3>
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-1">
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="ch-info-front ch-img-1"></div>
                                    <div class="ch-info-back">
                                        <h3>INVENTARIO</h3>
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </li>                    
                </ul>
            </div>
            
        </body>
    </html>
</f:view>
