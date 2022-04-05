Public Class imprimir
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSource = Session("grid")
        GridView1.DataBind()
        lbFecha.Text = Session("fecha")
        LbTotal.Text = Session("total")

        Session.Remove("grid")
        Session.Remove("fecha")
        Session.Remove("total")
    End Sub

    Protected Sub ButtonRegre_Click(sender As Object, e As EventArgs) Handles ButtonRegre.Click

        Response.Redirect("~/Pendiente.aspx")

    End Sub
End Class

