```coldfusion
<cfcomponent>

    <cfproperty name="reportTitle" type="string">

    <cffunction name="init" access="public" returntype="Title" output="false">
        <cfargument name="reportTitle" type="string" required="false" default="">
        <cfset variables.reportTitle = arguments.reportTitle>
        <cfreturn this>
    </cffunction>

    <cffunction name="getReportTitle" access="public" returntype="string" output="false">
        <cfreturn variables.reportTitle>
    </cffunction>

    <cffunction name="setReportTitle" access="public" returntype="void" output="false">
        <cfargument name="reportTitle" type="string" required="true">
        <cfset variables.reportTitle = arguments.reportTitle>
    </cffunction>

</cfcomponent>
```