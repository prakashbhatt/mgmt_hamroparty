
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
                </li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <li><g:link controller="user" action="logout">Logout</g:link></li>
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
					
						<g:sortableColumn property="memberId" title="${message(code: 'registration.memberId.label', default: 'Member ID')}" />
						<g:sortableColumn property="firstName" title="${message(code: 'registration.firstName.label', default: 'First Name')}" />

						<g:sortableColumn property="middleName" title="${message(code: 'registration.middleName.label', default: 'Middle Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'registration.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="zone" title="${message(code: 'registration.zone.label', default: 'Zone')}" />
					
						<g:sortableColumn property="district" title="${message(code: 'registration.district.label', default: 'District')}" />
					
						<g:sortableColumn property="vdcMunicipality" title="${message(code: 'registration.vdcMunicipality.label', default: 'Vdc Municipality')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registrationInstanceList}" status="i" var="registrationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registrationInstance.id}">${fieldValue(bean: registrationInstance, field: "memberId")}</g:link></td>
					
						<td>${fieldValue(bean: registrationInstance, field: "firstName")}</td>
						<td>${fieldValue(bean: registrationInstance, field: "middleName")}</td>

						<td>${fieldValue(bean: registrationInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "zone")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "district")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "vdcMunicipality")}</td>
					
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
