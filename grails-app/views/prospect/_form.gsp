<%@ page import="core.Prospect" %>



<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'situationfamiliale', 'error')} required">
	<label for="situationfamiliale">
		<g:message code="prospect.situationfamiliale.label" default="Situationfamiliale" />
		<span class="required-indicator">*</span>
	</label><%--
	${prospectInstance?.constraints.each{k,v->
		println k
		println "OOOOOOOOOOOOOOOOOOOOOOOOO"
		println v
	}
	
	
	}
	--%>
<g:select name="situationfamiliale" from="${prospectInstance.constraints.situationfamiliale.inList}" 
          value="${prospectInstance?.situationfamiliale}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'adresse', 'error')} required">
	<label for="adresse">
		<g:message code="prospect.adresse.label" default="Adresse" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adresse" required="" value="${prospectInstance?.adresse}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'associations', 'error')} ">
	<label for="associations">
		<g:message code="prospect.associations.label" default="Associations" />
		
	</label>
	<g:select name="associations" from="${core.Association.list()}" multiple="multiple" optionKey="id" size="5" value="${prospectInstance?.associations*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'cAAnnuel', 'error')} required">
	<label for="cAAnnuel">
		<g:message code="prospect.cAAnnuel.label" default="C AA nnuel" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cAAnnuel" type="number" value="${prospectInstance.cAAnnuel}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'capitalSocial', 'error')} required">
	<label for="capitalSocial">
		<g:message code="prospect.capitalSocial.label" default="Capital Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="capitalSocial" type="number" value="${prospectInstance.capitalSocial}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'catProfessionnelle', 'error')} required">
	<label for="catProfessionnelle">
		<g:message code="prospect.catProfessionnelle.label" default="Cat Professionnelle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="catProfessionnelle" required="" value="${prospectInstance?.catProfessionnelle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'codeApe', 'error')} required">
	<label for="codeApe">
		<g:message code="prospect.codeApe.label" default="Code Ape" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codeApe" required="" value="${prospectInstance?.codeApe}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'contacts', 'error')} ">
	<label for="contacts">
		<g:message code="prospect.contacts.label" default="Contacts" />
		
	</label>
	<g:select name="contacts" from="${core.Contact.list()}" multiple="multiple" optionKey="id" size="5" value="${prospectInstance?.contacts*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'dateDeNaissance', 'error')} required">
	<label for="dateDeNaissance">
		<g:message code="prospect.dateDeNaissance.label" default="Date De Naissance" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateDeNaissance" precision="day"  value="${prospectInstance?.dateDeNaissance}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'dateDePremierContact', 'error')} required">
	<label for="dateDePremierContact">
		<g:message code="prospect.dateDePremierContact.label" default="Date De Premier Contact" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateDePremierContact" precision="day"  value="${prospectInstance?.dateDePremierContact}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'effectif', 'error')} required">
	<label for="effectif">
		<g:message code="prospect.effectif.label" default="Effectif" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="effectif" type="number" value="${prospectInstance.effectif}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="prospect.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${prospectInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'fixe', 'error')} required">
	<label for="fixe">
		<g:message code="prospect.fixe.label" default="Fixe" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fixe" required="" value="${prospectInstance?.fixe}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'formeJuridique', 'error')} required">
	<label for="formeJuridique">
		<g:message code="prospect.formeJuridique.label" default="Forme Juridique" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="formeJuridique" required="" value="${prospectInstance?.formeJuridique}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'informationsComplementaires', 'error')} required">
	<label for="informationsComplementaires">
		<g:message code="prospect.informationsComplementaires.label" default="Informations Complementaires" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="informationsComplementaires" required="" value="${prospectInstance?.informationsComplementaires}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'mOrB', 'error')} ">
	<label for="mOrB">
		<g:message code="prospect.mOrB.label" default="M Or B" />
		
	</label>
	<g:checkBox name="mOrB" value="${prospectInstance?.mOrB}" />

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="prospect.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${prospectInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'nomDeLaSociete', 'error')} required">
	<label for="nomDeLaSociete">
		<g:message code="prospect.nomDeLaSociete.label" default="Nom De La Societe" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomDeLaSociete" required="" value="${prospectInstance?.nomDeLaSociete}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'nombreDenfants', 'error')} required">
	<label for="nombreDenfants">
		<g:message code="prospect.nombreDenfants.label" default="Nombre Denfants" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nombreDenfants" type="number" value="${prospectInstance.nombreDenfants}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'note', 'error')} required">
	<label for="note">
		<g:message code="prospect.note.label" default="Note" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="note" required="" value="${prospectInstance?.note}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'portable', 'error')} required">
	<label for="portable">
		<g:message code="prospect.portable.label" default="Portable" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="portable" required="" value="${prospectInstance?.portable}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'prenom', 'error')} required">
	<label for="prenom">
		<g:message code="prospect.prenom.label" default="Prenom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="prenom" required="" value="${prospectInstance?.prenom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="prospect.products.label" default="Products" />
		
	</label>
	<g:select name="products" from="${core.Product.list()}" multiple="multiple" optionKey="id" size="5" value="${prospectInstance?.products*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'profession', 'error')} required">
	<label for="profession">
		<g:message code="prospect.profession.label" default="Profession" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="profession" required="" value="${prospectInstance?.profession}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'regimeMatrimonial', 'error')} required">
	<label for="regimeMatrimonial">
		<g:message code="prospect.regimeMatrimonial.label" default="Regime Matrimonial" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="regimeMatrimonial" required="" value="${prospectInstance?.regimeMatrimonial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'rendezVous', 'error')} ">
	<label for="rendezVous">
		<g:message code="prospect.rendezVous.label" default="Rendez Vous" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${prospectInstance?.rendezVous?}" var="r">
    <li><g:link controller="rendezVous" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rendezVous" action="create" params="['prospect.id': prospectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rendezVous.label', default: 'RendezVous')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'revenuAnnuel', 'error')} required">
	<label for="revenuAnnuel">
		<g:message code="prospect.revenuAnnuel.label" default="Revenu Annuel" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="revenuAnnuel" type="number" value="${prospectInstance.revenuAnnuel}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'revenuDuFoyer', 'error')} required">
	<label for="revenuDuFoyer">
		<g:message code="prospect.revenuDuFoyer.label" default="Revenu Du Foyer" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="revenuDuFoyer" type="number" value="${prospectInstance.revenuDuFoyer}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'siegeSocial', 'error')} required">
	<label for="siegeSocial">
		<g:message code="prospect.siegeSocial.label" default="Siege Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="siegeSocial" required="" value="${prospectInstance?.siegeSocial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'siret', 'error')} required">
	<label for="siret">
		<g:message code="prospect.siret.label" default="Siret" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="siret" required="" value="${prospectInstance?.siret}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="prospect.type.label" default="Type" />
		
	</label>
	<g:checkBox name="type" value="${prospectInstance?.type}" />

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'valeurDuPatrimoine', 'error')} required">
	<label for="valeurDuPatrimoine">
		<g:message code="prospect.valeurDuPatrimoine.label" default="Valeur Du Patrimoine" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valeurDuPatrimoine" type="number" value="${prospectInstance.valeurDuPatrimoine}" required=""/>

</div>

