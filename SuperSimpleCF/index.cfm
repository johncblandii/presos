<cfif StructKeyExists(form, "name")>
	<cfset errors = ArrayNew(1) />
	<cfif len(form.name) EQ 0>
		<cfset ArrayAppend(errors, "Name wasn't entered.") />
	</cfif>
	<cfif len(form.email) EQ 0>
		<cfset ArrayAppend(errors, "Email wasn't entered.") />
	</cfif>
	<cfif ArrayLen(errors) GT 0>
		There were errors!
		<cfdump var="#errors#" />
	<cfelse>
		<cfoutput>
			<strong>Welcome, #form.name#!</strong>
		</cfoutput>
	</cfif>
</cfif>

<cfform name="form1" method="post" preservedata="yes">
	<p>
		<label>Name
			<cfinput id="name" type="text" name="name" required="yes" validate="noblanks" message="Please enter your name."/>
		</label>
	</p>
	<p>
		<label>Email
			<cfinput id="email" type="text" name="email" required="yes" validate="email" message="Please enter a valid email.">
		</label>
	</p>
	<p>
		<input type="submit" name="save" id="save" value="Submit">
	</p>
</cfform>