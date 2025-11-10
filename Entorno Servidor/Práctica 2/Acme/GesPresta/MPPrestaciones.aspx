<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPPrestaciones.aspx.cs" Inherits="GesPresta.MPPrestaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center;">DATOS DE LAS PRESTACIONES</h2>
    <div>
        <div id="cabeceras" style="text-align:right; width: 50%; float:left; height: auto; margin-right:30px;">
            <div style="margin-bottom:12px; margin-top:10px">
                Código Prestación<br />
            </div>
            <div style="margin-bottom:12px">
                Descripción<br />
            </div>
            <div style="margin-bottom:12px">
                Importe Fijo<br />
            </div>
            <div style="margin-bottom:10px">
                Porcentaje del importe<br />
            </div>
            <div>
                Tipo de Prestación</div>
        </div>
        <div id="formulario" style="width: 45%; float:left; height: auto;">
            <asp:TextBox ID="txtCodPre" runat="server" style="margin-top:8px" Width="263px"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtDesPre" runat="server" style="margin-top:8px" Width="265px"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtImpPre" runat="server" style="margin-top:8px" Width="267px"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtPorPre" runat="server" style="margin-top:8px" Width="266px"></asp:TextBox>
            <br />
            <asp:DropDownList ID="ddlTipPre" runat="server" Height="20px" style="margin-top:8px" Width="130px">
                <asp:ListItem>Dentaria</asp:ListItem>
                <asp:ListItem>Ocular</asp:ListItem>
                <asp:ListItem>Familiar</asp:ListItem>
                <asp:ListItem>Otras</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div style="width:100%;float:inline-end; margin:0 auto; text-align:center;">
              <asp:Button ID="Button2" runat="server" style="margin: 0 auto;margin-top:10px; text-align:center;" OnClick="Button1_Click1" Text="Enviar" />
        </div>

</asp:Content>
