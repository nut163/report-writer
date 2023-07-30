```coldfusion
<cfcomponent>

    <cffunction name="init" access="public" returntype="Database">
        <cfset variables.instance = {}>
        <cfset variables.instance.dsn = "">
        <cfset variables.instance.username = "">
        <cfset variables.instance.password = "">
        <cfreturn this>
    </cffunction>

    <cffunction name="setDSN" access="public" returntype="void">
        <cfargument name="dsn" type="string" required="yes">
        <cfset variables.instance.dsn = arguments.dsn>
    </cffunction>

    <cffunction name="setUsername" access="public" returntype="void">
        <cfargument name="username" type="string" required="yes">
        <cfset variables.instance.username = arguments.username>
    </cffunction>

    <cffunction name="setPassword" access="public" returntype="void">
        <cfargument name="password" type="string" required="yes">
        <cfset variables.instance.password = arguments.password>
    </cffunction>

    <cffunction name="getTables" access="public" returntype="query">
        <cfquery name="getTables" datasource="#variables.instance.dsn#" username="#variables.instance.username#" password="#variables.instance.password#">
            SELECT table_name 
            FROM information_schema.tables 
            WHERE table_schema = 'public'
        </cfquery>
        <cfreturn getTables>
    </cffunction>

    <cffunction name="getColumns" access="public" returntype="query">
        <cfargument name="tableName" type="string" required="yes">
        <cfquery name="getColumns" datasource="#variables.instance.dsn#" username="#variables.instance.username#" password="#variables.instance.password#">
            SELECT column_name 
            FROM information_schema.columns 
            WHERE table_name = '#arguments.tableName#'
        </cfquery>
        <cfreturn getColumns>
    </cffunction>

    <cffunction name="hasRelationalKey" access="public" returntype="boolean">
        <cfargument name="tableName" type="string" required="yes">
        <cfquery name="getKeys" datasource="#variables.instance.dsn#" username="#variables.instance.username#" password="#variables.instance.password#">
            SELECT constraint_type 
            FROM information_schema.table_constraints 
            WHERE table_name = '#arguments.tableName#' AND constraint_type = 'FOREIGN KEY'
        </cfquery>
        <cfif getKeys.recordCount gt 0>
            <cfreturn true>
        <cfelse>
            <cfreturn false>
        </cfif>
    </cffunction>

</cfcomponent>
```