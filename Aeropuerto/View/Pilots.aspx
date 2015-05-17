<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Pilots.aspx.vb" Inherits="Aeropuerto.Pilots" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="NIFPilot" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="NIFPilot" HeaderText="NIFPilot" ReadOnly="True" 
                    SortExpression="NIFPilot" />
                <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                <asp:BoundField DataField="Cognoms" HeaderText="Cognoms" 
                    SortExpression="Cognoms" />
                <asp:BoundField DataField="Telefon" HeaderText="Telefon" 
                    SortExpression="Telefon" />
                <asp:BoundField DataField="Adreça" HeaderText="Adreça" 
                    SortExpression="Adreça" />
                <asp:BoundField DataField="NumAterratges" HeaderText="NumAterratges" 
                    SortExpression="NumAterratges" />
                <asp:BoundField DataField="NumHoresVol" HeaderText="NumHoresVol" 
                    SortExpression="NumHoresVol" />
            </Columns>
            <EmptyDataTemplate>
                No hi han pilots
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Piloto] WHERE [NIFPilot] = @NIFPilot" 
            InsertCommand="INSERT INTO [Piloto] ([NIFPilot], [Nom], [Cognoms], [Telefon], [Adreça], [NumAterratges], [NumHoresVol]) VALUES (@NIFPilot, @Nom, @Cognoms, @Telefon, @Adreça, @NumAterratges, @NumHoresVol)" 
            SelectCommand="SELECT * FROM [Piloto]" 
            UpdateCommand="UPDATE [Piloto] SET [Nom] = @Nom, [Cognoms] = @Cognoms, [Telefon] = @Telefon, [Adreça] = @Adreça, [NumAterratges] = @NumAterratges, [NumHoresVol] = @NumHoresVol WHERE [NIFPilot] = @NIFPilot">
            <DeleteParameters>
                <asp:Parameter Name="NIFPilot" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NIFPilot" Type="String" />
                <asp:Parameter Name="Nom" Type="String" />
                <asp:Parameter Name="Cognoms" Type="String" />
                <asp:Parameter Name="Telefon" Type="Int32" />
                <asp:Parameter Name="Adreça" Type="String" />
                <asp:Parameter Name="NumAterratges" Type="Int32" />
                <asp:Parameter Name="NumHoresVol" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nom" Type="String" />
                <asp:Parameter Name="Cognoms" Type="String" />
                <asp:Parameter Name="Telefon" Type="Int32" />
                <asp:Parameter Name="Adreça" Type="String" />
                <asp:Parameter Name="NumAterratges" Type="Int32" />
                <asp:Parameter Name="NumHoresVol" Type="Double" />
                <asp:Parameter Name="NIFPilot" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" Text="nif pilot"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="nom"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="cognoms"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="telefon"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" Text="adreça"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="numero d'aterratges"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="numero d'hores de vol"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Insertar" />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Tornar" />
    </form>
</body>
</html>
