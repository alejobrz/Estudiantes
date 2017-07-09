<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="Unidad_3_Paso_6.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 1072px; margin-left: 40px">
    
        Identificación:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="199px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Nombres : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="199px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Apellidos"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="197px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Dirección : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="196px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Teléfono : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="197px"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Seleccione la asignatura&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList 
            ID="DropDownList1" runat="server">
            <asp:ListItem>Inglés 0</asp:ListItem>
            <asp:ListItem>Inglés 1</asp:ListItem>
            <asp:ListItem>Inglés 2</asp:ListItem>
            <asp:ListItem>Bases de datos básicos nivel 1</asp:ListItem>
            <asp:ListItem>Bases de datos básicos nivel 2</asp:ListItem>
            <asp:ListItem>Algoritmos</asp:ListItem>
            <asp:ListItem>Introducción a la programación</asp:ListItem>
            <asp:ListItem>Análisis de sistemas</asp:ListItem>
            <asp:ListItem>Diseño de sistemas</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
&nbsp;<asp:Label ID="Label6" runat="server" Text="Correo electrónico : "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="198px"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Ingresar datos" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Actualizar datos" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Borrar registros" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
            DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Identificacion">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Identificacion" HeaderText="Identificacion" 
                    ReadOnly="True" SortExpression="Identificacion" />
                <asp:BoundField DataField="Nombres" HeaderText="Nombres" 
                    SortExpression="Nombres" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" 
                    SortExpression="Apellidos" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" 
                    SortExpression="Direccion" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" 
                    SortExpression="Telefono" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Asignatura_escogida" 
                    HeaderText="Asignatura_escogida" SortExpression="Asignatura_escogida" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="C:\Users\BETICO\Documents\Visual Studio 2010\Projects\Unidad 3 Paso 6\Unidad 3 Paso 6\Estudiantes.accdb" 
            DeleteCommand="DELETE FROM [Estudiantes] WHERE [Identificacion] = ?" 
            InsertCommand="INSERT INTO [Estudiantes] ([Identificacion], [Nombres], [Apellidos], [Direccion], [Telefono], [Email], [Asignatura_escogida]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [Estudiantes]" 
            UpdateCommand="UPDATE [Estudiantes] SET [Nombres] = ?, [Apellidos] = ?, [Direccion] = ?, [Telefono] = ?, [Email] = ?, [Asignatura_escogida] = ? WHERE [Identificacion] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Identificacion" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Identificacion" Type="Int32" />
                <asp:Parameter Name="Nombres" Type="String" />
                <asp:Parameter Name="Apellidos" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Telefono" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Asignatura_escogida" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombres" Type="String" />
                <asp:Parameter Name="Apellidos" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Telefono" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Asignatura_escogida" Type="String" />
                <asp:Parameter Name="Identificacion" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
