```coldfusion
<cfcomponent>

    <cfproperty name="outputFormat" type="string">

    <cffunction name="init" access="public" returntype="OutputFormat">
        <cfargument name="outputFormat" type="string" required="yes">
        <cfset variables.outputFormat = arguments.outputFormat>
        <cfreturn this>
    </cffunction>

    <cffunction name="getOutputFormat" access="public" returntype="string">
        <cfreturn variables.outputFormat>
    </cffunction>

    <cffunction name="setOutputFormat" access="public" returntype="void">
        <cfargument name="outputFormat" type="string" required="yes">
        <cfset variables.outputFormat = arguments.outputFormat>
    </cffunction>

</cfcomponent>
```