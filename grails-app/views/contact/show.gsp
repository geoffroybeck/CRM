
<%@ page import="core.Contact" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contact" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contact">
			
				<g:if test="${contactInstance?.adresse}">
				<li class="fieldcontain">
					<span id="adresse-label" class="property-label"><g:message code="contact.adresse.label" default="Adresse" /></span>
					
						<span class="property-value" aria-labelledby="adresse-label"><g:fieldValue bean="${contactInstance}" field="adresse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="contact.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${contactInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.fixe}">
				<li class="fieldcontain">
					<span id="fixe-label" class="property-label"><g:message code="contact.fixe.label" default="Fixe" /></span>
					
						<span class="property-value" aria-labelledby="fixe-label"><g:fieldValue bean="${contactInstance}" field="fixe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="contact.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${contactInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.portable}">
				<li class="fieldcontain">
					<span id="portable-label" class="property-label"><g:message code="contact.portable.label" default="Portable" /></span>
					
						<span class="property-value" aria-labelledby="portable-label"><g:fieldValue bean="${contactInstance}" field="portable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.prenom}">
				<li class="fieldcontain">
					<span id="prenom-label" class="property-label"><g:message code="contact.prenom.label" default="Prenom" /></span>
					
						<span class="property-value" aria-labelledby="prenom-label"><g:fieldValue bean="${contactInstance}" field="prenom"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:contactInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${contactInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
