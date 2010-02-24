<cfif NOT StructKeyExists(url, "id")>
	<cflocation url="art.cfm" />
</cfif>

<cfquery name="art" datasource="cfartgallery">
	SELECT	*
	FROM		app.art
	WHERE	artid = <cfqueryparam cfsqltype="cf_sql_integer" value="#url.id#" />
</cfquery>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Art Detail</title>
</head>

<body>
	<a href="art.cfm">&laquo; Back to Art List</a><br /><br />
	<cfoutput query="art">
		<img src="/cfdocs/images/artgallery/#largeimage#" /><br />
		<strong>#artname#</strong> (#DollarFormat(price)#)<br />
		#description#<br />
		<a href="artedit.cfm?id=#url.id#">edit</a>
	</cfoutput>
</body>
</html>