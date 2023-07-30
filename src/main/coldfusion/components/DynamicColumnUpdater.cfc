```coldfusion
<cfcomponent>

    <cffunction name="updateAvailableColumns" access="public" returntype="void" output="false">
        <cfargument name="selectedTable" type="string" required="true">
        <cfargument name="mappedFields" type="array" required="true">
        
        <cfset var availableColumns = ArrayNew(1)>
        
        <cfquery name="getColumns" datasource="your_datasource">
            SELECT COLUMN_NAME 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_NAME = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.selectedTable#">
        </cfquery>
        
        <cfloop query="getColumns">
            <cfif NOT ArrayFind(arguments.mappedFields, COLUMN_NAME)>
                <cfset ArrayAppend(availableColumns, COLUMN_NAME)>
            </cfif>
        </cfloop>
        
        <cfset SESSION.availableColumns = availableColumns>
    </cffunction>

</cfcomponent>
```