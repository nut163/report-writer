```coldfusion
<cfcomponent>

    <cfproperty name="tableName" type="string">
    <cfproperty name="relationalKey" type="string">

    <cffunction name="init" access="public" returntype="Table">
        <cfargument name="tableName" type="string" required="yes">
        <cfargument name="relationalKey" type="string" required="yes">
        <cfset variables.tableName = arguments.tableName>
        <cfset variables.relationalKey = arguments.relationalKey>
        <cfreturn this>
    </cffunction>

    <cffunction name="getTableName" access="public" returntype="string">
        <cfreturn variables.tableName>
    </cffunction>

    <cffunction name="setTableName" access="public" returntype="void">
        <cfargument name="tableName" type="string" required="yes">
        <cfset variables.tableName = arguments.tableName>
    </cffunction>

    <cffunction name="getRelationalKey" access="public" returntype="string">
        <cfreturn variables.relationalKey>
    </cffunction>

    <cffunction name="setRelationalKey" access="public" returntype="void">
        <cfargument name="relationalKey" type="string" required="yes">
        <cfset variables.relationalKey = arguments.relationalKey>
    </cffunction>

</cfcomponent>
```