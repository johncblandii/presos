<cfcomponent extends="mxunit.framework.TestCase">
<!--- INIT METHODS --->
	<cffunction name="setUp" access="public" returntype="void">
		 <cfset cfc = createObject("component", "components.MyService") />
	</cffunction>
	
<!--- PRIVATE METHODS --->
	<cffunction name="echoTest" access="private">
		<cfargument name="value" type="string" required="true" />
		<cfset assertSame(cfc.echo(arguments.value), arguments.value) />
	</cffunction>

<!--- TEST METHODS --->	
	<cffunction name="echoHi">
		<cfset echoTest("hi") />
	</cffunction>
	
	<cffunction name="echoHiMom">
		<cfset echoTest("hi mom") />
	</cffunction>
	
	<cffunction name="echoBye">
		<cfset echoTest("bye") />
	</cffunction>
	
	<cffunction name="echoKCDevCore">
		<cfset echoTest("KCDevCore") />
	</cffunction>
	
	<cffunction name="echoFail">
		<cfset assertNotSame(cfc.echo("1"), "2") />
	</cffunction>
	
	<cffunction name="getProducts">
		<cfset assertIsArray(cfc.getProducts()) />
	</cffunction>
</cfcomponent>