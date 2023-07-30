```coldfusion
<cfcomponent>

    <cffunction name="init" access="public" returntype="Header" output="false">
        <cfargument name="columnHeaders" type="array" required="true">
        <cfset variables.columnHeaders = arguments.columnHeaders>
        <cfreturn this>
    </cffunction>

    <cffunction name="setHeaders" access="public" returntype="void" output="false">
        <cfargument name="columnHeaders" type="array" required="true">
        <cfset variables.columnHeaders = arguments.columnHeaders>
    </cffunction>

    <cffunction name="getHeaders" access="public" returntype="array" output="false">
        <cfreturn variables.columnHeaders>
    </cffunction>

    <cffunction name="addHeader" access="public" returntype="void" output="false">
        <cfargument name="header" type="string" required="true">
        <cfset ArrayAppend(variables.columnHeaders, arguments.header)>
    </cffunction>

    <cffunction name="removeHeader" access="public" returntype="void" output="false">
        <cfargument name="header" type="string" required="true">
        <cfset ArrayDelete(variables.columnHeaders, arguments.header)>
    </cffunction>

</cfcomponent>
```