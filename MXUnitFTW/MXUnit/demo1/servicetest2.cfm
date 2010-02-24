<cfset service = CreateObject("component", "components.MyService") />

<cfif isarray(service) AND ArrayLen(service.getProducts()) GT 0>
	"has products" - Success
<cfelse>
	"has products" - Failed
</cfif>