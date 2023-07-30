<cfcomponent>

    <cfproperty name="columnName" type="string">
    <cfproperty name="columnType" type="string">
    <cfproperty name="isMapped" type="boolean" default="false">

    <cffunction name="init" access="public" returntype="Column" output="false">
        <cfargument name="columnName" type="string" required="true">
        <cfargument name="columnType" type="string" required="true">
        <cfset variables.columnName = arguments.columnName>
        <cfset variables.columnType = arguments.columnType>
        <cfset variables.isMapped = false>
        <cfreturn this>
    </cffunction>

    <cffunction name="getName" access="public" returntype="string" output="false">
        <cfreturn variables.columnName>
    </cffunction>

    <cffunction name="getType" access="public" returntype="string" output="false">
        <cfreturn variables.columnType>
    </cffunction>

    <cffunction name="isMapped" access="public" returntype="boolean" output="false">
        <cfreturn variables.isMapped>
    </cffunction>

    <cffunction name="setMapped" access="public" returntype="void" output="false">
        <cfargument name="isMapped" type="boolean" required="true">
        <cfset variables.isMapped = arguments.isMapped>
    </cffunction>

</cfcomponent>
