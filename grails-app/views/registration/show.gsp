
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
                <li><g:link class="home" controller="user" action="home"><g:message code="default.home.label"/></g:link></li>
                <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <li><g:link controller="user" action="logout">Logout</g:link></li>
            </ul>
		</div>
		<div id="show-registration" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registration">

            <g:if test="${registrationInstance?.memberId}">
                <li class="fieldcontain">
                    <span id="memberId-label" class="property-label"><g:message code="registration.memberId.label" default="Member ID" /></span>

                    <span class="property-value" aria-labelledby="memberId-label"><g:fieldValue bean="${registrationInstance}" field="memberId"/></span>

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
			
				<g:if test="${registrationInstance?.zone}">
				<li class="fieldcontain">
					<span id="zone-label" class="property-label"><g:message code="registration.zone.label" default="Zone" /></span>
					
						<span class="property-value" aria-labelledby="zone-label"><g:fieldValue bean="${registrationInstance}" field="zone"/></span>
					
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
			
				<g:if test="${registrationInstance?.streetTole}">
				<li class="fieldcontain">
					<span id="streetTole-label" class="property-label"><g:message code="registration.streetTole.label" default="Street Tole" /></span>
					
						<span class="property-value" aria-labelledby="streetTole-label"><g:fieldValue bean="${registrationInstance}" field="streetTole"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="registration.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${registrationInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="registration.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${registrationInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.applicationDate}">
				<li class="fieldcontain">
					<span id="applicationDate-label" class="property-label"><g:message code="registration.applicationDate.label" default="Application Date" /></span>
					
						<span class="property-value" aria-labelledby="applicationDate-label"><g:formatDate date="${registrationInstance?.applicationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.registrationDate}">
				<li class="fieldcontain">
					<span id="registrationDate-label" class="property-label"><g:message code="registration.registrationDate.label" default="Registration Date" /></span>
					
						<span class="property-value" aria-labelledby="registrationDate-label"><g:formatDate date="${registrationInstance?.registrationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.educationDetails}">
				<li class="fieldcontain">
					<span id="educationDetails-label" class="property-label"><g:message code="registration.educationDetails.label" default="Education Details" /></span>
					
						<span class="property-value" aria-labelledby="educationDetails-label"><g:fieldValue bean="${registrationInstance}" field="educationDetails"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.occupation}">
				<li class="fieldcontain">
					<span id="occupation-label" class="property-label"><g:message code="registration.occupation.label" default="Occupation" /></span>
					
						<span class="property-value" aria-labelledby="occupation-label"><g:fieldValue bean="${registrationInstance}" field="occupation"/></span>
					
				</li>
				</g:if>

				<g:if test="${registrationInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label">
                        <g:message code="registration.image.label" default="Image" /></span>
                    <span>
                        <img src="${createLink(controller:'registration', action:'image', id: registrationInstance.id)}" height="100px" width="100px"/>
                    </span>
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.fatherName}">
				<li class="fieldcontain">
					<span id="fatherName-label" class="property-label"><g:message code="registration.fatherName.label" default="Father Name" /></span>
					
						<span class="property-value" aria-labelledby="fatherName-label"><g:fieldValue bean="${registrationInstance}" field="fatherName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.motherName}">
				<li class="fieldcontain">
					<span id="motherName-label" class="property-label"><g:message code="registration.motherName.label" default="Mother Name" /></span>
					
						<span class="property-value" aria-labelledby="motherName-label"><g:fieldValue bean="${registrationInstance}" field="motherName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.grandFatherName}">
				<li class="fieldcontain">
					<span id="grandFatherName-label" class="property-label"><g:message code="registration.grandFatherName.label" default="Grand Father Name" /></span>
					
						<span class="property-value" aria-labelledby="grandFatherName-label"><g:fieldValue bean="${registrationInstance}" field="grandFatherName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.grandMotherName}">
				<li class="fieldcontain">
					<span id="grandMotherName-label" class="property-label"><g:message code="registration.grandMotherName.label" default="Grand Mother Name" /></span>
					
						<span class="property-value" aria-labelledby="grandMotherName-label"><g:fieldValue bean="${registrationInstance}" field="grandMotherName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.contractNo}">
				<li class="fieldcontain">
					<span id="contractNo-label" class="property-label"><g:message code="registration.contractNo.label" default="Contract No" /></span>
					
						<span class="property-value" aria-labelledby="contractNo-label"><g:fieldValue bean="${registrationInstance}" field="contractNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="registration.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${registrationInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.howDidYouHearAboutUs}">
				<li class="fieldcontain">
					<span id="howDidYouHearAboutUs-label" class="property-label"><g:message code="registration.howDidYouHearAboutUs.label" default="How Did You Hear About Us" /></span>
					
						<span class="property-value" aria-labelledby="howDidYouHearAboutUs-label"><g:fieldValue bean="${registrationInstance}" field="howDidYouHearAboutUs"/></span>
					
				</li>
				</g:if>


			%{--
				<g:if test="${registrationInstance?.memberStatus}">
				<li class="fieldcontain">
					<span id="memberStatus-label" class="property-label"><g:message code="registration.memberStatus.label" default="Member Status" /></span>
					
						<span class="property-value" aria-labelledby="memberStatus-label"><g:fieldValue bean="${registrationInstance}" field="memberStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.acceptedBy}">
				<li class="fieldcontain">
					<span id="acceptedBy-label" class="property-label"><g:message code="registration.acceptedBy.label" default="Accepted By" /></span>
					
						<span class="property-value" aria-labelledby="acceptedBy-label"><g:fieldValue bean="${registrationInstance}" field="acceptedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.rejectedBy}">
				<li class="fieldcontain">
					<span id="rejectedBy-label" class="property-label"><g:message code="registration.rejectedBy.label" default="Rejected By" /></span>
					
						<span class="property-value" aria-labelledby="rejectedBy-label"><g:fieldValue bean="${registrationInstance}" field="rejectedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.sequence}">
				<li class="fieldcontain">
					<span id="sequence-label" class="property-label"><g:message code="registration.sequence.label" default="Sequence" /></span>
					
						<span class="property-value" aria-labelledby="sequence-label"><g:fieldValue bean="${registrationInstance}" field="sequence"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.s_field1}">
				<li class="fieldcontain">
					<span id="s_field1-label" class="property-label"><g:message code="registration.s_field1.label" default="Sfield1" /></span>
					
						<span class="property-value" aria-labelledby="s_field1-label"><g:fieldValue bean="${registrationInstance}" field="s_field1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.s_field2}">
				<li class="fieldcontain">
					<span id="s_field2-label" class="property-label"><g:message code="registration.s_field2.label" default="Sfield2" /></span>
					
						<span class="property-value" aria-labelledby="s_field2-label"><g:fieldValue bean="${registrationInstance}" field="s_field2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.s_field3}">
				<li class="fieldcontain">
					<span id="s_field3-label" class="property-label"><g:message code="registration.s_field3.label" default="Sfield3" /></span>
					
						<span class="property-value" aria-labelledby="s_field3-label"><g:fieldValue bean="${registrationInstance}" field="s_field3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.s_field4}">
				<li class="fieldcontain">
					<span id="s_field4-label" class="property-label"><g:message code="registration.s_field4.label" default="Sfield4" /></span>
					
						<span class="property-value" aria-labelledby="s_field4-label"><g:fieldValue bean="${registrationInstance}" field="s_field4"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.i_field1}">
				<li class="fieldcontain">
					<span id="i_field1-label" class="property-label"><g:message code="registration.i_field1.label" default="Ifield1" /></span>
					
						<span class="property-value" aria-labelledby="i_field1-label"><g:fieldValue bean="${registrationInstance}" field="i_field1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.i_field2}">
				<li class="fieldcontain">
					<span id="i_field2-label" class="property-label"><g:message code="registration.i_field2.label" default="Ifield2" /></span>
					
						<span class="property-value" aria-labelledby="i_field2-label"><g:fieldValue bean="${registrationInstance}" field="i_field2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.i_field3}">
				<li class="fieldcontain">
					<span id="i_field3-label" class="property-label"><g:message code="registration.i_field3.label" default="Ifield3" /></span>
					
						<span class="property-value" aria-labelledby="i_field3-label"><g:fieldValue bean="${registrationInstance}" field="i_field3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.i_field4}">
				<li class="fieldcontain">
					<span id="i_field4-label" class="property-label"><g:message code="registration.i_field4.label" default="Ifield4" /></span>
					
						<span class="property-value" aria-labelledby="i_field4-label"><g:fieldValue bean="${registrationInstance}" field="i_field4"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.df1}">
				<li class="fieldcontain">
					<span id="df1-label" class="property-label"><g:message code="registration.df1.label" default="Df1" /></span>
					
						<span class="property-value" aria-labelledby="df1-label"><g:formatDate date="${registrationInstance?.df1}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.df2}">
				<li class="fieldcontain">
					<span id="df2-label" class="property-label"><g:message code="registration.df2.label" default="Df2" /></span>
					
						<span class="property-value" aria-labelledby="df2-label"><g:formatDate date="${registrationInstance?.df2}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.df3}">
				<li class="fieldcontain">
					<span id="df3-label" class="property-label"><g:message code="registration.df3.label" default="Df3" /></span>
					
						<span class="property-value" aria-labelledby="df3-label"><g:formatDate date="${registrationInstance?.df3}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.df4}">
				<li class="fieldcontain">
					<span id="df4-label" class="property-label"><g:message code="registration.df4.label" default="Df4" /></span>
					
						<span class="property-value" aria-labelledby="df4-label"><g:formatDate date="${registrationInstance?.df4}" /></span>
					
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
