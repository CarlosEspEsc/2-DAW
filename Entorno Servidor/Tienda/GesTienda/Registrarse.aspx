<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="GesTienda.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link href="~/Estilos/LoginNuevo.css" rel="stylesheet" type="text/css" />
<style>
    body {
        font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
    }
    #headerNegro {
        padding-right:7vw;
        height:5vh;
        width:100vw;
        background-color:black;
        color:white;
        display:flex;
        align-items:end;
        justify-content:flex-end;
    }
    #headerAzul {
        padding-left: 4vw;
        height: 10vh;
        width: 100vw;
        background-color: blue;
        color: white;
        display: flex;
        align-items: center;
        justify-content: flex-start;
        font-weight: bold;
    }
    nav {
        height: 15vh;
        width: 100vw;
        margin: 0 auto;
        text-align: center;
    }

    body {
        margin: auto auto;
    }

    footer {
        display: flex;
        align-content: center;
        justify-self: center;
    }

    main > div:nth-child(1) {
        width: 30vw;
    }

    main > div:nth-child(3) {
        align-content: start;
        justify-content: space-around;
        margin-left: 2vw;
    }
    footer{
        display:flex;
        flex-direction:column;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <header id="headerNegro">
            comercioDaw.com
        </header>
        <header id="headerAzul">
            <h2>TIENDA ONLINE - SHOPPING DAW</h2>
        </header>
        <nav >

            <h1>GESTIENDA</h1>
            <h2>Registro Usuarios</h2>

        </nav>
        <main style="display:flex;flex-direction:row">
            <div style="width:20%; align-items:center; justify-content:flex-end">

            </div>
            <div style="width:20%;height:50vh; align-items:center; justify-content:space-between">
                <asp:Label ID="Label1" runat="server" Text="Correo Electrónico"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Introduzca nuevamente la Contraseña"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="NIF/NIE/CIF"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Nombre/Razón Social"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Dirección"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Población"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Código Postal"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Teléfono"></asp:Label>
            </div>
            <div style="width:45%; height:50vh; float:right; align-items:center; justify-content:space-between">

                <asp:TextBox ID="txtCorCli" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtIdCliente" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtNomCli" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtDirCli" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtPobCli" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtCpoCli" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtTelCli" runat="server"></asp:TextBox>
            </div>
        </main>
        <footer>
            <asp:Button ID="Button1" runat="server" Text="Insertar" OnClick="Button1_Click" />
            <br /><br />
            <div>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Ir a Inicio</asp:LinkButton>
                <asp:Label ID="lblMensajes" runat="server" Text="Teléfono" Visible="False"></asp:Label>
            </div>
        </footer>
    </form>
</body>
</html>
