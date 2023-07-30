```coldfusion
<cfcomponent>

    <cffunction name="checkRelationalKey" access="public" returntype="boolean">
        <cfargument name="selectedTable" type="string" required="yes">
        
        <cfset var hasRelationalKey = false>
        
        <cfquery name="getKeys" datasource="your_datasource">
            SELECT COLUMN_NAME
            FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
            WHERE TABLE_NAME = <cfqueryparam value="#arguments.selectedTable#" cfsqltype="cf_sql_varchar">
            AND CONSTRAINT_NAME = 'PRIMARY'
        </cfquery>
        
        <cfif getKeys.recordCount gt 0>
            <cfset hasRelationalKey = true>
        </cfif>
        
        <cfreturn hasRelationalKey>
    </cffunction>

</cfcomponent>
```