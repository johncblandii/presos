<cfcomponent extends="mxunit.framework.TestCase">
	<cffunction name="setUp" access="public" returntype="void">
		 <cfset cfc = createObject("component", "components.MyService") />
	</cffunction>
	
	<cffunction name="echoHi">
		<cfset assertTrue(cfc.echo("hi") EQ "hi") />
	</cffunction>
	
	<cffunction name="echoBye">
		<cfset assertTrue(cfc.echo("bye") EQ "bye") />
	</cffunction>
	
	<cffunction name="echoKCDevCore">
		<cfset assertTrue(cfc.echo("KCDevCore") EQ "KCDevCore") />
	</cffunction>
	
	<cffunction name="echoFail">
		<cfset assertTrue(cfc.echo("1") EQ "2") />
	</cffunction>
	
	<cffunction name="getProducts">
		<cfset assertTrue(ArrayLen(cfc.getProducts()) GT 0) />
	</cffunction>
</cfcomponent>