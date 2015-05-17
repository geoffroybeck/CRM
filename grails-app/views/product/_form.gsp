<%@ page import="core.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'libelle', 'error')} required">
	<label for="libelle">
		<g:message code="product.libelle.label" default="Libelle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="libelle" required="" value="${productInstance?.libelle}"/>

</div>

