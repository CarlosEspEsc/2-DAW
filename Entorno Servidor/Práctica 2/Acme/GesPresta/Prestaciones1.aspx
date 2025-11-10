<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones1.aspx.cs" Inherits="GesPresta.Prestaciones1" %>

<%@ Register Src="~/Cabecera.ascx" TagPrefix="uc1" TagName="Cabecera" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="cabecera.css"/>
    <title>PRESTACIONES</title>
</head>
<body>
    <form id="form1" runat="server">
    <div> <uc1:Cabecera runat="server" ID="Cabecera" /> </div>
        <h2 style="text-align:center;">DATOS DE LAS PRESTACIONES</h2>
    <div>
    <div id="cabeceras"  style="text-align:right; width: 50%; float:left; height: auto; margin-right:30px;">
        <div style="margin-bottom:12px; margin-top:10px">Código Prestación<br /></div>
        <div style="margin-bottom:12px">Descripción<br /></div>
        <div style="margin-bottom:12px">Importe Fijo<br /></div>
        <div style="margin-bottom:10px">Porcentaje del importe<br /></div>
        <div>Tipo de Prestación</div>
    </div>
    <div id="formulario" style="width: 45%; float:left; height: auto;" >
        <asp:TextBox ID="txtCodPre" runat="server"  style="margin-top:8px" Width="263px"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtDesPre" runat="server"  style="margin-top:8px" Width="265px"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtImpPre" runat="server"  style="margin-top:8px" Width="267px"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtPorPre" runat="server"  style="margin-top:8px" Width="266px"></asp:TextBox>
        <br />
        <asp:DropDownList ID="ddlTipPre" runat="server" Height="20px" Width="130px"  style="margin-top:8px">
            <asp:ListItem>Dentaria</asp:ListItem>
            <asp:ListItem>Ocular</asp:ListItem>
            <asp:ListItem>Familiar</asp:ListItem>
            <asp:ListItem>Otras</asp:ListItem>
        </asp:DropDownList>
        </div>
        <br /> q
        <div style="width:100%;float:inline-end; margin:0 auto; text-align:center;">
            <asp:Button ID="Button1" runat="server" style="margin: 0 auto;margin-top:10px; text-align:center;" OnClick="Button1_Click1"
                Text="Enviar" PostBackUrl="~/Prestaciones1Respuesta.aspx" />
        </div>
    </div>
    </form>

    </body>
</html>
