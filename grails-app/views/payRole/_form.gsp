<%@ page import="org.hamroparty.payrole.PayRole" %>



<div class="fieldcontain ${hasErrors(bean: payRoleInstance, field: 'paidAmount', 'error')} required">
	<label for="paidAmount">
		<g:message code="payRole.paidAmount.label" default="Paid Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paidAmount" type="number" value="${payRoleInstance.paidAmount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payRoleInstance, field: 'paidDate', 'error')} required">
	<label for="paidDate">
		<g:message code="payRole.paidDate.label" default="Paid Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paidDate" precision="day"  value="${payRoleInstance?.paidDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: payRoleInstance, field: 'registration', 'error')} required">
	<label for="registration">
		<g:message code="payRole.registration.label" default="Registration" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="registration" name="registration.id" from="${org.hamroparty.registration.Registration.list()}" optionKey="id" required="" value="${payRoleInstance?.registration?.id}" class="many-to-one"/>
</div>

