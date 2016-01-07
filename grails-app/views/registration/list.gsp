
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
                <li><g:link controller="user" action="home"><g:message code="default.home.label"/></g:link></li>
                <li><g:link controller="user" action="logout">Logout</g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registration" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="sn" title="${message(code: 'registration.sn.label', default: 'Sn')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'registration.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="middleName" title="${message(code: 'registration.middleName.label', default: 'Middle Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'registration.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="permanentAddress" title="${message(code: 'registration.permanentAddress.label', default: 'Permanent Address')}" />
					
						<g:sortableColumn property="temporaryAddress" title="${message(code: 'registration.temporaryAddress.label', default: 'Temporary Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registrationInstanceList}" status="i" var="registrationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registrationInstance.id}">${fieldValue(bean: registrationInstance, field: "sn")}</g:link></td>
					
						<td>${fieldValue(bean: registrationInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "middleName")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "permanentAddress")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "temporaryAddress")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registrationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
