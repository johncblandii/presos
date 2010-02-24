<cfset service = CreateObject("component", "components.MyService") />

<cfif service.echo("hi") EQ "hi">
	"hi" - Success
<cfelse>
	"hi" - Failed
</cfif>
<br />
<cfif service.echo("bye") EQ "bye">
	"bye" - Success
<cfelse>
	"bye" - Failed
</cfif>
<br />
<cfif service.echo("kcdevcore") EQ "kcdevcore">
	"kcdevcore" - Success
<cfelse>
	"kcdevcore" - Failed
</cfif>