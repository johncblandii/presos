<cfparam name="updateFailed" type="boolean" default="false" />

<!--- USER INPUT VALIDATION --->
<cfif StructKeyExists(form, "price") AND isNumeric(form.price)>
	<cftry>
		<cfquery name="artinsert" datasource="cfartgallery">
			INSERT INTO 	app.art(price, artname, description, artistid)
			VALUES		(	<cfqueryparam cfsqltype="cf_sql_decimal" value="#form.price#" />,
							<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.name#" />,
							<cfqueryparam cfsqltype="cf_sql_clob" value="#form.description#" />,
							<cfqueryparam cfsqltype="cf_sql_integer" value="#form.artistid#" />	)
		</cfquery>
		<cflocation url="art.cfm" />
	<cfcatch type="any">
		<cfdump var="#cfcatch#" />
	</cfcatch>
	</cftry>
</cfif>

<cfquery name="artists" datasource="cfartgallery">
	SELECT	artistid, firstname, lastname
	FROM		app.artists
	ORDER BY	lastname ASC
</cfquery>

<cfset mycfc = CreateObject("component", "my") />
<cfset art = mycfc.getArt() />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert New Art</title>
</head>
<body>
	<cfform name="addform" preservedata="yes">
		Artist 
		<cfselect name="artistid" query="artists" queryPosition="below" display="lastname" value="artistid">
			<option>Select an artist</option>
		</cfselect>
		<br/>
		Name <cfinput name="name" required="yes" validate="noblanks" message="Please enter the name of the art piece" /><br />
		Price <cfinput name="price" required="yes" validate="float" /><br />
		Description <cfinput name="description" />
		<br />
		<cfinput name="submit" type="submit" value="Save" />
	</cfform>
	<br />
	<hr />
	<cfoutput query="art">
	<strong>#artname#</strong> (#DollarFormat(price)#) <a href="artdetail.cfm?id=#artid#">view</a> <br />
	by #firstname# #lastname#<br />
	#description#<br /><br />
</cfoutput>
</body>
</html>