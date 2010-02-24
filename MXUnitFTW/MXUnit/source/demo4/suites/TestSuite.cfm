<!--- create suite cfc instance --->
<cfset testSuite = createObject("component","mxunit.framework.TestSuite").TestSuite() />

<!--- add desired tests to suite --->
<cfset testSuite.addAll("demo4.tests.MyServiceTest") />
<cfset testSuite.addAll("demo4.tests.OtherServiceTest") />

<!--- run suite --->
<cfset results = testSuite.run() />

<!--- display results --->
<cfoutput>
	#results.getResultsOutput('html')#
</cfoutput>