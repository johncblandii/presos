<cfparam name="URL.output" default="html">

<cfscript>
	DTS = createObject("component","mxunit.runner.DirectoryTestSuite");
	excludes = "";
	results = DTS.run(
				directory     = "/volumes/dev/personal/jcbii/presentations/2010/mxunit/source/generated/tests/",
				componentPath = "",
				recurse       = "true",
				excludes      = "#excludes#"
				);
</cfscript>
 
<cfoutput>#results.getResultsOutput(URL.output)#</cfoutput>  			
	
