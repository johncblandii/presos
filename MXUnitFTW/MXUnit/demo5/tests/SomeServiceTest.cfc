<cfcomponent extends="mxunit.framework.TestCase">
	<cffunction name="setUp" access="public">
		<cfset this.cfc = createObject("component", "components.SomeService") />
	</cffunction>
	
	<cffunction name="getUsers" access="public">
		<cfset assertIsArray(this.cfc.getUsers()) />
	</cffunction>

	<cffunction name="addUser" access="public">
		<cfset assertTrue(this.cfc.addUser()) />
	</cffunction>
</cfcomponent>