
<%@ page import="core.Association" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'association.label', default: 'Association')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-association" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-association" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list association">
			
				<g:if test="${associationInstance?.adresse}">
				<li class="fieldcontain">
					<span id="adresse-label" class="property-label"><g:message code="association.adresse.label" default="Adresse" /></span>
					
						<span class="property-value" aria-labelledby="adresse-label"><g:fieldValue bean="${associationInstance}" field="adresse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.cAAnnuel}">
				<li class="fieldcontain">
					<span id="cAAnnuel-label" class="property-label"><g:message code="association.cAAnnuel.label" default="C AA nnuel" /></span>
					
						<span class="property-value" aria-labelledby="cAAnnuel-label"><g:fieldValue bean="${associationInstance}" field="cAAnnuel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.capitalSocial}">
				<li class="fieldcontain">
					<span id="capitalSocial-label" class="property-label"><g:message code="association.capitalSocial.label" default="Capital Social" /></span>
					
						<span class="property-value" aria-labelledby="capitalSocial-label"><g:fieldValue bean="${associationInstance}" field="capitalSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.catProfessionnelle}">
				<li class="fieldcontain">
					<span id="catProfessionnelle-label" class="property-label"><g:message code="association.catProfessionnelle.label" default="Cat Professionnelle" /></span>
					
						<span class="property-value" aria-labelledby="catProfessionnelle-label"><g:fieldValue bean="${associationInstance}" field="catProfessionnelle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.codeApe}">
				<li class="fieldcontain">
					<span id="codeApe-label" class="property-label"><g:message code="association.codeApe.label" default="Code Ape" /></span>
					
						<span class="property-value" aria-labelledby="codeApe-label"><g:fieldValue bean="${associationInstance}" field="codeApe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.contacts}">
				<li class="fieldcontain">
					<span id="contacts-label" class="property-label"><g:message code="association.contacts.label" default="Contacts" /></span>
					
						<g:each in="${associationInstance.contacts}" var="c">
						<span class="property-value" aria-labelledby="contacts-label"><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.dateDeNaissance}">
				<li class="fieldcontain">
					<span id="dateDeNaissance-label" class="property-label"><g:message code="association.dateDeNaissance.label" default="Date De Naissance" /></span>
					
						<span class="property-value" aria-labelledby="dateDeNaissance-label"><g:formatDate date="${associationInstance?.dateDeNaissance}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.dateDePremierContact}">
				<li class="fieldcontain">
					<span id="dateDePremierContact-label" class="property-label"><g:message code="association.dateDePremierContact.label" default="Date De Premier Contact" /></span>
					
						<span class="property-value" aria-labelledby="dateDePremierContact-label"><g:formatDate date="${associationInstance?.dateDePremierContact}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.effectif}">
				<li class="fieldcontain">
					<span id="effectif-label" class="property-label"><g:message code="association.effectif.label" default="Effectif" /></span>
					
						<span class="property-value" aria-labelledby="effectif-label"><g:fieldValue bean="${associationInstance}" field="effectif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="association.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${associationInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.fixe}">
				<li class="fieldcontain">
					<span id="fixe-label" class="property-label"><g:message code="association.fixe.label" default="Fixe" /></span>
					
						<span class="property-value" aria-labelledby="fixe-label"><g:fieldValue bean="${associationInstance}" field="fixe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.formeJuridique}">
				<li class="fieldcontain">
					<span id="formeJuridique-label" class="property-label"><g:message code="association.formeJuridique.label" default="Forme Juridique" /></span>
					
						<span class="property-value" aria-labelledby="formeJuridique-label"><g:fieldValue bean="${associationInstance}" field="formeJuridique"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.informationsComplementaires}">
				<li class="fieldcontain">
					<span id="informationsComplementaires-label" class="property-label"><g:message code="association.informationsComplementaires.label" default="Informations Complementaires" /></span>
					
						<span class="property-value" aria-labelledby="informationsComplementaires-label"><g:fieldValue bean="${associationInstance}" field="informationsComplementaires"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.mOrB}">
				<li class="fieldcontain">
					<span id="mOrB-label" class="property-label"><g:message code="association.mOrB.label" default="M Or B" /></span>
					
						<span class="property-value" aria-labelledby="mOrB-label"><g:formatBoolean boolean="${associationInstance?.mOrB}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="association.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${associationInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.nomDeLaSociete}">
				<li class="fieldcontain">
					<span id="nomDeLaSociete-label" class="property-label"><g:message code="association.nomDeLaSociete.label" default="Nom De La Societe" /></span>
					
						<span class="property-value" aria-labelledby="nomDeLaSociete-label"><g:fieldValue bean="${associationInstance}" field="nomDeLaSociete"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.nombreDenfants}">
				<li class="fieldcontain">
					<span id="nombreDenfants-label" class="property-label"><g:message code="association.nombreDenfants.label" default="Nombre Denfants" /></span>
					
						<span class="property-value" aria-labelledby="nombreDenfants-label"><g:fieldValue bean="${associationInstance}" field="nombreDenfants"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.note}">
				<li class="fieldcontain">
					<span id="note-label" class="property-label"><g:message code="association.note.label" default="Note" /></span>
					
						<span class="property-value" aria-labelledby="note-label"><g:fieldValue bean="${associationInstance}" field="note"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.portable}">
				<li class="fieldcontain">
					<span id="portable-label" class="property-label"><g:message code="association.portable.label" default="Portable" /></span>
					
						<span class="property-value" aria-labelledby="portable-label"><g:fieldValue bean="${associationInstance}" field="portable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.prenom}">
				<li class="fieldcontain">
					<span id="prenom-label" class="property-label"><g:message code="association.prenom.label" default="Prenom" /></span>
					
						<span class="property-value" aria-labelledby="prenom-label"><g:fieldValue bean="${associationInstance}" field="prenom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.products}">
				<li class="fieldcontain">
					<span id="products-label" class="property-label"><g:message code="association.products.label" default="Products" /></span>
					
						<g:each in="${associationInstance.products}" var="p">
						<span class="property-value" aria-labelledby="products-label"><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.profession}">
				<li class="fieldcontain">
					<span id="profession-label" class="property-label"><g:message code="association.profession.label" default="Profession" /></span>
					
						<span class="property-value" aria-labelledby="profession-label"><g:fieldValue bean="${associationInstance}" field="profession"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.regimeMatrimonial}">
				<li class="fieldcontain">
					<span id="regimeMatrimonial-label" class="property-label"><g:message code="association.regimeMatrimonial.label" default="Regime Matrimonial" /></span>
					
						<span class="property-value" aria-labelledby="regimeMatrimonial-label"><g:fieldValue bean="${associationInstance}" field="regimeMatrimonial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.rendezVous}">
				<li class="fieldcontain">
					<span id="rendezVous-label" class="property-label"><g:message code="association.rendezVous.label" default="Rendez Vous" /></span>
					
						<g:each in="${associationInstance.rendezVous}" var="r">
						<span class="property-value" aria-labelledby="rendezVous-label"><g:link controller="rendezVous" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.revenuAnnuel}">
				<li class="fieldcontain">
					<span id="revenuAnnuel-label" class="property-label"><g:message code="association.revenuAnnuel.label" default="Revenu Annuel" /></span>
					
						<span class="property-value" aria-labelledby="revenuAnnuel-label"><g:fieldValue bean="${associationInstance}" field="revenuAnnuel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.revenuDuFoyer}">
				<li class="fieldcontain">
					<span id="revenuDuFoyer-label" class="property-label"><g:message code="association.revenuDuFoyer.label" default="Revenu Du Foyer" /></span>
					
						<span class="property-value" aria-labelledby="revenuDuFoyer-label"><g:fieldValue bean="${associationInstance}" field="revenuDuFoyer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.siegeSocial}">
				<li class="fieldcontain">
					<span id="siegeSocial-label" class="property-label"><g:message code="association.siegeSocial.label" default="Siege Social" /></span>
					
						<span class="property-value" aria-labelledby="siegeSocial-label"><g:fieldValue bean="${associationInstance}" field="siegeSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.siret}">
				<li class="fieldcontain">
					<span id="siret-label" class="property-label"><g:message code="association.siret.label" default="Siret" /></span>
					
						<span class="property-value" aria-labelledby="siret-label"><g:fieldValue bean="${associationInstance}" field="siret"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.situationfamiliale}">
				<li class="fieldcontain">
					<span id="situationfamiliale-label" class="property-label"><g:message code="association.situationfamiliale.label" default="Situationfamiliale" /></span>
					
						<span class="property-value" aria-labelledby="situationfamiliale-label"><g:fieldValue bean="${associationInstance}" field="situationfamiliale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="association.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:formatBoolean boolean="${associationInstance?.type}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${associationInstance?.valeurDuPatrimoine}">
				<li class="fieldcontain">
					<span id="valeurDuPatrimoine-label" class="property-label"><g:message code="association.valeurDuPatrimoine.label" default="Valeur Du Patrimoine" /></span>
					
						<span class="property-value" aria-labelledby="valeurDuPatrimoine-label"><g:fieldValue bean="${associationInstance}" field="valeurDuPatrimoine"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:associationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${associationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
