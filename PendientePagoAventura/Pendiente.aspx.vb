Public Class Pendiente
    Inherits System.Web.UI.Page
    Public dst As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonBuscar_Click(sender As Object, e As EventArgs) Handles ButtonBuscar.Click

        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from dbo.pendiente where placa LIKE '%" & TextPlaca.Text & "%'", Conexiones.Cnn)
        Dim ds As New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            TextEntrada.Text = ds.Tables(0).Rows(0).Item("fecha_entrada")
            TextSalida.Text = ds.Tables(0).Rows(0).Item("fecha_salida")
            TextGenerada.Text = ds.Tables(0).Rows(0).Item("fecha_generacion")
            TextConcepto.Text = ds.Tables(0).Rows(0).Item("concepto")
            TextAnula.Text = ds.Tables(0).Rows(0).Item("concepto_anulacion")

        Else
            TextEntrada.Text = ""
            TextSalida.Text = ""
            TextGenerada.Text = ""
            TextConcepto.Text = ""
            TextAnula.Text = ""
        End If

        Conexiones.Cnn.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles ButtonImp.Click

        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from dbo.pendiente where placa LIKE '%" & TextPlaca.Text & "%'", Conexiones.Cnn)
        dst = New DataSet
        da.Fill(dst)
        If dst.Tables(0).Rows.Count > 0 Then
            'Para enviar los valores al formulario de reporte
            Session("grid") = dst.Tables(0)
            Session("fecha") = Now
            Session("materia") = "Literatura"
            Session("total") = dst.Tables(0).Rows.Count

            Server.Transfer("Imprimir.aspx")
        End If


        Conexiones.Cnn.Close()

    End Sub
End Class


