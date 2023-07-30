```javascript
var selectedTable, selectedColumn, reportTitle, columnHeaders, outputDelimiter, outputFormat, mappedFields, availableColumns;

function selectTable() {
    selectedTable = document.getElementById('tableSelect').value;
    checkRelationalKey(selectedTable);
    updateAvailableColumns();
}

function selectColumn() {
    selectedColumn = document.getElementById('columnSelect').value;
    mapFields();
}

function setTitle() {
    reportTitle = document.getElementById('titleInput').value;
}

function setHeaders() {
    columnHeaders = document.getElementById('headerInput').value.split(',');
}

function setDelimiter() {
    outputDelimiter = document.getElementById('delimiterSelect').value;
}

function setFormat() {
    outputFormat = document.getElementById('formatSelect').value;
}

function mapFields() {
    var field = selectedColumn;
    if (mappedFields.indexOf(field) === -1) {
        mappedFields.push(field);
        updateAvailableColumns();
    }
}

function updateAvailableColumns() {
    availableColumns = availableColumns.filter(function(column) {
        return mappedFields.indexOf(column) === -1;
    });
    var columnSelect = document.getElementById('columnSelect');
    columnSelect.innerHTML = '';
    availableColumns.forEach(function(column) {
        var option = document.createElement('option');
        option.value = column;
        option.text = column;
        columnSelect.appendChild(option);
    });
}

function checkRelationalKey(table) {
    // Assuming ajax function to check relational key from server
    ajax('POST', 'checkRelationalKey.cfc', {table: table}, function(response) {
        if (!response.hasRelationalKey) {
            alert('Selected table does not have a relational key.');
            selectedTable = null;
        }
    });
}

document.getElementById('tableSelect').addEventListener('change', selectTable);
document.getElementById('columnSelect').addEventListener('change', selectColumn);
document.getElementById('titleInput').addEventListener('change', setTitle);
document.getElementById('headerInput').addEventListener('change', setHeaders);
document.getElementById('delimiterSelect').addEventListener('change', setDelimiter);
document.getElementById('formatSelect').addEventListener('change', setFormat);
document.getElementById('mapButton').addEventListener('click', mapFields);
```