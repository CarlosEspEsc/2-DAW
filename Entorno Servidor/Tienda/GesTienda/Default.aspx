<%@ Page  Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesTienda.Default"  %>
<%@OutputCache Duration="1" VaryByParam="None"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <header style="background-color:black; width:99%; height:30px">
        </header>
        <header style="background-color:darkblue; color:white;height:63px; width:99%; display:flex; justify-content:center; align-content:center;">
            <h2>Tienda Online - Shopping DAW</h2>
        </header>
        <div style="display:flex; align-content:center; justify-content:center; margin:0 auto; margin-top:5%">
            <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
                <LayoutTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr style="margin:20vh; font-size:3vh">
                                        <td align="center" colspan="2">Iniciar sesión</td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nombre de usuario:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server" OnTextChanged="UserName_TextChanged"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" OnTextChanged="Password_TextChanged" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"></td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr style="align-self:center; justify-content:center;">
                                        <td align="right" colspan="2" style="align-self:center;justify-content:center;">
                                            <div style="width:95vw;display:flex;align-content:center; justify-content:center;">
                                                <div></div>
                                                 <asp:Button ID="LoginButton" runat="server" CommandName="Login"  Text="Inicio de sesión" ValidationGroup="Login1" />
                                                <div></div>
                                            </div>  
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
            </div>
        <div style="display:flex; align-content:center; justify-content:center;">
        <asp:Label ID="lblMensajes" runat="server" ForeColor="Black" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:LinkButton ID="lnkResgistro" runat="server" PostBackUrl="~/Registrarse.aspx">Registrarse</asp:LinkButton>
        </div>
    </form>
</body>
</html>
