<%@ page import="core.Contact" %>



<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'adresse', 'error')} required">
	<label for="adresse">
		<g:message code="contact.adresse.label" default="Adresse" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adresse" required="" value="${contactInstance?.adresse}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="contact.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${contactInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'fixe', 'error')} required">
	<label for="fixe">
		<g:message code="contact.fixe.label" default="Fixe" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fixe" required="" value="${contactInstance?.fixe}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="contact.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${contactInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'portable', 'error')} required">
	<label for="portable">
		<g:message code="contact.portable.label" default="Portable" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="portable" required="" value="${contactInstance?.portable}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'prenom', 'error')} required">
	<label for="prenom">
		<g:message code="contact.prenom.label" default="Prenom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="prenom" required="" value="${contactInstance?.prenom}"/>

</div>

