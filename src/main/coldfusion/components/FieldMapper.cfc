```coldfusion
<cfcomponent>

    <cffunction name="init" access="public" returntype="FieldMapper">
        <cfargument name="Database" type="Database" required="true">
        <cfset variables.Database = arguments.Database>
        <cfreturn this>
    </cffunction>

    <cffunction name="mapFields" access="public" returntype="void">
        <cfargument name="selectedTable" type="string" required="true">
        <cfargument name="selectedColumn" type="string" required="true">
        <cfargument name="mappedFields" type="struct" required="true">
        
        <cfset var table = variables.Database.getTable(arguments.selectedTable)>
        <cfset var column = table.getColumn(arguments.selectedColumn)>
        
        <cfif NOT StructKeyExists(arguments.mappedFields, arguments.selectedColumn)>
            <cfset arguments.mappedFields[arguments.selectedColumn] = column>
        <cfelse>
            <cfthrow message="This column has already been mapped.">
        </cfif>
    </cffunction>

    <cffunction name="getMappedFields" access="public" returntype="struct">
        <cfargument name="mappedFields" type="struct" required="true">
        <cfreturn arguments.mappedFields>
    </cffunction>

</cfcomponent>
```