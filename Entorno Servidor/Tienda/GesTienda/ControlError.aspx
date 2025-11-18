<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlError.aspx.cs" Inherits="GesTienda.ControlError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="~/Estilos/Errores.css" rel="stylesheet" type="text/css" />
    <title>Errores</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Aplicación Web GesTienda</h1>
        <h2>Error en tiempo de ejecución</h2>
        <div id="errores">
            <h4>Error ASP.NET:</h4>
            <p>
                <asp:Label ID="lblErrorASP" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            </p>
            <h4>Error ADO.NET:</h4>
            <p>
                <asp:Label ID="lblErrorADO" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
