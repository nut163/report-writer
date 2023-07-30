```coldfusion
<cfcomponent>

    <cfproperty name="reportTitle" type="string">
    <cfproperty name="columnHeaders" type="array">
    <cfproperty name="outputDelimiter" type="string">
    <cfproperty name="outputFormat" type="string">
    <cfproperty name="mappedFields" type="struct">
    <cfproperty name="availableColumns" type="array">

    <cffunction name="init" access="public" returntype="Report" output="false">
        <cfargument name="title" type="string" required="false" default="">
        <cfargument name="headers" type="array" required="false" default="#arrayNew(1)#">
        <cfargument name="delimiter" type="string" required="false" default=",">
        <cfargument name="format" type="string" required="false" default="csv">
        <cfargument name="fields" type="struct" required="false" default="#structNew()#">
        <cfargument name="columns" type="array" required="false" default="#arrayNew(1)#">

        <cfset variables.reportTitle = arguments.title>
        <cfset variables.columnHeaders = arguments.headers>
        <cfset variables.outputDelimiter = arguments.delimiter>
        <cfset variables.outputFormat = arguments.format>
        <cfset variables.mappedFields = arguments.fields>
        <cfset variables.availableColumns = arguments.columns>

        <cfreturn this>
    </cffunction>

    <cffunction name="setTitle" access="public" returntype="void" output="false">
        <cfargument name="title" type="string" required="true">
        <cfset variables.reportTitle = arguments.title>
    </cffunction>

    <cffunction name="setHeaders" access="public" returntype="void" output="false">
        <cfargument name="headers" type="array" required="true">
        <cfset variables.columnHeaders = arguments.headers>
    </cffunction>

    <cffunction name="setDelimiter" access="public" returntype="void" output="false">
        <cfargument name="delimiter" type="string" required="true">
        <cfset variables.outputDelimiter = arguments.delimiter>
    </cffunction>

    <cffunction name="setFormat" access="public" returntype="void" output="false">
        <cfargument name="format" type="string" required="true">
        <cfset variables.outputFormat = arguments.format>
    </cffunction>

    <cffunction name="mapFields" access="public" returntype="void" output="false">
        <cfargument name="fields" type="struct" required="true">
        <cfset variables.mappedFields = arguments.fields>
    </cffunction>

    <cffunction name="updateAvailableColumns" access="public" returntype="void" output="false">
        <cfargument name="columns" type="array" required="true">
        <cfset variables.availableColumns = arguments.columns>
    </cffunction>

</cfcomponent>
```