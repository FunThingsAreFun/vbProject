Public Class vols
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim vol = New Vol(DropDownList1.SelectedItem.Value, Calendar1.SelectedDate, TextBox4.Text, DropDownList2.SelectedItem.Value)
        aerop.addVuelos(vol)
        Response.Redirect("vols.aspx")
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        Response.Redirect("index.aspx")
    End Sub
End Class