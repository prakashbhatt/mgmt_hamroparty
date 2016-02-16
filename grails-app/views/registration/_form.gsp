<%@ page import="org.hamroparty.registration.Registration" %>



<g:if test="${session.user != null && session.user.role=="admin"}">
    <div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'sn', 'error')} ">
        <label for="sn">
            <g:message code="registration.sn.label" default="Sn" />

        </label>
        <g:textField name="sn" value="${registrationInstance?.sn}"/>
    </div>
</g:if>

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

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'permanentAddress', 'error')} required">
    <label for="permanentAddress">
        <g:message code="registration.permanentAddress.label" default="Permanent Address" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="permanentAddress" required="" value="${registrationInstance?.permanentAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'temporaryAddress', 'error')} required">
    <label for="temporaryAddress">
        <g:message code="registration.temporaryAddress.label" default="Temporary Address" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="temporaryAddress" required="" value="${registrationInstance?.temporaryAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'zone', 'error')} required">
    <label for="zone">
        <g:message code="registration.zone.label" default="Zone" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="zone" required="" value="${registrationInstance?.zone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'state', 'error')} required">
    <label for="state">
        <g:message code="registration.state.label" default="State" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="state" required="" value="${registrationInstance?.state}"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'district', 'error')} required">
    <label for="district">
        <g:message code="registration.district.label" default="District" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="district" maxlength="50" required="" value="${registrationInstance?.district}"/>
</div>--}%

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'district', 'error')} required">
    <label for="district">
        <g:message code="registration.gender.label" default="District" />
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

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'gender', 'error')} required">
    <label for="gender">
        <g:message code="registration.gender.label" default="Gender" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="gender" from="${registrationInstance.constraints.gender.inList}" required="" value="${registrationInstance?.gender}" valueMessagePrefix="registration.gender"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'dateOfBirth', 'error')} required">
    <label for="dateOfBirth">
        <g:message code="registration.dateOfBirth.label" default="Date Of Birth" />
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="dateOfBirth" precision="day"  value="${registrationInstance?.dateOfBirth}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'occupation', 'error')} ">
    <label for="occupation">
        <g:message code="registration.occupation.label" default="Occupation" />

    </label>
    <g:textField name="occupation" value="${registrationInstance?.occupation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'registrationDate', 'error')} required">
    <label for="registrationDate">
        <g:message code="registration.registrationDate.label" default="Registration Date" />
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="registrationDate" precision="day"  value="${registrationInstance?.registrationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'emailAddress', 'error')} ">
    <label for="emailAddress">
        <g:message code="registration.emailAddress.label" default="Email Address" />

    </label>
    <g:field type="email" name="emailAddress" value="${registrationInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'contractNo', 'error')} ">
    <label for="contractNo">
        <g:message code="registration.contractNo.label" default="Contact No" />

    </label>
    <g:textField name="contractNo" maxlength="10" value="${registrationInstance?.contractNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'parentFirstName', 'error')} ">
    <label for="parentFirstName">
        <g:message code="registration.parentFirstName.label" default="Parent First Name" />

    </label>
    <g:textField name="parentFirstName" value="${registrationInstance?.parentFirstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'parentMiddleName', 'error')} ">
    <label for="parentMiddleName">
        <g:message code="registration.parentMiddleName.label" default="Parent Middle Name" />

    </label>
    <g:textField name="parentMiddleName" value="${registrationInstance?.parentMiddleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'parentLastName', 'error')} ">
    <label for="parentLastName">
        <g:message code="registration.parentLastName.label" default="Parent Last Name" />

    </label>
    <g:textField name="parentLastName" value="${registrationInstance?.parentLastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'parentGender', 'error')} required">
    <label for="parentGender">
        <g:message code="registration.parentGender.label" default="Parent Gender" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="parentGender" from="${registrationInstance.constraints.parentGender.inList}" required="" value="${registrationInstance?.parentGender}" valueMessagePrefix="registration.parentGender"/>
</div>

