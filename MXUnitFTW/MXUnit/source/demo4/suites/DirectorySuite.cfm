<link rel="stylesheet" type="text/css" href="/resources/ext2/resources/css/ext-all.css" />
<script src="/resources/ext2/adapter/ext/ext-base.js"></script>
<script src="/resources/ext2/ext-all.js"></script>

<cfparam name="URL.output" default="extjs">
<cfparam name="URL.quiet" default="false">

<cfset dir = expandPath("../tests")>
<cfoutput><h1>#dir#</h1></cfoutput>

<cfset DTS = createObject("component","mxunit.runner.DirectoryTestSuite")>
<cfinvoke component="#DTS#"
  method="run"
  directory="#dir#"
  recurse="true"
  returnvariable="Results"
  componentPath="demo4.tests" />

<cfif NOT URL.quiet>
  <cfif NOT StructIsEmpty(DTS.getCatastrophicErrors())>
    <cfdump var="#DTS.getCatastrophicErrors()#" expand="false" label="#StructCount(DTS.getCatastrophicErrors())# Catastrophic Errors">
  </cfif>

  <cfsetting showdebugoutput="true">
  <cfoutput>#results.getResultsOutput(URL.output)#</cfoutput>
</cfif>
<cfdump var="#results.getDebug()#">