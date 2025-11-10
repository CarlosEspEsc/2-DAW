<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPEmpleados.aspx.cs" Inherits="GesPresta.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align: center;">DATOS DE LOS EMPLEADOS</h2>
    <div style="height:auto; width:auto;">
        <div id:"cabeceras" style="text-align: right; width: 49%; float: left; height: 418px; margin-right: 30px;">
            <div class="Label">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Código Empleado"></asp:Label>
            </div>
            <div class="Label">
                <br />
                <asp:Label ID="Label2" runat="server" Text="NIF"></asp:Label>
            </div>
            <div class="Label">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Apellidos y Nombre"></asp:Label>
            </div>
            <div class="Label">
                <br />
                <asp:Label ID="Label4" runat="server" Text="Dirección"></asp:Label>
            </div>
            <div class="Label">
                <br />
                <asp:Label ID="Label5" runat="server" Text="Ciudad"></asp:Label>
            </div>
            <div class="Label">
                <br />
                <asp:Label ID="Label6" runat="server" Text="Teléfonos"></asp:Label>
            </div>
            <div class="Label">
                <br />
                <asp:Label ID="Label7" runat="server" Text="Fecha de Nacimiento"></asp:Label>
            </div>
            <div class="Label">
                <br />
                <asp:Label ID="Label8" runat="server" Text="Fecha de Ingreso"></asp:Label>
            </div>
            <div class="Label">
                <br />
                <asp:Label ID="Label9" runat="server" Text="Sexo"></asp:Label>
                <br />
            </div>
            <div class="Label">
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Departamento"></asp:Label>
            </div>
        </div>
        <div id="cajas" style="width: auto; float: left; height: 419px;">
            <asp:TextBox ID="txtCodEmp" runat="server" style="margin-top: 11px; " Height="16px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTxtCodEmp" runat="server" ControlToValidate="txtCodEmp" ErrorMessage="El campo Código Empleado es obligatorio" ForeColor="Red" style="margin-left: 10px">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtNifEmp" runat="server" style="margin-top: 14px; "></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTxtNifEmp" runat="server" ControlToValidate="txtNifEmp" ErrorMessage="El campo NIF es obligatorio" ForeColor="Red" style="margin-left: 10px">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtNomEmp" runat="server" style="margin-top: 14px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTxtNomEmp" runat="server" ControlToValidate="txtNomEmp" ErrorMessage="El campo Apellidos y Nombre es obligatorio" ForeColor="Red" style="margin-left: 10px">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtDirEmp" runat="server" style="margin-top: 12px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTxtDirEmp" runat="server" ControlToValidate="txtDirEmp" ErrorMessage="El campo Dirección es obligatorio" ForeColor="Red" style="margin-left: 10px">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtCiuEmp" runat="server" style="margin-top: 12px"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtTelEmp" runat="server" style="margin-top: 16px"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtFnaEmp" runat="server" style="margin-top: 16px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTtxtFnaEmp" runat="server" ControlToValidate="txtFnaEmp" ErrorMessage="El campo Fecha de Nacimiento es obligatorio" ForeColor="Red" style="margin-left: 10px">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtFinEmp" runat="server" style="margin-top: 12px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTxtFinEmp" runat="server" ControlToValidate="txtFinEmp" ErrorMessage="El campo Fecha de Ingreso es obligatorio" ForeColor="Red" style="margin-left: 10px">*</asp:RequiredFieldValidator>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Eight="150px" Height="16px" style="margin-top: 10px" Width="251px">
                <asp:ListItem Selected="True">Hombre</asp:ListItem>
                <asp:ListItem>Mujer</asp:ListItem>
            </asp:RadioButtonList>
            <br />

                <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Investigación</asp:ListItem>
                <asp:ListItem>Desarollo</asp:ListItem>
                <asp:ListItem>Innovación</asp:ListItem>
                <asp:ListItem>Administración</asp:ListItem>
                </asp:DropDownList>
        </div>
            <br />
        </div>
        <br />
    <div style="display: flex; justify-content: center; margin-top: 20px; width: 100%;">
        <asp:Button ID="cmdEnviar" runat="server" OnClick="Button1_Click" Text="Enviar" Width="91px" />
    </div>
        <br />
        <br />
    <div style="width: 100%; margin: 0 auto; height: auto; justify-content:center; text-align:center;">
        <asp:RegularExpressionValidator ID="regTxtCodEmp" runat="server" ControlToValidate="txtCodEmp" ErrorMessage="El formato aceptado es: una letra y 5 dígitos" ForeColor="Red" ValidationExpression="\w\d{5}"></asp:RegularExpressionValidator>
        <br />
        <asp:RegularExpressionValidator ID="regTxtNifEmp" runat="server" ControlToValidate="txtNifEmp" ErrorMessage="El formato aceptado es: 8 dígitos, un guión y una letra." ForeColor="Red" ValidationExpression="\d{8}-\w"></asp:RegularExpressionValidator>
        <br />
        <asp:RegularExpressionValidator ID="regTxtFnaEmp" runat="server" ControlToValidate="txtFnaEmp" ErrorMessage="Formato de fecha dd/mm/aaaa." ForeColor="Red" ValidationExpression="\d\d\/\d\d\/\d\d\d\d"></asp:RegularExpressionValidator>
        <br />
        <asp:RegularExpressionValidator ID="regTxtFinEmp" runat="server" ControlToValidate="txtFinEmp" ErrorMessage="Formato de fecha dd/mm/aaaa." ForeColor="Red" ValidationExpression="\d\d\/\d\d\/\d\d\d\d"></asp:RegularExpressionValidator>
        <br />
        <asp:CompareValidator ID="cmpTxtFnaEmp" runat="server" ControlToCompare="txtFinEmp" ControlToValidate="txtFnaEmp" ErrorMessage="La Fecha de Ingreso del Empleado debe ser mayor que la Fecha de Nacimiento" ForeColor="Red" Operator="LessThan" Type="Date"></asp:CompareValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" />
    </div>
</asp:Content>
