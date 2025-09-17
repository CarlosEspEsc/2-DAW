<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Empleados</title>
    <link rel="stylesheet" href="cabecera.css"/>
    <style type="text/css">
        #Text1 {
            width: 127px;
        }
        #txtNomEmp {
            width: 327px;
        }
        #txtDirEmp {
            width: 381px;
        }
        #txtCiuEmp {
            width: 376px;
        }
        .Label {
            margin-top:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
    
        <h2 style="text-align:center;">DATOS DE LOS EMPLEADOS</h2>
        <div id:"cabeceras" style="text-align:right; width: 511px; float:left; height: 373px; margin-right:30px;">
           <div class="Label"><asp:Label ID="Label1"  runat="server" Text="Código Empleado"></asp:Label><br /></div> 
           <div class="Label"> <asp:Label ID="Label2" runat="server" Text="NIF" ></asp:Label><br /></div> 
           <div class="Label"> <asp:Label ID="Label3" runat="server" Text="Apellidos y Nombre" ></asp:Label><br /></div> 
           <div class="Label"> <asp:Label ID="Label4" runat="server" Text="Dirección" ></asp:Label><br /></div> 
           <div class="Label"> <asp:Label ID="Label5" runat="server" Text="Ciudad" ></asp:Label><br /></div> 
           <div class="Label"> <asp:Label ID="Label6" runat="server" Text="Teléfonos" ></asp:Label><br /></div> 
           <div class="Label"> <asp:Label ID="Label7" runat="server" Text="Fecha de Nacimiento" ></asp:Label><br /></div> 
           <div class="Label"> <asp:Label ID="Label8" runat="server" Text="Fecha de Ingreso" ></asp:Label><br /></div> 
           <div class="Label"><asp:Label ID="Label9"  runat="server" Text="Sexo" ></asp:Label><br /></div> 
           <div class="Label" style="margin-top:30px"><asp:Label ID="Label10" runat="server" Text="Departamento" ></asp:Label></div> 
        </div>
        <div id="cajas" style="width: 572px; float:left; height: 372px;" >

            <input id="txtCodEmp" type="text" style="margin-top:8px"/><br />
            <input id="txtNifEmp" type="text" style="margin-top:8px"/><br />
            <input id="txtNomEmp" type="text" style="margin-top:8px"/><br />
            <input id="txtDirEmp" type="text" style="margin-top:8px" /><br />
            <input id="txtCiuEmp" type="text" style="margin-top:8px" /><br />
            <input id="txtTelEmp" type="text" style="margin-top:8px" /><br />
            <input id="txtFnaEmp" type="text" style="margin-top:8px" /><br />
            <input id="txtFinEmp" type="text" style="margin-top:8px" /><br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="251px" Eight="150px" Height="16px">
                <asp:ListItem>Hombre</asp:ListItem>
                <asp:ListItem>Mujer</asp:ListItem>
            </asp:RadioButtonList>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Investigación</asp:ListItem>
                <asp:ListItem>Desarollo</asp:ListItem>
                <asp:ListItem>Innovación</asp:ListItem>
                <asp:ListItem>Administración</asp:ListItem>
            </asp:DropDownList>
            <br />

        </div>

    </form>
</body>
</html>
