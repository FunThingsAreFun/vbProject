<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="vols.aspx.vb" Inherits="Aeropuerto.vols" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="IdVol" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IdVol" HeaderText="IdVol" InsertVisible="False" 
                    ReadOnly="True" SortExpression="IdVol" />
                <asp:BoundField DataField="IdAparell" HeaderText="IdAparell" 
                    SortExpression="IdAparell" />
                <asp:BoundField DataField="DataVol" HeaderText="DataVol" 
                    SortExpression="DataVol" />
                <asp:BoundField DataField="DuradaVol" HeaderText="DuradaVol" 
                    SortExpression="DuradaVol" />
                <asp:BoundField DataField="NIFPilot" HeaderText="NIFPilot" 
                    SortExpression="NIFPilot" />
            </Columns>
            <EmptyDataTemplate>
                No hi han vols
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Vol] WHERE [IdVol] = @IdVol" 
            InsertCommand="INSERT INTO [Vol] ([IdAparell], [DataVol], [DuradaVol], [NIFPilot]) VALUES (@IdAparell, @DataVol, @DuradaVol, @NIFPilot)" 
            SelectCommand="SELECT * FROM [Vol]" 
            UpdateCommand="UPDATE [Vol] SET [IdAparell] = @IdAparell, [DataVol] = @DataVol, [DuradaVol] = @DuradaVol, [NIFPilot] = @NIFPilot WHERE [IdVol] = @IdVol">
            <DeleteParameters>
                <asp:Parameter Name="IdVol" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdAparell" Type="Int32" />
                <asp:Parameter DbType="Date" Name="DataVol" />
                <asp:Parameter Name="DuradaVol" Type="Double" />
                <asp:Parameter Name="NIFPilot" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdAparell" Type="Int32" />
                <asp:Parameter DbType="Date" Name="DataVol" />
                <asp:Parameter Name="DuradaVol" Type="Double" />
                <asp:Parameter Name="NIFPilot" Type="Int32" />
                <asp:Parameter Name="IdVol" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    <br />
    <asp:Calendar ID="Calendar1" runat="server" SelectedDate="05/17/2015 22:49:17" 
        VisibleDate="2015-05-17">
    </asp:Calendar>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="idAparell" 
        DataValueField="idAparell">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [idAparell] FROM [Aparato]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="id aparell"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource3" DataTextField="NIFPilot" 
        DataValueField="NIFPilot">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [NIFPilot] FROM [Piloto]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="nif pilot"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="durada vol (hores)"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Insertar" />
    <p>
        <asp:Button ID="Button3" runat="server" Text="Tornar" />
    </p>
    </form>
</body>
</html>
