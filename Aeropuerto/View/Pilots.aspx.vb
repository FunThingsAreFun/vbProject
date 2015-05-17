Public Class Pilots
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim pilot = New Piloto(TextBox8.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text)
        aerop.addPilotos(pilot)
        Response.Redirect("pilots.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Response.Redirect("index.aspx")
    End Sub
End Class