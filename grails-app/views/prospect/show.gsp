
<%@ page import="core.Prospect" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prospect.label', default: 'Prospect')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-prospect" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-prospect" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list prospect">
			
				<g:if test="${prospectInstance?.situationfamiliale}">
				<li class="fieldcontain">
					<span id="situationfamiliale-label" class="property-label"><g:message code="prospect.situationfamiliale.label" default="Situationfamiliale" /></span>
					
						<span class="property-value" aria-labelledby="situationfamiliale-label"><g:fieldValue bean="${prospectInstance}" field="situationfamiliale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.adresse}">
				<li class="fieldcontain">
					<span id="adresse-label" class="property-label"><g:message code="prospect.adresse.label" default="Adresse" /></span>
					
						<span class="property-value" aria-labelledby="adresse-label"><g:fieldValue bean="${prospectInstance}" field="adresse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.associations}">
				<li class="fieldcontain">
					<span id="associations-label" class="property-label"><g:message code="prospect.associations.label" default="Associations" /></span>
					
						<g:each in="${prospectInstance.associations}" var="a">
						<span class="property-value" aria-labelledby="associations-label"><g:link controller="association" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.cAAnnuel}">
				<li class="fieldcontain">
					<span id="cAAnnuel-label" class="property-label"><g:message code="prospect.cAAnnuel.label" default="C AA nnuel" /></span>
					
						<span class="property-value" aria-labelledby="cAAnnuel-label"><g:fieldValue bean="${prospectInstance}" field="cAAnnuel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.capitalSocial}">
				<li class="fieldcontain">
					<span id="capitalSocial-label" class="property-label"><g:message code="prospect.capitalSocial.label" default="Capital Social" /></span>
					
						<span class="property-value" aria-labelledby="capitalSocial-label"><g:fieldValue bean="${prospectInstance}" field="capitalSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.catProfessionnelle}">
				<li class="fieldcontain">
					<span id="catProfessionnelle-label" class="property-label"><g:message code="prospect.catProfessionnelle.label" default="Cat Professionnelle" /></span>
					
						<span class="property-value" aria-labelledby="catProfessionnelle-label"><g:fieldValue bean="${prospectInstance}" field="catProfessionnelle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.codeApe}">
				<li class="fieldcontain">
					<span id="codeApe-label" class="property-label"><g:message code="prospect.codeApe.label" default="Code Ape" /></span>
					
						<span class="property-value" aria-labelledby="codeApe-label"><g:fieldValue bean="${prospectInstance}" field="codeApe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.contacts}">
				<li class="fieldcontain">
					<span id="contacts-label" class="property-label"><g:message code="prospect.contacts.label" default="Contacts" /></span>
					
						<g:each in="${prospectInstance.contacts}" var="c">
						<span class="property-value" aria-labelledby="contacts-label"><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.dateDeNaissance}">
				<li class="fieldcontain">
					<span id="dateDeNaissance-label" class="property-label"><g:message code="prospect.dateDeNaissance.label" default="Date De Naissance" /></span>
					
						<span class="property-value" aria-labelledby="dateDeNaissance-label"><g:formatDate date="${prospectInstance?.dateDeNaissance}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.dateDePremierContact}">
				<li class="fieldcontain">
					<span id="dateDePremierContact-label" class="property-label"><g:message code="prospect.dateDePremierContact.label" default="Date De Premier Contact" /></span>
					
						<span class="property-value" aria-labelledby="dateDePremierContact-label"><g:formatDate date="${prospectInstance?.dateDePremierContact}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.effectif}">
				<li class="fieldcontain">
					<span id="effectif-label" class="property-label"><g:message code="prospect.effectif.label" default="Effectif" /></span>
					
						<span class="property-value" aria-labelledby="effectif-label"><g:fieldValue bean="${prospectInstance}" field="effectif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="prospect.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${prospectInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.fixe}">
				<li class="fieldcontain">
					<span id="fixe-label" class="property-label"><g:message code="prospect.fixe.label" default="Fixe" /></span>
					
						<span class="property-value" aria-labelledby="fixe-label"><g:fieldValue bean="${prospectInstance}" field="fixe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.formeJuridique}">
				<li class="fieldcontain">
					<span id="formeJuridique-label" class="property-label"><g:message code="prospect.formeJuridique.label" default="Forme Juridique" /></span>
					
						<span class="property-value" aria-labelledby="formeJuridique-label"><g:fieldValue bean="${prospectInstance}" field="formeJuridique"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.informationsComplementaires}">
				<li class="fieldcontain">
					<span id="informationsComplementaires-label" class="property-label"><g:message code="prospect.informationsComplementaires.label" default="Informations Complementaires" /></span>
					
						<span class="property-value" aria-labelledby="informationsComplementaires-label"><g:fieldValue bean="${prospectInstance}" field="informationsComplementaires"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.mOrB}">
				<li class="fieldcontain">
					<span id="mOrB-label" class="property-label"><g:message code="prospect.mOrB.label" default="M Or B" /></span>
					
						<span class="property-value" aria-labelledby="mOrB-label"><g:formatBoolean boolean="${prospectInstance?.mOrB}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="prospect.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${prospectInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.nomDeLaSociete}">
				<li class="fieldcontain">
					<span id="nomDeLaSociete-label" class="property-label"><g:message code="prospect.nomDeLaSociete.label" default="Nom De La Societe" /></span>
					
						<span class="property-value" aria-labelledby="nomDeLaSociete-label"><g:fieldValue bean="${prospectInstance}" field="nomDeLaSociete"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.nombreDenfants}">
				<li class="fieldcontain">
					<span id="nombreDenfants-label" class="property-label"><g:message code="prospect.nombreDenfants.label" default="Nombre Denfants" /></span>
					
						<span class="property-value" aria-labelledby="nombreDenfants-label"><g:fieldValue bean="${prospectInstance}" field="nombreDenfants"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.note}">
				<li class="fieldcontain">
					<span id="note-label" class="property-label"><g:message code="prospect.note.label" default="Note" /></span>
					
						<span class="property-value" aria-labelledby="note-label"><g:fieldValue bean="${prospectInstance}" field="note"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.portable}">
				<li class="fieldcontain">
					<span id="portable-label" class="property-label"><g:message code="prospect.portable.label" default="Portable" /></span>
					
						<span class="property-value" aria-labelledby="portable-label"><g:fieldValue bean="${prospectInstance}" field="portable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.prenom}">
				<li class="fieldcontain">
					<span id="prenom-label" class="property-label"><g:message code="prospect.prenom.label" default="Prenom" /></span>
					
						<span class="property-value" aria-labelledby="prenom-label"><g:fieldValue bean="${prospectInstance}" field="prenom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.products}">
				<li class="fieldcontain">
					<span id="products-label" class="property-label"><g:message code="prospect.products.label" default="Products" /></span>
					
						<g:each in="${prospectInstance.products}" var="p">
						<span class="property-value" aria-labelledby="products-label"><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.profession}">
				<li class="fieldcontain">
					<span id="profession-label" class="property-label"><g:message code="prospect.profession.label" default="Profession" /></span>
					
						<span class="property-value" aria-labelledby="profession-label"><g:fieldValue bean="${prospectInstance}" field="profession"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.regimeMatrimonial}">
				<li class="fieldcontain">
					<span id="regimeMatrimonial-label" class="property-label"><g:message code="prospect.regimeMatrimonial.label" default="Regime Matrimonial" /></span>
					
						<span class="property-value" aria-labelledby="regimeMatrimonial-label"><g:fieldValue bean="${prospectInstance}" field="regimeMatrimonial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.rendezVous}">
				<li class="fieldcontain">
					<span id="rendezVous-label" class="property-label"><g:message code="prospect.rendezVous.label" default="Rendez Vous" /></span>
					
						<g:each in="${prospectInstance.rendezVous}" var="r">
						<span class="property-value" aria-labelledby="rendezVous-label"><g:link controller="rendezVous" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.revenuAnnuel}">
				<li class="fieldcontain">
					<span id="revenuAnnuel-label" class="property-label"><g:message code="prospect.revenuAnnuel.label" default="Revenu Annuel" /></span>
					
						<span class="property-value" aria-labelledby="revenuAnnuel-label"><g:fieldValue bean="${prospectInstance}" field="revenuAnnuel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.revenuDuFoyer}">
				<li class="fieldcontain">
					<span id="revenuDuFoyer-label" class="property-label"><g:message code="prospect.revenuDuFoyer.label" default="Revenu Du Foyer" /></span>
					
						<span class="property-value" aria-labelledby="revenuDuFoyer-label"><g:fieldValue bean="${prospectInstance}" field="revenuDuFoyer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.siegeSocial}">
				<li class="fieldcontain">
					<span id="siegeSocial-label" class="property-label"><g:message code="prospect.siegeSocial.label" default="Siege Social" /></span>
					
						<span class="property-value" aria-labelledby="siegeSocial-label"><g:fieldValue bean="${prospectInstance}" field="siegeSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.siret}">
				<li class="fieldcontain">
					<span id="siret-label" class="property-label"><g:message code="prospect.siret.label" default="Siret" /></span>
					
						<span class="property-value" aria-labelledby="siret-label"><g:fieldValue bean="${prospectInstance}" field="siret"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="prospect.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:formatBoolean boolean="${prospectInstance?.type}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.valeurDuPatrimoine}">
				<li class="fieldcontain">
					<span id="valeurDuPatrimoine-label" class="property-label"><g:message code="prospect.valeurDuPatrimoine.label" default="Valeur Du Patrimoine" /></span>
					
						<span class="property-value" aria-labelledby="valeurDuPatrimoine-label"><g:fieldValue bean="${prospectInstance}" field="valeurDuPatrimoine"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:prospectInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${prospectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
