<html>
	<ul>
		<g:each in = "${prospect.properties }">
			<li>
				${it.key +' :  '+ it.value}
			</li>
		</g:each>
	</ul>
</html>

