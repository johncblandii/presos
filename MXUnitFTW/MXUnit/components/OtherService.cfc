<cfcomponent>
	<cffunction name="hello" access="public" output="false" returntype="string">
		<cfargument name="name" type="string" required="false" />
		<cfreturn "Hello, " & arguments.name & "!" />
	</cffunction>
</cfcomponent>