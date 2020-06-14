<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="sigeco.Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Left" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="id_cliente" Theme="PlasticBlue" Caption="Listado de Clientes">
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="id_cliente" ReadOnly="True" Visible="False" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Nombres" FieldName="nombres" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Apellidos" FieldName="apellidos" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Dirección" FieldName="direccion" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Teléfono" FieldName="telefono" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Celular" FieldName="celular" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn Caption="Fecha de Nacimiento" FieldName="fecha_nacimiento" VisibleIndex="7">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn Caption="Mail" FieldName="mail" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Administracion" FieldName="cargo" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Cédula/RUC" FieldName="dni_ruc" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="tipo_cliente" Visible="False" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ubi_id" Visible="False" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_vendedor" Visible="False" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn Caption="Estado" FieldName="estado_cliente" VisibleIndex="14">
            </dx:GridViewDataCheckColumn>
        </Columns>
        <Settings ShowFilterRow="True" />
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ventasConnectionString %>" DeleteCommand="DELETE FROM [cliente] WHERE [id_cliente] = @id_cliente" InsertCommand="INSERT INTO [cliente] ([nombres], [apellidos], [direccion], [telefono], [celular], [fecha_nacimiento], [mail], [cargo], [dni_ruc], [tipo_cliente], [ubi_id], [id_vendedor], [estado_cliente]) VALUES (@nombres, @apellidos, @direccion, @telefono, @celular, @fecha_nacimiento, @mail, @cargo, @dni_ruc, @tipo_cliente, @ubi_id, @id_vendedor, @estado_cliente)" SelectCommand="SELECT * FROM [cliente]" UpdateCommand="UPDATE [cliente] SET [nombres] = @nombres, [apellidos] = @apellidos, [direccion] = @direccion, [telefono] = @telefono, [celular] = @celular, [fecha_nacimiento] = @fecha_nacimiento, [mail] = @mail, [cargo] = @cargo, [dni_ruc] = @dni_ruc, [tipo_cliente] = @tipo_cliente, [ubi_id] = @ubi_id, [id_vendedor] = @id_vendedor, [estado_cliente] = @estado_cliente WHERE [id_cliente] = @id_cliente">
        <DeleteParameters>
            <asp:Parameter Name="id_cliente" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="direccion" Type="String" />
            <asp:Parameter Name="telefono" Type="Decimal" />
            <asp:Parameter Name="celular" Type="Decimal" />
            <asp:Parameter Name="fecha_nacimiento" Type="DateTime" />
            <asp:Parameter Name="mail" Type="String" />
            <asp:Parameter Name="cargo" Type="String" />
            <asp:Parameter Name="dni_ruc" Type="String" />
            <asp:Parameter Name="tipo_cliente" Type="Decimal" />
            <asp:Parameter Name="ubi_id" Type="Decimal" />
            <asp:Parameter Name="id_vendedor" Type="Decimal" />
            <asp:Parameter Name="estado_cliente" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="direccion" Type="String" />
            <asp:Parameter Name="telefono" Type="Decimal" />
            <asp:Parameter Name="celular" Type="Decimal" />
            <asp:Parameter Name="fecha_nacimiento" Type="DateTime" />
            <asp:Parameter Name="mail" Type="String" />
            <asp:Parameter Name="cargo" Type="String" />
            <asp:Parameter Name="dni_ruc" Type="String" />
            <asp:Parameter Name="tipo_cliente" Type="Decimal" />
            <asp:Parameter Name="ubi_id" Type="Decimal" />
            <asp:Parameter Name="id_vendedor" Type="Decimal" />
            <asp:Parameter Name="estado_cliente" Type="Boolean" />
            <asp:Parameter Name="id_cliente" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
