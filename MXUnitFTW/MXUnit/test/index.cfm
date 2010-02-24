<cfset testComponent = createObject('component', 'resource.testing') />

<cfset testMeta = getMetadata(testComponent) />

<cfdump var="#testMeta#" />
