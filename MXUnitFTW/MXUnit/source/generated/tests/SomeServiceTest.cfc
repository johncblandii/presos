
<cfcomponent name="SomeServiceTest" extends="mxunit.framework.TestCase">
	<!--- setup and teardown --->
	
	<cffunction name="setUp" returntype="void" access="public">
		<cfscript>
			this.myComp = createObject("component","components.SomeService");		
		</cfscript>
	</cffunction>

	<cffunction name="tearDown" returntype="void" access="public">
		<!--- Any code needed to return your environment to normal goes here --->
	</cffunction>

	
	<!--- Begin specific tests --->
	
	<cffunction name="testaddUser" access="public" returnType="void">
		<cfscript>
			assertFalse(true,"Test not implemented");
		</cfscript>
	</cffunction>		
	
	<cffunction name="testgetUsers" access="public" returnType="void">
		<cfscript>
			assertFalse(true,"Test not implemented");
		</cfscript>
	</cffunction>		
		
</cfcomponent>

