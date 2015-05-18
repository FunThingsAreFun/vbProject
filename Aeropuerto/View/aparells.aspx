<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="aparells.aspx.vb" Inherits="Aeropuerto.aparells" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="idAparell" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idAparell" HeaderText="idAparell" 
                    InsertVisible="False" ReadOnly="True" SortExpression="idAparell" />
                <asp:BoundField DataField="longitud" HeaderText="longitud" 
                    SortExpression="longitud" />
                <asp:BoundField DataField="pes" HeaderText="pes" SortExpression="pes" />
                <asp:BoundField DataField="consumHora" HeaderText="consumHora" 
                    SortExpression="consumHora" />
            </Columns>
            <EmptyDataTemplate>
                No hi han aparells
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Aparato] WHERE [idAparell] = @idAparell" 
            InsertCommand="INSERT INTO [Aparato] ([longitud], [pes], [consumHora]) VALUES (@longitud, @pes, @consumHora)" 
            SelectCommand="SELECT * FROM [Aparato]" 
            UpdateCommand="UPDATE [Aparato] SET [longitud] = @longitud, [pes] = @pes, [consumHora] = @consumHora WHERE [idAparell] = @idAparell">
            <DeleteParameters>
                <asp:Parameter Name="idAparell" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="longitud" Type="String" />
                <asp:Parameter Name="pes" Type="String" />
                <asp:Parameter Name="consumHora" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="longitud" Type="String" />
                <asp:Parameter Name="pes" Type="String" />
                <asp:Parameter Name="consumHora" Type="String" />
                <asp:Parameter Name="idAparell" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Longitud"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Pes"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Consum per hora"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" style="height: 26px" Text="Insertar" />
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Button ID="Button2" runat="server" Text="Tornar" />
        <cc1:ConfirmButtonExtender ID="Button2_ConfirmButtonExtender" runat="server" 
            TargetControlID="Button2" ConfirmText="deseas volver??"/>
    </p>
    </form>
</body>
</html>
