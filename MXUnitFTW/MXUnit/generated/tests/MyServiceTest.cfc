
<cfcomponent name="MyServiceTest" extends="mxunit.framework.TestCase">
	<!--- setup and teardown --->
	
	<cffunction name="setUp" returntype="void" access="public">
		<cfscript>
			this.myComp = createObject("component","components.MyService");		
		</cfscript>
	</cffunction>

	<cffunction name="tearDown" returntype="void" access="public">
		<!--- Any code needed to return your environment to normal goes here --->
	</cffunction>

	
	<!--- Begin specific tests --->
	
	<cffunction name="testecho" access="public" returnType="void">
		<cfscript>
			assertFalse(true,"Test not implemented");
		</cfscript>
	</cffunction>		
	
	<cffunction name="testgetProducts" access="public" returnType="void">
		<cfscript>
			assertFalse(true,"Test not implemented");
		</cfscript>
	</cffunction>		
		
</cfcomponent>

