<%@ page import="core.RendezVous" %>



<div class="fieldcontain ${hasErrors(bean: rendezVousInstance, field: 'contact', 'error')} ">
	<label for="contact">
		<g:message code="rendezVous.contact.label" default="Contact" />
		
	</label>
	<g:select id="contact" name="contact.id" from="${core.Contact.list()}" optionKey="id" value="${rendezVousInstance?.contact?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rendezVousInstance, field: 'conclusion', 'error')} required">
	<label for="conclusion">
		<g:message code="rendezVous.conclusion.label" default="Conclusion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="conclusion" required="" value="${rendezVousInstance?.conclusion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rendezVousInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="rendezVous.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${rendezVousInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: rendezVousInstance, field: 'prospect', 'error')} required">
	<label for="prospect">
		<g:message code="rendezVous.prospect.label" default="Prospect" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="prospect" name="prospect.id" from="${core.Prospect.list()}" optionKey="id" required="" value="${rendezVousInstance?.prospect?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rendezVousInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="rendezVous.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${rendezVousInstance?.status}"/>

</div>

