Public Class Index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = aerop.pNom()

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Label3.Text = aerop.calcularCosteVuelo(DropDownList1.SelectedItem.Value)
        Label3.Visible = True
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Response.Redirect("vols.aspx")
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        Response.Redirect("pilots.aspx")
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
        Response.Redirect("aparells.aspx")
    End Sub
End Class