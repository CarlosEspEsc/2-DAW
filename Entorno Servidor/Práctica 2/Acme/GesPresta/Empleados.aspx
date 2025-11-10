<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados" Trace="True"%>--%><%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados" Trace="False"%>--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados"%>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EMPLEADOS</title>
    <link rel="stylesheet" href="cabecera.css"/>
    <style type="text/css">
        #Text1 {
            width: 127px;
        }
        #txtNomEmp {
            width: 371px;
        }
        #txtDirEmp {
            width: 371px;
        }
        #txtCiuEmp {
            width: 372px;
        }
        .Label {
            margin-top:10px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
    
        <h2 style="text-align:center;">DATOS DE LOS EMPLEADOS</h2>
        <div>
            <div id:"cabeceras" style="text-align:right; width: 33%; float:left; height: 355px; margin-right:30px;">
               <div class="Label"><asp:Label ID="Label1"  runat="server" Text="Código Empleado"></asp:Label><br /></div> 
               <div class="Label"> <asp:Label ID="Label2" runat="server" Text="NIF" ></asp:Label><br /></div> 
               <div class="Label"> <asp:Label ID="Label3" runat="server" Text="Apellidos y Nombre" ></asp:Label><br /></div> 
               <div class="Label"> <asp:Label ID="Label4" runat="server" Text="Dirección" ></asp:Label><br /></div> 
               <div class="Label"> <asp:Label ID="Label5" runat="server" Text="Ciudad" ></asp:Label><br /></div> 
               <div class="Label"> <asp:Label ID="Label6" runat="server" Text="Teléfonos" ></asp:Label><br /></div> 
               <div class="Label"> <asp:Label ID="Label7" runat="server" Text="Fecha de Nacimiento" ></asp:Label><br /></div> 
               <div class="Label"> <asp:Label ID="Label8" runat="server" Text="Fecha de Ingreso" ></asp:Label><br /></div> 
               <div class="Label"><asp:Label ID="Label9"  runat="server" Text="Sexo" ></asp:Label><br /> 
                   <br />
               <div class="Label" style="margin-top:40px"><asp:Label ID="Label10" runat="server" Text="Departamento" ></asp:Label></div> 
                </div> 
            </div>
            <div id="cajas" style="width: 62%; float:left; height: 375px;" >
                <asp:TextBox ID="txtCodEmp"  runat="server" style="margin-top:12px; width: 151px; height: 22px;"></asp:TextBox>
            <asp:RequiredFieldValidator style="margin-left:10px" ID="rqdTxtCodEmp" runat="server" ControlToValidate="txtCodEmp" ErrorMessage="El campo Código Empleado es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="txtNifEmp"  runat="server" style="margin-top:12px; width: 151px;"></asp:TextBox>
            <asp:RequiredFieldValidator style="margin-left:10px" ID="rqdTxtNifEmp" runat="server" ControlToValidate="txtNifEmp" ErrorMessage="El campo NIF es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtNomEmp"  runat="server" style="margin-top:12px"></asp:TextBox>
            <asp:RequiredFieldValidator style="margin-left:10px" ID="rqdTxtNomEmp" runat="server" ControlToValidate="txtNomEmp" ErrorMessage="El campo Apellidos y Nombre es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtDirEmp"  runat="server" style="margin-top:12px"></asp:TextBox>
            <asp:RequiredFieldValidator style="margin-left:10px" ID="rqdTxtDirEmp" runat="server" ControlToValidate="txtDirEmp" ErrorMessage="El campo Dirección es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtCiuEmp"  runat="server" style="margin-top:12px"></asp:TextBox>
                <br />
                <asp:TextBox ID="txtTelEmp"  runat="server" style="margin-top:12px"></asp:TextBox>
                <br />
                <asp:TextBox ID="txtFnaEmp"  runat="server" style="margin-top:12px"></asp:TextBox>
            <asp:RequiredFieldValidator style="margin-left:10px" ID="rqdTtxtFnaEmp" runat="server" ControlToValidate="txtFnaEmp" ErrorMessage="El campo Fecha de Nacimiento es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtFinEmp"  runat="server" style="margin-top:12px"></asp:TextBox>
            <asp:RequiredFieldValidator style="margin-left:10px" ID="rqdTxtFinEmp" runat="server" ControlToValidate="txtFinEmp" ErrorMessage="El campo Fecha de Ingreso es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="251px" Eight="150px" Height="37px" style="margin-top:10px">
                    <asp:ListItem Selected="True">Hombre</asp:ListItem>
                    <asp:ListItem>Mujer</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" style="margin-top:8px">
                    <asp:ListItem>Investigación</asp:ListItem>
                    <asp:ListItem>Desarollo</asp:ListItem>
                    <asp:ListItem>Innovación</asp:ListItem>
                    <asp:ListItem>Administración</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </div>
            <br />
            <div style="width:100%;float:inline-end; margin:0 auto; text-align:center; height: 52px;">
                <asp:Button ID="cmdEnviar" runat="server" OnClick="Button1_Click" Text="Enviar" style="margin-top:10px"/>
            </div>
            <br />
            <br />
        </div>
            <div style="width: 774px; margin: 0 auto; height: 136px;">
                <asp:RegularExpressionValidator ID="regTxtCodEmp" runat="server" ErrorMessage="El formato aceptado es: una letra y 5 dígitos" ControlToValidate="txtCodEmp" ValidationExpression="\w\d{5}" ForeColor="Red"></asp:RegularExpressionValidator>

            <br />
                <asp:RegularExpressionValidator ID="regTxtNifEmp" runat="server" ErrorMessage="El formato aceptado es: 8 dígitos, un guión y una letra." ControlToValidate="txtNifEmp" ValidationExpression="\d{8}-\w" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
                <asp:RegularExpressionValidator ID="regTxtFnaEmp" runat="server" ErrorMessage="Formato de fecha dd/mm/aaaa." ControlToValidate="txtFnaEmp" ValidationExpression="\d\d\/\d\d\/\d\d\d\d" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
                <asp:RegularExpressionValidator ID="regTxtFinEmp" runat="server" ErrorMessage="Formato de fecha dd/mm/aaaa." ControlToValidate="txtFinEmp" ValidationExpression="\d\d\/\d\d\/\d\d\d\d" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <asp:CompareValidator ID="cmpTxtFnaEmp" runat="server" ControlToCompare="txtFinEmp" ControlToValidate="txtFnaEmp" ErrorMessage="La Fecha de Ingreso del Empleado debe ser mayor que la Fecha de Nacimiento" Operator="LessThan" Type="Date" ForeColor="Red"></asp:CompareValidator>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" />

    </div>
    </form>
    
</body>
</html>
