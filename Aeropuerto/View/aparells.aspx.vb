Public Class aparells
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim aparell = New Aparato(TextBox1.Text, TextBox2.Text, TextBox3.Text)
        aerop.addAparato(aparell)
        Response.Redirect("aparells.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Response.Redirect("index.aspx")
    End Sub
End Class