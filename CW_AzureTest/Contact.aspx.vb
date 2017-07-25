Imports System.IO
'Imports DevExpress.Web.ASPxGridExporterBase
Imports DevExpress.Export
Imports DevExpress.XtraPrinting
Imports System

Public Class Contact
    'Inherits Page
    Inherits System.Web.UI.Page

    Private Sub excelButton_Click(sender As Object, e As EventArgs) Handles excelButton.Click

        ASPxGridViewExporter1.WriteXlsxToResponse(New XlsxExportOptionsEx With {.ExportType = ExportType.WYSIWYG})

        'GridExport.W(New XlsxExportOptionsEx With {.ExportType = ExportType.WYSIWYG})
    End Sub
End Class