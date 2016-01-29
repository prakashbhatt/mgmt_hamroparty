
<%@ page import="org.hamroparty.payrole.PayRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payRole.label', default: 'PayRole')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-payRole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
                <li><g:link controller="user" action="home"><g:message code="default.home.label"/></g:link></li>
                <li><g:link controller="user" action="logout">Logout</g:link></li>
				<li><g:link class="list" action="list">Payment List</g:link></li>
				<li><g:link class="create" action="create">Add-Fee</g:link></li>
			</ul>
		</div>
		<div id="show-payRole" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list payRole">
			
				<g:if test="${payRoleInstance?.paidAmount}">
				<li class="fieldcontain">
					<span id="paidAmount-label" class="property-label"><g:message code="payRole.paidAmount.label" default="Paid Amount" /></span>
					
						<span class="property-value" aria-labelledby="paidAmount-label"><g:fieldValue bean="${payRoleInstance}" field="paidAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payRoleInstance?.paidDate}">
				<li class="fieldcontain">
					<span id="paidDate-label" class="property-label"><g:message code="payRole.paidDate.label" default="Paid Date" /></span>
					
						<span class="property-value" aria-labelledby="paidDate-label"><g:formatDate date="${payRoleInstance?.paidDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${payRoleInstance?.registration}">
				<li class="fieldcontain">
					<span id="registration-label" class="property-label"><g:message code="payRole.registration.label" default="Registration" /></span>
					
						<span class="property-value" aria-labelledby="registration-label"><g:link controller="registration" action="show" id="${payRoleInstance?.registration?.id}">${payRoleInstance?.registration?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${payRoleInstance?.id}" />
					<g:link class="edit" action="edit" id="${payRoleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
