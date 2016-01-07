<%@ page import="org.hamroparty.user.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">

</div>

<div id="show-user" class="content scaffold-show login" role="main">


    <h1>Please Login</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <g:form id="login" action="login" controller="user" method="post">
        <div class="loginbox">
            <ul>
                <li><p>User Name :</p><input type="text" name="name" id="name"></li>
                <li><p>Password :</p><input type="password" name="password" id="password"></li>
            </ul>

            <div class="loginFooter">
                <g:submitButton name="btn" id="btn" value="Login"></g:submitButton>
            </div>
            <div class="loginFooter">
                Please click  <g:link action="registration" controller="registration"><b>Membership Registration</b></g:link> for membership
            </div>
        </div>
    </g:form>

</div>
</body>
</html>
