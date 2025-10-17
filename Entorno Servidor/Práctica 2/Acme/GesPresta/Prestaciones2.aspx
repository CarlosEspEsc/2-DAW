<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones2.aspx.cs" Inherits="GesPresta.WebForm1" %>
<%@ Register Src="~/Cabecera.ascx" TagPrefix="uc1" TagName="Cabecera" %>

<%@ Register src="prestacionesBuscar.ascx" tagname="prestacionesBuscar" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="cabecera.css"/>
    <title>PRESTACIONES</title>
    <style type="text/css">
        #form1 {
            height: 587px;
        }
    </style>
</head>
<body style="height: 590px">
    <form id="form1" runat="server">
        <div> <uc1:Cabecera runat="server" ID="Cabecera" /> </div>
        <h2 style="text-align:center;">DATOS DE LAS PRESTACIONES</h2>
    <div style="width:100%">
        <div id="cabeceras"  style="text-align:right; width: 34%; float:left; height: 231px; margin-right:30px;">
            <div style="margin-bottom:12px; margin-top:10px">Código Prestación<br /></div>
            <div style="margin-bottom:12px; height: 12px;">Descripción<br /></div>
            <div style="margin-bottom:12px; height: 18px;">Importe Fijo<br /></div>
            <div style="margin-bottom:10px; height: 42px;">Porcentaje del importe<br /></div>
            <div>Tipo de Prestación</div>
        </div>
        <div id="formulario" style="width: auto<; float:left; height: 223px;" >
            <asp:TextBox ID="txtCodPre" runat="server"  style="margin-top:8px" Width="263px"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtDesPre" runat="server"  style="margin-top:8px" Width="265px"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtImpPre" runat="server"  style="margin-top:8px" Width="267px"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtPorPre" runat="server"  style="margin-top:8px" Width="266px"></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="ddlTipPre" runat="server" Height="20px" Width="130px"  style="margin-top:8px">
                <asp:ListItem>Dentaria</asp:ListItem>
                <asp:ListItem>Ocular</asp:ListItem>
                <asp:ListItem>Familiar</asp:ListItem>
                <asp:ListItem>Otras</asp:ListItem>
            </asp:DropDownList>
         </div>
        <br /> &nbsp;
        <uc2:prestacionesBuscar ID="prestacionesBuscar1" runat="server" Visible="False" />
&nbsp;<asp:Button ID="btnVerPrestaciones" runat="server" CausesValidation="False" OnClick="btnVerPrestaciones_Click" Text="Ver prestaciones" Width="160px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSeleccionar" runat="server" CausesValidation="False" OnClick="Button3_Click" Text="Seleccionar" Visible="False" Width="89px" />
    </div>
        <div style="width:100%;float:inline-end; margin:0 auto; text-align:center;">
            <asp:Button ID="Button1" runat="server" style="margin: 0 auto;margin-top:10px; text-align:center;" OnClick="Button1_Click1" Text="Enviar" />
        </div>
    <br />
    <br />
        <div style="margin: 0 auto; text-align: center; position:absolute; bottom:200px; left:650px;">
            <asp:RequiredFieldValidator ID="rqdTxtCodPre" runat="server" ControlToValidate="txtCodPre" ErrorMessage="El campo Código Prestación es obligatorio" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="rqdTxtImpPre" runat="server" ControlToValidate="txtImpPre" ErrorMessage="El campo Importe Fijo es obligatorio" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="rqdTxtPorPre" runat="server" ControlToValidate="txtPorPre" ErrorMessage="El campo Porcentaje del importe es obligatorio" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <asp:RangeValidator ID="rngTxtImpPre" runat="server" ControlToValidate="txtImpPre" ErrorMessage="El valor del Importe fijo debe estar entre 0 y 500" MaximumValue="500,00" MinimumValue="0,00" Type="Double" ForeColor="#FF3300"></asp:RangeValidator>
            <br />
            <asp:RangeValidator ID="rngTxtPorPre" runat="server" ControlToValidate="txtPorPre" ErrorMessage="El porcentaje de Importe debe estar entre 0 y 15%" MaximumValue="15,00" MinimumValue="0,00" Type="Double" ForeColor="#FF3300"></asp:RangeValidator>
            <br />
            <asp:RegularExpressionValidator ID="regTxtCodPre" runat="server" ControlToValidate="txtCodPre" ErrorMessage="El formato del Código de Prestación es:  3 dígitos, guión, 3 dígitos, guión y 3 dígitos" ValidationExpression="\d{3}-\d{3}-\d{3}" ForeColor="#FF3300"></asp:RegularExpressionValidator>    
        </div>
    </form>
    </body>
</html>
