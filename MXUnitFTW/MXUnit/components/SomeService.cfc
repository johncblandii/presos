<cfcomponent>
	<cffunction name="addUser" access="public" output="false" returntype="boolean">
		<!--- 
			<cfquery name="myquery">
				insert into ....
			</cfquery>
		--->
		<cfreturn true />
	</cffunction>
	
	<cffunction name="getUsers" access="public" output="false" returntype="Array">
		<cfreturn ["John", "Jim", "Dee"] />
	</cffunction>
</cfcomponent>