<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="vols.aspx.vb" Inherits="Aeropuerto.vols" %>

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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <cc1:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" 
        TargetControlID="TextBox5" Format="dd/MM/yyyy" />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Data Vol"></asp:Label>
    <br />
    <br />
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
        <cc1:ConfirmButtonExtender ID="Button3_ConfirmButtonExtender" runat="server" 
            TargetControlID="Button3" ConfirmText="deseas volver??"/>
    </p>
    </form>
</body>
</html>
