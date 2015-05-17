
<%@ page import="core.RendezVous" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rendezVous.label', default: 'RendezVous')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-rendezVous" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-rendezVous" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="rendezVous.contact.label" default="Contact" /></th>
					
						<g:sortableColumn property="conclusion" title="${message(code: 'rendezVous.conclusion.label', default: 'Conclusion')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'rendezVous.date.label', default: 'Date')}" />
					
						<th><g:message code="rendezVous.prospect.label" default="Prospect" /></th>
					
						<g:sortableColumn property="status" title="${message(code: 'rendezVous.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${rendezVousInstanceList}" status="i" var="rendezVousInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${rendezVousInstance.id}">${fieldValue(bean: rendezVousInstance, field: "contact")}</g:link></td>
					
						<td>${fieldValue(bean: rendezVousInstance, field: "conclusion")}</td>
					
						<td><g:formatDate date="${rendezVousInstance.date}" /></td>
					
						<td>${fieldValue(bean: rendezVousInstance, field: "prospect")}</td>
					
						<td>${fieldValue(bean: rendezVousInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rendezVousInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
