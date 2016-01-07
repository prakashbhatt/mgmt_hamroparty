
<%@ page import="org.hamroparty.registration.Registration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registration.label', default: 'Registration')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registration" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
                <li><g:link controller="user" action="home"><g:message code="default.home.label"/></g:link></li>
                <li><g:link controller="user" action="logout">Logout</g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registration" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registration">
			
				<g:if test="${registrationInstance?.sn}">
				<li class="fieldcontain">
					<span id="sn-label" class="property-label"><g:message code="registration.sn.label" default="Sn" /></span>
					
						<span class="property-value" aria-labelledby="sn-label"><g:fieldValue bean="${registrationInstance}" field="sn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="registration.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${registrationInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="registration.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${registrationInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="registration.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${registrationInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.permanentAddress}">
				<li class="fieldcontain">
					<span id="permanentAddress-label" class="property-label"><g:message code="registration.permanentAddress.label" default="Permanent Address" /></span>
					
						<span class="property-value" aria-labelledby="permanentAddress-label"><g:fieldValue bean="${registrationInstance}" field="permanentAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.temporaryAddress}">
				<li class="fieldcontain">
					<span id="temporaryAddress-label" class="property-label"><g:message code="registration.temporaryAddress.label" default="Temporary Address" /></span>
					
						<span class="property-value" aria-labelledby="temporaryAddress-label"><g:fieldValue bean="${registrationInstance}" field="temporaryAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.zone}">
				<li class="fieldcontain">
					<span id="zone-label" class="property-label"><g:message code="registration.zone.label" default="Zone" /></span>
					
						<span class="property-value" aria-labelledby="zone-label"><g:fieldValue bean="${registrationInstance}" field="zone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="registration.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${registrationInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="registration.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:fieldValue bean="${registrationInstance}" field="district"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.vdcMunicipality}">
				<li class="fieldcontain">
					<span id="vdcMunicipality-label" class="property-label"><g:message code="registration.vdcMunicipality.label" default="Vdc Municipality" /></span>
					
						<span class="property-value" aria-labelledby="vdcMunicipality-label"><g:fieldValue bean="${registrationInstance}" field="vdcMunicipality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.wardNo}">
				<li class="fieldcontain">
					<span id="wardNo-label" class="property-label"><g:message code="registration.wardNo.label" default="Ward No" /></span>
					
						<span class="property-value" aria-labelledby="wardNo-label"><g:fieldValue bean="${registrationInstance}" field="wardNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="registration.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${registrationInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="registration.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${registrationInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.occupation}">
				<li class="fieldcontain">
					<span id="occupation-label" class="property-label"><g:message code="registration.occupation.label" default="Occupation" /></span>
					
						<span class="property-value" aria-labelledby="occupation-label"><g:fieldValue bean="${registrationInstance}" field="occupation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.registrationDate}">
				<li class="fieldcontain">
					<span id="registrationDate-label" class="property-label"><g:message code="registration.registrationDate.label" default="Registration Date" /></span>
					
						<span class="property-value" aria-labelledby="registrationDate-label"><g:formatDate date="${registrationInstance?.registrationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="registration.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${registrationInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.contractNo}">
				<li class="fieldcontain">
					<span id="contractNo-label" class="property-label"><g:message code="registration.contractNo.label" default="Contract No" /></span>
					
						<span class="property-value" aria-labelledby="contractNo-label"><g:fieldValue bean="${registrationInstance}" field="contractNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.parentFirstName}">
				<li class="fieldcontain">
					<span id="parentFirstName-label" class="property-label"><g:message code="registration.parentFirstName.label" default="Parent First Name" /></span>
					
						<span class="property-value" aria-labelledby="parentFirstName-label"><g:fieldValue bean="${registrationInstance}" field="parentFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.parentMiddleName}">
				<li class="fieldcontain">
					<span id="parentMiddleName-label" class="property-label"><g:message code="registration.parentMiddleName.label" default="Parent Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="parentMiddleName-label"><g:fieldValue bean="${registrationInstance}" field="parentMiddleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.parentLastName}">
				<li class="fieldcontain">
					<span id="parentLastName-label" class="property-label"><g:message code="registration.parentLastName.label" default="Parent Last Name" /></span>
					
						<span class="property-value" aria-labelledby="parentLastName-label"><g:fieldValue bean="${registrationInstance}" field="parentLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.parentGender}">
				<li class="fieldcontain">
					<span id="parentGender-label" class="property-label"><g:message code="registration.parentGender.label" default="Parent Gender" /></span>
					
						<span class="property-value" aria-labelledby="parentGender-label"><g:fieldValue bean="${registrationInstance}" field="parentGender"/></span>
					
				</li>
				</g:if>

            %{--<g:if test="${registrationInstance?.acceptedBy}">
            <li class="fieldcontain">
                <span id="acceptedBy-label" class="property-label"><g:message code="registration.acceptedBy.label" default="Accepted By" /></span>

                    <span class="property-value" aria-labelledby="acceptedBy-label"><g:fieldValue bean="${registrationInstance}" field="acceptedBy"/>an>

            </li>
            </g:if>

            %{--<g:if test="${registrationInstance?.rejectedBy}">
            <li class="fieldcontain">
                <span id="rejectedBy-label" class="property-label"><g:message code="registration.rejectedBy.label" default="Rejected By" /></span>

                    <span class="property-value" aria-labelledby="rejectedBy-label"><g:fieldValue bean="${registrationInstance}" field="rejectedBy"/></span>

            </li>
            </g:if>

            <g:if test="${registrationInstance?.acceptMember}">
            <li class="fieldcontain">
                <span id="acceptMember-label" class="property-label"><g:message code="registration.acceptMember.label" default="Accept Member" /></span>

                    <span class="property-value" aria-labelledby="acceptMember-label"><g:formatBoolean boolean="${registrationInstance?.acceptMember}" /></span>

            </li>
            </g:if>--}%
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${registrationInstance?.id}" />
					<g:link class="edit" action="edit" id="${registrationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
