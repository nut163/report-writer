```coldfusion
<cfcomponent>

    <cffunction name="checkRelationalKey" access="public" returntype="boolean">
        <cfargument name="selectedTable" type="string" required="yes">
        
        <cfset var query = "">
        <cfset var result = false>
        
        <cfquery name="query" datasource="your_datasource">
            SELECT COLUMN_NAME
            FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
            WHERE TABLE_NAME = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.selectedTable#">
            AND CONSTRAINT_NAME = 'PRIMARY'
        </cfquery>
        
        <cfif query.recordCount gt 0>
            <cfset result = true>
        </cfif>
        
        <cfreturn result>
    </cffunction>

</cfcomponent>
```