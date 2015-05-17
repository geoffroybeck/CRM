<%@ page import="core.Association" %>



<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'adresse', 'error')} required">
	<label for="adresse">
		<g:message code="association.adresse.label" default="Adresse" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adresse" required="" value="${associationInstance?.adresse}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'cAAnnuel', 'error')} required">
	<label for="cAAnnuel">
		<g:message code="association.cAAnnuel.label" default="C AA nnuel" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cAAnnuel" type="number" value="${associationInstance.cAAnnuel}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'capitalSocial', 'error')} required">
	<label for="capitalSocial">
		<g:message code="association.capitalSocial.label" default="Capital Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="capitalSocial" type="number" value="${associationInstance.capitalSocial}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'catProfessionnelle', 'error')} required">
	<label for="catProfessionnelle">
		<g:message code="association.catProfessionnelle.label" default="Cat Professionnelle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="catProfessionnelle" required="" value="${associationInstance?.catProfessionnelle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'codeApe', 'error')} required">
	<label for="codeApe">
		<g:message code="association.codeApe.label" default="Code Ape" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codeApe" required="" value="${associationInstance?.codeApe}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'contacts', 'error')} ">
	<label for="contacts">
		<g:message code="association.contacts.label" default="Contacts" />
		
	</label>
	<g:select name="contacts" from="${core.Contact.list()}" multiple="multiple" optionKey="id" size="5" value="${associationInstance?.contacts*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'dateDeNaissance', 'error')} required">
	<label for="dateDeNaissance">
		<g:message code="association.dateDeNaissance.label" default="Date De Naissance" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateDeNaissance" precision="day"  value="${associationInstance?.dateDeNaissance}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'dateDePremierContact', 'error')} required">
	<label for="dateDePremierContact">
		<g:message code="association.dateDePremierContact.label" default="Date De Premier Contact" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateDePremierContact" precision="day"  value="${associationInstance?.dateDePremierContact}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'effectif', 'error')} required">
	<label for="effectif">
		<g:message code="association.effectif.label" default="Effectif" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="effectif" type="number" value="${associationInstance.effectif}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="association.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${associationInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'fixe', 'error')} required">
	<label for="fixe">
		<g:message code="association.fixe.label" default="Fixe" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fixe" required="" value="${associationInstance?.fixe}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'formeJuridique', 'error')} required">
	<label for="formeJuridique">
		<g:message code="association.formeJuridique.label" default="Forme Juridique" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="formeJuridique" required="" value="${associationInstance?.formeJuridique}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'informationsComplementaires', 'error')} required">
	<label for="informationsComplementaires">
		<g:message code="association.informationsComplementaires.label" default="Informations Complementaires" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="informationsComplementaires" required="" value="${associationInstance?.informationsComplementaires}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'mOrB', 'error')} ">
	<label for="mOrB">
		<g:message code="association.mOrB.label" default="M Or B" />
		
	</label>
	<g:checkBox name="mOrB" value="${associationInstance?.mOrB}" />

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="association.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${associationInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'nomDeLaSociete', 'error')} required">
	<label for="nomDeLaSociete">
		<g:message code="association.nomDeLaSociete.label" default="Nom De La Societe" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomDeLaSociete" required="" value="${associationInstance?.nomDeLaSociete}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'nombreDenfants', 'error')} required">
	<label for="nombreDenfants">
		<g:message code="association.nombreDenfants.label" default="Nombre Denfants" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nombreDenfants" type="number" value="${associationInstance.nombreDenfants}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'note', 'error')} required">
	<label for="note">
		<g:message code="association.note.label" default="Note" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="note" required="" value="${associationInstance?.note}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'portable', 'error')} required">
	<label for="portable">
		<g:message code="association.portable.label" default="Portable" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="portable" required="" value="${associationInstance?.portable}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'prenom', 'error')} required">
	<label for="prenom">
		<g:message code="association.prenom.label" default="Prenom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="prenom" required="" value="${associationInstance?.prenom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="association.products.label" default="Products" />
		
	</label>
	<g:select name="products" from="${core.Product.list()}" multiple="multiple" optionKey="id" size="5" value="${associationInstance?.products*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'profession', 'error')} required">
	<label for="profession">
		<g:message code="association.profession.label" default="Profession" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="profession" required="" value="${associationInstance?.profession}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'regimeMatrimonial', 'error')} required">
	<label for="regimeMatrimonial">
		<g:message code="association.regimeMatrimonial.label" default="Regime Matrimonial" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="regimeMatrimonial" required="" value="${associationInstance?.regimeMatrimonial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'rendezVous', 'error')} ">
	<label for="rendezVous">
		<g:message code="association.rendezVous.label" default="Rendez Vous" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${associationInstance?.rendezVous?}" var="r">
    <li><g:link controller="rendezVous" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rendezVous" action="create" params="['association.id': associationInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rendezVous.label', default: 'RendezVous')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'revenuAnnuel', 'error')} required">
	<label for="revenuAnnuel">
		<g:message code="association.revenuAnnuel.label" default="Revenu Annuel" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="revenuAnnuel" type="number" value="${associationInstance.revenuAnnuel}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'revenuDuFoyer', 'error')} required">
	<label for="revenuDuFoyer">
		<g:message code="association.revenuDuFoyer.label" default="Revenu Du Foyer" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="revenuDuFoyer" type="number" value="${associationInstance.revenuDuFoyer}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'siegeSocial', 'error')} required">
	<label for="siegeSocial">
		<g:message code="association.siegeSocial.label" default="Siege Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="siegeSocial" required="" value="${associationInstance?.siegeSocial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'siret', 'error')} required">
	<label for="siret">
		<g:message code="association.siret.label" default="Siret" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="siret" required="" value="${associationInstance?.siret}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'situationfamiliale', 'error')} required">
	<label for="situationfamiliale">
		<g:message code="association.situationfamiliale.label" default="Situationfamiliale" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situationfamiliale" required="" value="${associationInstance?.situationfamiliale}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="association.type.label" default="Type" />
		
	</label>
	<g:checkBox name="type" value="${associationInstance?.type}" />

</div>

<div class="fieldcontain ${hasErrors(bean: associationInstance, field: 'valeurDuPatrimoine', 'error')} required">
	<label for="valeurDuPatrimoine">
		<g:message code="association.valeurDuPatrimoine.label" default="Valeur Du Patrimoine" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valeurDuPatrimoine" type="number" value="${associationInstance.valeurDuPatrimoine}" required=""/>

</div>

