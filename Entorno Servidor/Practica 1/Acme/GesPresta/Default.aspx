<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesPresta.Default" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ACME INNOVACIÓN</title>
    <link rel="stylesheet" href="cabecera.css"/>
</head>
<body style="height: 351px">
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
        <p>
            La corporación ACME está comprometida con sus empleados. Para ello ha establecido una serie de prestaciones que pueden 
            utilizar sus empleados para obtener ayudas sociales asociados a diversos gastos de tipo familiar, médico, etc.</p>
        <p>
            Esta aplicación a través de Web permite realizar todas las tareas de gestión relacionadas con la prestación 
            de ayudas a los empleados.
        </p>
        <p>
            Para cualquier duda o consulta puede contactar con el departamento de Ayuda Social:
            <asp:LinkButton ID="ayudaSocial" runat="server" OnClick="LinkButton1_Click">ayuda.social@acme.com</asp:LinkButton>
        </p>
    </form>
</body>
</html>
