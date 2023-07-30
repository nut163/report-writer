```coldfusion
<cfcomponent>

    <cfproperty name="outputDelimiter" type="string">

    <cffunction name="init" access="public" returntype="Delimiter" output="false">
        <cfargument name="outputDelimiter" type="string" required="true">
        <cfset variables.outputDelimiter = arguments.outputDelimiter>
        <cfreturn this>
    </cffunction>

    <cffunction name="getDelimiter" access="public" returntype="string" output="false">
        <cfreturn variables.outputDelimiter>
    </cffunction>

    <cffunction name="setDelimiter" access="public" returntype="void" output="false">
        <cfargument name="outputDelimiter" type="string" required="true">
        <cfset variables.outputDelimiter = arguments.outputDelimiter>
    </cffunction>

</cfcomponent>
```