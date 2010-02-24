<cfparam name="updateFailed" type="boolean" default="false" />

<!--- USER INPUT VALIDATION --->
<cfif NOT StructKeyExists(url, "id") AND NOT isNumeric(url.id)>
	<cflocation url="art.cfm" />
</cfif>

<cfif StructKeyExists(form, "price") AND isNumeric(form.price)>
	<cftry>
		<cfquery datasource="cfartgallery">
			UPDATE	app.art
			SET		price = <cfqueryparam cfsqltype="cf_sql_decimal" value="#form.price#" />,
					artname = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.name#" />,
					description = <cfqueryparam cfsqltype="cf_sql_clob" value="#form.description#" />
			WHERE	artid = <cfqueryparam cfsqltype="cf_sql_integer" value="#url.id#" />
		</cfquery>
		<cflocation url="artdetail.cfm?id=#url.id#" />
	<cfcatch type="any">
		<cfset updateFailed = true />
	</cfcatch>
	</cftry>
</cfif>

<!--- DATA LOGIC --->
<cfquery name="art" datasource="cfartgallery">
	SELECT	*
	FROM		app.art
	WHERE	artid = <cfqueryparam cfsqltype="cf_sql_integer" value="#url.id#" />
</cfquery>

<!--- BROWSER OUTPUT --->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Art Detail</title>
</head>

<body>
	<cfif updateFailed>
		Uh oh...there was an error. Please try again.
	</cfif>
	<cfoutput query="art">
		<cfform name="editform" preservedata="no">
			Name <cfinput name="name" value="#artname#" required="yes" validate="noblanks" message="Please enter the name of the art piece" /><br />
			Price <cfinput name="price" value="#price#" required="yes" validate="float" /><br />
			Description <cfinput name="description" value="#description#" />
			<br />
			<cfinput name="submit" type="submit" value="Save" />
		</cfform>
	</cfoutput>
</body>
</html>