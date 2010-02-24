<cfcomponent extends="mxunit.framework.TestCase">
<!--- INIT METHODS --->
	<cffunction name="setUp" access="public" returntype="void">
		 <cfset cfc = createObject("component", "components.OtherService") />
	</cffunction>
	
<!--- TEST METHODS --->	
	<cffunction name="hello">
		<cfset assertEquals(cfc.hello("John"), "Hello, John!") />
	</cffunction>
</cfcomponent>