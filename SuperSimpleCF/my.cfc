<cfcomponent>
	<cffunction name="getArt" access="public" returntype="query">
		<cfset var art = "" />
		<cfquery name="art" datasource="cfartgallery">
			SELECT	a.*, ar.firstname, ar.lastname
			FROM		APP.ART a
			INNER JOIN app.artists ar on a.artistid = ar.artistid
			ORDER BY 	ar.lastname
		</cfquery>
		<cfreturn art />
	</cffunction>
</cfcomponent>