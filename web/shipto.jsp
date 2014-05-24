<%-- 
    Document   : person
    Created on : 24-May-2014, 11:09:01
    Author     : Dick
--%>

<%@page import="nl.ShipTo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sl" uri="/WEB-INF/struts-logic.tld" %>
<%@taglib prefix="b" uri="/WEB-INF/struts-bean.tld" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #firstonly {
                background-color: #eee;
            }

            #sap_stuts_interaction {
                background-color: #ddd;
            }
        </style>
    </head>
    <body>
        <h1>Take first item from array</h1>

        <sl:iterate id="player" name="shiptos" type="nl.ShipTo">
            <h2><b:write name="player" property="name"></b:write></h2>
            <h3><b:write name="player" property="city"></b:write></h3>
                <br>
                <br>
        </sl:iterate>
        <div id="firstonly">
            <sl:iterate id="player" name="shiptos" type="nl.ShipTo" length="1">
                <h2><b:write name="player" property="name"></b:write></h2>
                <h3><b:write name="player" property="city"></b:write></h3>
                    <br>
                    <br>
            </sl:iterate>
        </div>
        <div id="sap_stuts_interaction"> 
             <% ShipTo[] a= (ShipTo[]) request.getAttribute("shiptos"); %>
            
           
            <sl:iterate id="speler" collection="<%=request.getAttribute("shiptos")%>"  type="nl.ShipTo" length="1">
                <h2><b:write name="speler" property="name"></b:write></h2>
                <h3><b:write name="speler" property="city"></b:write></h3>
                    <br>
                    <br>
            </sl:iterate>
        </div>
    </body>
</html>
