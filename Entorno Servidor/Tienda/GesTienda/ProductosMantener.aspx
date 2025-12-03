<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="ProductosMantener.aspx.cs" Inherits="GesTienda.ProductosMantener" %>
<%@OutputCache Duration="1" VaryByParam="None"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <h1 style="text-align:center;">Mantenimiento Productos</h1>
   <main style="display:block; width:100%; float:left">
       <div style="float:left;">
            <asp:GridView ID="grdProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="294px" OnSelectedIndexChanged="grdProductos_SelectedIndexChanged" Width="470px" style="margin-left: 79px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="IdProducto" HeaderText="Id Producto" ReadOnly="True" SortExpression="IdProducto" />
                    <asp:BoundField DataField="DesPro" HeaderText="Descripción" SortExpression="DesPro" />
                    <asp:BoundField DataField="PrePro" HeaderText="Precio" SortExpression="PrePro" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
        <div style="display:table; width:45%; margin-top:20px; float:left; margin:30px">
                <asp:Label ID="lblIdProducto" runat="server" Text="Id. Producto:" Font-Bold="True"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:TextBox ID="txtIdProducto" runat="server" Width="200px" Enabled="False"></asp:TextBox>

                <br />

                <asp:Label ID="lblDesPro" runat="server" Text="Descripción:" Font-Bold="True"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:TextBox ID="txtDesPro" runat="server" Width="202px" Enabled="False"></asp:TextBox>

                <br />

                <asp:Label ID="lblPrePro" runat="server" Text="Precio:" Font-Bold="True"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:TextBox ID="txtPrePro" runat="server" Width="200px" Enabled="False"></asp:TextBox>

                <br />
                <asp:Label ID="lblIdUnidad" runat="server" Text="Unidad:" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlIdUnidad" runat="server" DataSourceID="SqlDataSource2" DataTextField="IdUnidad" DataValueField="IdUnidad" Enabled="False">
                </asp:DropDownList>
                <br />
                <asp:Label ID="lblIdTipo" runat="server" Text="Tipo Producto:" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="ddlIdTipo" runat="server" DataSourceID="SqlDataSource3" DataTextField="DesTip" DataValueField="IdTipo" Enabled="False">
                </asp:DropDownList>

                <br />
                <br />
                <asp:Button ID="btnNuevo" runat="server" OnClick="btnNuevo_Click" Text="Nuevo" />
                <asp:Button ID="btnEditar" runat="server" Text="Editar" Visible="False" OnClick="btnEditar_Click"/>
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Visible="False" OnClick="btnEliminar_Click"/>
                <asp:Button ID="btnInsertar" runat="server" Text="Insertar" Visible="False" OnClick="btnInsertar_Click" />
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" Visible="False" OnClick="btnModificar_Click"/>
                <asp:Button ID="btnBorrar" runat="server" Text="Borrar" Visible="False" OnClick="btnBorrar_Click"/>
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Visible="False" OnClick="btnCancelar_Click"/>

        </div>
    </main>
     <asp:Label ID="lblResultado" runat="server"></asp:Label>
    <br />
    <asp:Label ID="lblMensajes" runat="server"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UNIDAD]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PRODUCTO]"></asp:SqlDataSource>
</asp:Content>
