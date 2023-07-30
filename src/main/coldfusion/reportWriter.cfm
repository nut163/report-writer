<cfinclude template="components/Database.cfc">
<cfinclude template="components/Table.cfc">
<cfinclude template="components/Column.cfc">
<cfinclude template="components/OutputFormat.cfc">
<cfinclude template="components/Delimiter.cfc">
<cfinclude template="components/RelationalKey.cfc">
<cfinclude template="components/UserInterface.cfc">
<cfinclude template="components/Title.cfc">
<cfinclude template="components/Header.cfc">
<cfinclude template="components/FieldMapper.cfc">
<cfinclude template="components/DynamicColumnUpdater.cfc">
<cfinclude template="components/PermissionChecker.cfc">

<cfset report = new Report()>
<cfset ui = new UserInterface()>

<cfoutput>
    <html>
        <head>
            <title>Report Writer</title>
            <link rel="stylesheet" type="text/css" href="styles/reportWriter.css">
            <script src="scripts/reportWriter.js"></script>
        </head>
        <body>
            <h1>Report Writer</h1>
            <form id="reportForm">
                <cfset ui.renderTitleInput()>
                <cfset ui.renderTableSelect()>
                <cfset ui.renderColumnSelect()>
                <cfset ui.renderHeaderInput()>
                <cfset ui.renderDelimiterSelect()>
                <cfset ui.renderFormatSelect()>
                <cfset ui.renderMapButton()>
            </form>
            <div id="reportOutput"></div>
        </body>
    </html>
</cfoutput>

<cfscript>
    function handleTableSelected() {
        var selectedTable = ui.getSelectedTable();
        var table = new Table(selectedTable);
        if (PermissionChecker.checkRelationalKey(table)) {
            ui.updateColumnSelect(table.getColumns());
        } else {
            ui.showError("Selected table does not have a relational key.");
        }
    }

    function handleColumnSelected() {
        var selectedColumn = ui.getSelectedColumn();
        var column = new Column(selectedColumn);
        report.mapField(column);
        ui.updateAvailableColumns(report.getUnmappedColumns());
    }

    function handleTitleSet() {
        var reportTitle = ui.getReportTitle();
        report.setTitle(reportTitle);
    }

    function handleHeadersSet() {
        var columnHeaders = ui.getColumnHeaders();
        report.setHeaders(columnHeaders);
    }

    function handleDelimiterSet() {
        var outputDelimiter = ui.getOutputDelimiter();
        report.setDelimiter(outputDelimiter);
    }

    function handleFormatSet() {
        var outputFormat = ui.getOutputFormat();
        report.setFormat(outputFormat);
    }

    function handleFieldsMapped() {
        var mappedFields = ui.getMappedFields();
        report.setMappedFields(mappedFields);
    }

    document.getElementById('tableSelect').addEventListener('change', handleTableSelected);
    document.getElementById('columnSelect').addEventListener('change', handleColumnSelected);
    document.getElementById('titleInput').addEventListener('change', handleTitleSet);
    document.getElementById('headerInput').addEventListener('change', handleHeadersSet);
    document.getElementById('delimiterSelect').addEventListener('change', handleDelimiterSet);
    document.getElementById('formatSelect').addEventListener('change', handleFormatSet);
    document.getElementById('mapButton').addEventListener('click', handleFieldsMapped);
</cfscript>