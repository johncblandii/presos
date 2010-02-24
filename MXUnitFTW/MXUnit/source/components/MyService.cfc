<cfcomponent>
	<cffunction name="echo" access="public" output="false" returntype="string">
		<cfargument name="message" type="string" required="false" />
		<cfreturn arguments.message />
	</cffunction>
	
	<cffunction name="getProducts" access="public" output="false" returntype="Array">
		<cfreturn ["fish eggs", "coldfusion teeshirt", "twitter application"] />
	</cffunction>
</cfcomponent>