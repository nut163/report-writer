```coldfusion
<cfcomponent>

    <cffunction name="init" access="public" returntype="UserInterface">
        <cfset variables.selectTable = createObject("component", "Table")>
        <cfset variables.selectColumn = createObject("component", "Column")>
        <cfset variables.setTitle = createObject("component", "Title")>
        <cfset variables.setHeaders = createObject("component", "Header")>
        <cfset variables.setDelimiter = createObject("component", "Delimiter")>
        <cfset variables.setFormat = createObject("component", "OutputFormat")>
        <cfset variables.mapFields = createObject("component", "FieldMapper")>
        <cfset variables.updateAvailableColumns = createObject("component", "DynamicColumnUpdater")>
        <cfset variables.checkRelationalKey = createObject("component", "PermissionChecker")>
        <cfreturn this>
    </cffunction>

    <cffunction name="selectTable" access="public" returntype="void">
        <cfargument name="selectedTable" type="string" required="yes">
        <cfset variables.selectTable.select(arguments.selectedTable)>
    </cffunction>

    <cffunction name="selectColumn" access="public" returntype="void">
        <cfargument name="selectedColumn" type="string" required="yes">
        <cfset variables.selectColumn.select(arguments.selectedColumn)>
    </cffunction>

    <cffunction name="setTitle" access="public" returntype="void">
        <cfargument name="reportTitle" type="string" required="yes">
        <cfset variables.setTitle.set(arguments.reportTitle)>
    </cffunction>

    <cffunction name="setHeaders" access="public" returntype="void">
        <cfargument name="columnHeaders" type="array" required="yes">
        <cfset variables.setHeaders.set(arguments.columnHeaders)>
    </cffunction>

    <cffunction name="setDelimiter" access="public" returntype="void">
        <cfargument name="outputDelimiter" type="string" required="yes">
        <cfset variables.setDelimiter.set(arguments.outputDelimiter)>
    </cffunction>

    <cffunction name="setFormat" access="public" returntype="void">
        <cfargument name="outputFormat" type="string" required="yes">
        <cfset variables.setFormat.set(arguments.outputFormat)>
    </cffunction>

    <cffunction name="mapFields" access="public" returntype="void">
        <cfargument name="mappedFields" type="struct" required="yes">
        <cfset variables.mapFields.map(arguments.mappedFields)>
    </cffunction>

    <cffunction name="updateAvailableColumns" access="public" returntype="void">
        <cfset variables.updateAvailableColumns.update()>
    </cffunction>

    <cffunction name="checkRelationalKey" access="public" returntype="boolean">
        <cfargument name="selectedTable" type="string" required="yes">
        <cfreturn variables.checkRelationalKey.check(arguments.selectedTable)>
    </cffunction>

</cfcomponent>
```