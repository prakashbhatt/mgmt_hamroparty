
<%@ page import="org.hamroparty.registration.Registration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registration.label', default: 'Registration')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registration" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="user" action="home"><g:message code="default.home.label"/></g:link></li>
                <li><g:link controller="user" action="logout">Logout</g:link></li>
            </ul>
		</div>
		<div>
			<h1>Hamro Party Members</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

			<g:each in="${gallery}" status="i" var="image">
				<img src="${resource(dir: 'images/hamroparty-members', file: "${image}")}" width="150" height="150"/>
				<g:link action="download" controller="user" params="[name:image]"> Download (${image}) &#10026</g:link>

			</g:each>
%{--			<div class="pagination">--}%
%{--				<g:paginate total="${registrationInstanceTotal}" />--}%
%{--			</div>--}%
		</div>
	</body>
</html>
