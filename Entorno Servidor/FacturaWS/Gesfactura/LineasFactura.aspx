<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LineasFactura.aspx.cs" Inherits="Gesfactura.LineasFactura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>LineasFactura</title>
<style>
    main {
        display:flex;
        flex-direction:row;
    }
    #div1 {
        display:flex;
        width:40%;
        text-align:right;
        flex-direction:column;
        margin: 1vh;
    }
    #div2 {
        display:flex;
        width:40%;
        float:left;
        flex-direction:column;
    }
    footer {
        display:flex;
        flex-direction:column
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display:flex;justify-content:center;align-content:center"> <h1>Uso de Servicios Web - Cálculos factura de un artículo</h1></div>
        <main>
            <div id="div1">
                <asp:Label ID="Label1" runat="server" Text="Cantidad"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Precio"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Descuento(%)"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Tipo de IVA(%)"></asp:Label>
            </div>
            <div id="div2">
                <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtDescuento" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtTipoIVA" runat="server"></asp:TextBox>
            </div>
        </main>
        <div style="display:flex; justify-content:center; padding: 1vh">
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
        </div>
            
        <footer>
            <div style="display:flex;justify-content:center;align-content:center"> <h3>Resultado de los Cálculos</h3></div>
        </footer>
        <section style="display:flex; justify-content:space-around">
            <div><h3>Bruto</h3></div>
            <div><h3>Descuento</h3></div>
            <div><h3>Base Imponible</h3></div>
            <div><h3>IVA</h3></div>
            <div><h3>Total</h3></div>
        </section>
        <section style="display:flex; justify-content:space-around">
            <div>
                <asp:Label ID="lblBruto" runat="server" Text="Label"></asp:Label></div>
            <div>
                <asp:Label ID="lblDescuento" runat="server" Text="Label"></asp:Label></div>
            <div>
                <asp:Label ID="lblBaseImponible" runat="server" Text="Label"></asp:Label></div>
            <div>
                <asp:Label ID="lblIva" runat="server" Text="Label"></asp:Label></div>
            <div>
                <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label></div>
        </section>
    </form>
</body>
</html>
