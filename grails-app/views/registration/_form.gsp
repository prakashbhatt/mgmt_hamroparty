<%@ page import="org.hamroparty.registration.Registration" %>



<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'firstName', 'error')} required">
    <label for="firstName">
        <g:message code="registration.firstName.label" default="First Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="firstName" maxlength="50" required="" value="${registrationInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'middleName', 'error')} ">
    <label for="middleName">
        <g:message code="registration.middleName.label" default="Middle Name" />

    </label>
    <g:textField name="middleName" value="${registrationInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'lastName', 'error')} required">
    <label for="lastName">
        <g:message code="registration.lastName.label" default="Last Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="lastName" maxlength="50" required="" value="${registrationInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'zone', 'error')} required">
    <label for="zone">
        <g:message code="registration.zone.label" default="Zone" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="zone" required="" value="${registrationInstance?.zone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'district', 'error')} required">
    <label for="district">
        <g:message code="registration.district.label" default="District" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="district" from="${registrationInstance.constraints.district.inList}" required="" value="${registrationInstance?.district}" valueMessagePrefix="registration.district"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'vdcMunicipality', 'error')} required">
    <label for="vdcMunicipality">
        <g:message code="registration.vdcMunicipality.label" default="Vdc Municipality" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="vdcMunicipality" maxlength="50" required="" value="${registrationInstance?.vdcMunicipality}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'wardNo', 'error')} required">
    <label for="wardNo">
        <g:message code="registration.wardNo.label" default="Ward No" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="wardNo" maxlength="50" required="" value="${registrationInstance?.wardNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'streetTole', 'error')} required">
    <label for="streetTole">
        <g:message code="registration.streetTole.label" default="Street Tole" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="streetTole" maxlength="150" required="" value="${registrationInstance?.streetTole}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'dateOfBirth', 'error')} required">
    <label for="dateOfBirth">
        <g:message code="registration.dateOfBirth.label" default="Date Of Birth" />
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="dateOfBirth" precision="day"  value="${registrationInstance?.dateOfBirth}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'gender', 'error')} required">
    <label for="gender">
        <g:message code="registration.gender.label" default="Gender" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="gender" from="${registrationInstance.constraints.gender.inList}" required="" value="${registrationInstance?.gender}" valueMessagePrefix="registration.gender"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'applicationDate', 'error')} ">
    <label for="applicationDate">
        <g:message code="registration.applicationDate.label" default="Application Date" />

    </label>
    <g:datePicker name="applicationDate" precision="day"  value="${registrationInstance?.applicationDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'registrationDate', 'error')} ">
    <label for="registrationDate">
        <g:message code="registration.registrationDate.label" default="Registration Date" />

    </label>
    <g:datePicker name="registrationDate" precision="day"  value="${registrationInstance?.registrationDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'educationDetails', 'error')} required">
    <label for="educationDetails">
        <g:message code="registration.educationDetails.label" default="Education Details" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="educationDetails" from="${registrationInstance.constraints.educationDetails.inList}" required="" value="${registrationInstance?.educationDetails}" valueMessagePrefix="registration.educationDetails"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'occupation', 'error')} required">
    <label for="occupation">
        <g:message code="registration.occupation.label" default="Occupation" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="occupation" maxlength="150" required="" value="${registrationInstance?.occupation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'image', 'error')} ">
    <label for="image">
        <g:message code="registration.image.label" default="Image" />

    </label>
    <g:if test="${!registrationInstance?.image}">
        <input type="file" id="image" name="image"/>
    </g:if>
</div>



<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'fatherName', 'error')} required">
    <label for="fatherName">
        <g:message code="registration.fatherName.label" default="Father Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="fatherName" maxlength="150" required="" value="${registrationInstance?.fatherName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'motherName', 'error')} required">
    <label for="motherName">
        <g:message code="registration.motherName.label" default="Mother Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="motherName" maxlength="150" required="" value="${registrationInstance?.motherName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'grandFatherName', 'error')} required">
    <label for="grandFatherName">
        <g:message code="registration.grandFatherName.label" default="Grand Father Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="grandFatherName" maxlength="150" required="" value="${registrationInstance?.grandFatherName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'grandMotherName', 'error')} required">
    <label for="grandMotherName">
        <g:message code="registration.grandMotherName.label" default="Grand Mother Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="grandMotherName" maxlength="150" required="" value="${registrationInstance?.grandMotherName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'contractNo', 'error')} required">
    <label for="contractNo">
        <g:message code="registration.contractNo.label" default="Contract No" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="contractNo" maxlength="10" required="" value="${registrationInstance?.contractNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'emailAddress', 'error')} ">
    <label for="emailAddress">
        <g:message code="registration.emailAddress.label" default="Email Address" />

    </label>
    <g:field type="email" name="emailAddress" value="${registrationInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'howDidYouHearAboutUs', 'error')} ">
    <label for="howDidYouHearAboutUs">
        <g:message code="registration.howDidYouHearAboutUs.label" default="How Did You Hear About Us" />

    </label>
    <g:select name="howDidYouHearAboutUs" from="${registrationInstance.constraints.howDidYouHearAboutUs.inList}" value="${registrationInstance?.howDidYouHearAboutUs}" valueMessagePrefix="registration.howDidYouHearAboutUs" noSelection="['': '']"/>
</div>
%{--

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'memberId', 'error')} ">
	<label for="memberId">
		<g:message code="registration.memberId.label" default="Member Id" />
		
	</label>
	<g:textField name="memberId" value="${registrationInstance?.memberId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'memberStatus', 'error')} ">
	<label for="memberStatus">
		<g:message code="registration.memberStatus.label" default="Member Status" />
		
	</label>
	<g:textField name="memberStatus" value="${registrationInstance?.memberStatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'acceptedBy', 'error')} ">
	<label for="acceptedBy">
		<g:message code="registration.acceptedBy.label" default="Accepted By" />
		
	</label>
	<g:textField name="acceptedBy" value="${registrationInstance?.acceptedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'rejectedBy', 'error')} ">
	<label for="rejectedBy">
		<g:message code="registration.rejectedBy.label" default="Rejected By" />
		
	</label>
	<g:textField name="rejectedBy" value="${registrationInstance?.rejectedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'sequence', 'error')} required">
	<label for="sequence">
		<g:message code="registration.sequence.label" default="Sequence" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sequence" type="number" value="${registrationInstance.sequence}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 's_field1', 'error')} ">
	<label for="s_field1">
		<g:message code="registration.s_field1.label" default="Sfield1" />
		
	</label>
	<g:textField name="s_field1" value="${registrationInstance?.s_field1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 's_field2', 'error')} ">
	<label for="s_field2">
		<g:message code="registration.s_field2.label" default="Sfield2" />
		
	</label>
	<g:textField name="s_field2" value="${registrationInstance?.s_field2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 's_field3', 'error')} ">
	<label for="s_field3">
		<g:message code="registration.s_field3.label" default="Sfield3" />
		
	</label>
	<g:textField name="s_field3" value="${registrationInstance?.s_field3}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 's_field4', 'error')} ">
	<label for="s_field4">
		<g:message code="registration.s_field4.label" default="Sfield4" />
		
	</label>
	<g:textField name="s_field4" value="${registrationInstance?.s_field4}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'i_field1', 'error')} required">
	<label for="i_field1">
		<g:message code="registration.i_field1.label" default="Ifield1" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="i_field1" type="number" value="${registrationInstance.i_field1}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'i_field2', 'error')} required">
	<label for="i_field2">
		<g:message code="registration.i_field2.label" default="Ifield2" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="i_field2" type="number" value="${registrationInstance.i_field2}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'i_field3', 'error')} required">
	<label for="i_field3">
		<g:message code="registration.i_field3.label" default="Ifield3" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="i_field3" type="number" value="${registrationInstance.i_field3}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'i_field4', 'error')} required">
	<label for="i_field4">
		<g:message code="registration.i_field4.label" default="Ifield4" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="i_field4" type="number" value="${registrationInstance.i_field4}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'df1', 'error')} ">
	<label for="df1">
		<g:message code="registration.df1.label" default="Df1" />
		
	</label>
	<g:datePicker name="df1" precision="day"  value="${registrationInstance?.df1}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'df2', 'error')} ">
	<label for="df2">
		<g:message code="registration.df2.label" default="Df2" />
		
	</label>
	<g:datePicker name="df2" precision="day"  value="${registrationInstance?.df2}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'df3', 'error')} ">
	<label for="df3">
		<g:message code="registration.df3.label" default="Df3" />
		
	</label>
	<g:datePicker name="df3" precision="day"  value="${registrationInstance?.df3}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'df4', 'error')} ">
	<label for="df4">
		<g:message code="registration.df4.label" default="Df4" />
		
	</label>
	<g:datePicker name="df4" precision="day"  value="${registrationInstance?.df4}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'acceptMember', 'error')} ">
	<label for="acceptMember">
		<g:message code="registration.acceptMember.label" default="Accept Member" />
		
	</label>
	<g:checkBox name="acceptMember" value="${registrationInstance?.acceptMember}" />
</div>
--}%

