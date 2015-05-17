<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Index.aspx.vb" Inherits="Aeropuerto.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="cost total de vol"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="idAparell" 
            DataValueField="idAparell">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [idAparell] FROM [Aparato]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Calcular Cost" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Vols" style="height: 26px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Pilots" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Aparells" />
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
