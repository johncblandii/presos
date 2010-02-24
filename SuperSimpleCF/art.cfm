<cfset mycfc = CreateObject("component", "my") />
<cfset art = mycfc.getArt() />

<a href="artadd.cfm">Add New Art</a>
<hr />
<cfoutput query="art">
	<strong>#artname#</strong> (#DollarFormat(price)#) <a href="artdetail.cfm?id=#artid#">view</a> <br />
	by #firstname# #lastname#<br />
	#description#<br /><br />
</cfoutput>