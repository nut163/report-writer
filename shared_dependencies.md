Shared Dependencies:

1. Exported Variables:
   - `selectedTable`: The name of the table selected by the user.
   - `selectedColumn`: The name of the column selected by the user.
   - `reportTitle`: The title of the report given by the user.
   - `columnHeaders`: The labels for each column header.
   - `outputDelimiter`: The delimiter chosen by the user.
   - `outputFormat`: The output file format chosen by the user.
   - `mappedFields`: The database fields mapped to the report columns.
   - `availableColumns`: The columns available for mapping.

2. Data Schemas:
   - `ReportSchema`: Schema for the report including title, column headers, output delimiter, output format, and mapped fields.
   - `TableSchema`: Schema for the database table including table name and relational key.
   - `ColumnSchema`: Schema for the columns in the table.

3. DOM Element IDs:
   - `tableSelect`: The select element for choosing a table.
   - `columnSelect`: The select element for choosing a column.
   - `titleInput`: The input element for entering the report title.
   - `headerInput`: The input element for entering column headers.
   - `delimiterSelect`: The select element for choosing the output delimiter.
   - `formatSelect`: The select element for choosing the output format.
   - `mapButton`: The button for mapping database fields to report columns.

4. Message Names:
   - `TableSelected`: Message sent when a table is selected.
   - `ColumnSelected`: Message sent when a column is selected.
   - `TitleSet`: Message sent when a report title is set.
   - `HeadersSet`: Message sent when column headers are set.
   - `DelimiterSet`: Message sent when an output delimiter is chosen.
   - `FormatSet`: Message sent when an output format is chosen.
   - `FieldsMapped`: Message sent when database fields are mapped to report columns.

5. Function Names:
   - `selectTable()`: Function to handle table selection.
   - `selectColumn()`: Function to handle column selection.
   - `setTitle()`: Function to set the report title.
   - `setHeaders()`: Function to set column headers.
   - `setDelimiter()`: Function to set the output delimiter.
   - `setFormat()`: Function to set the output format.
   - `mapFields()`: Function to map database fields to report columns.
   - `updateAvailableColumns()`: Function to update the columns available for mapping.
   - `checkRelationalKey()`: Function to check if a table has a relational key.