
<%@ page import="org.hamroparty.payrole.PayRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payRole.label', default: 'PayRole')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-payRole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
                <li><g:link controller="user" action="home"><g:message code="default.home.label"/></g:link></li>
                <li><g:link controller="user" action="logout">Logout</g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-payRole" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
                        <th><g:message code="payRole.registration.label" default="Registration" /></th>
                        <g:sortableColumn property="paidDate" title="${message(code: 'payRole.paidDate.label', default: 'Paid Date')}" />
                        <g:sortableColumn property="paidAmount" title="${message(code: 'payRole.paidAmount.label', default: 'Paid Amount')}" />
					</tr>
				</thead>
				<tbody>
                <g:set var="totalAmount" value="${0}" />
				<g:each in="${payRoleInstanceList}" status="i" var="payRoleInstance">
                    <g:set var="totalAmount" value="${totalAmount + payRoleInstance.paidAmount}" />
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td>${fieldValue(bean: payRoleInstance, field: "registration")}</td>
                        <td><g:formatDate date="${payRoleInstance.paidDate}" /></td>
						<td><g:link action="show" id="${payRoleInstance.id}">${fieldValue(bean: payRoleInstance, field: "paidAmount")}</g:link></td>
					</tr>
				</g:each>

                <tr style="background-color: #97D0E8">
                    <td >Total Amount:</td><td></td><td>${totalAmount}</td>
                </tr>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${payRoleInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
