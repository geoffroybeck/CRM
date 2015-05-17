
<%@ page import="core.RendezVous" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rendezVous.label', default: 'RendezVous')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rendezVous" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-rendezVous" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rendezVous">
			
				<g:if test="${rendezVousInstance?.contact}">
				<li class="fieldcontain">
					<span id="contact-label" class="property-label"><g:message code="rendezVous.contact.label" default="Contact" /></span>
					
						<span class="property-value" aria-labelledby="contact-label"><g:link controller="contact" action="show" id="${rendezVousInstance?.contact?.id}">${rendezVousInstance?.contact?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${rendezVousInstance?.conclusion}">
				<li class="fieldcontain">
					<span id="conclusion-label" class="property-label"><g:message code="rendezVous.conclusion.label" default="Conclusion" /></span>
					
						<span class="property-value" aria-labelledby="conclusion-label"><g:fieldValue bean="${rendezVousInstance}" field="conclusion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rendezVousInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="rendezVous.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${rendezVousInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${rendezVousInstance?.prospect}">
				<li class="fieldcontain">
					<span id="prospect-label" class="property-label"><g:message code="rendezVous.prospect.label" default="Prospect" /></span>
					
						<span class="property-value" aria-labelledby="prospect-label"><g:link controller="prospect" action="show" id="${rendezVousInstance?.prospect?.id}">${rendezVousInstance?.prospect?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${rendezVousInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="rendezVous.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${rendezVousInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:rendezVousInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${rendezVousInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
