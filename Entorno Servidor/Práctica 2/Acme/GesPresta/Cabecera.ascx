<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>
<div id="botones"style="display: flex; justify-content: center; align-items: center; height: 20%; gap: 20px;">
    <div id="divIni" style="width:33%"><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" CausesValidation="false">Inicio</asp:LinkButton></div>
    <div id="divEmp" style="width:33%"><asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/EmpleadosCalendar.aspx" CausesValidation="false">Empleados</asp:LinkButton></div>
    <div id="divPres" style="width:33%"><asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Prestaciones1.aspx" CausesValidation="false">Prestaciones</asp:LinkButton></div>
</div>
<br />
<br />
<hr />
<h1>ACME INNOVACIÓN, S. FIG.</h1>
<hr style="height: -12px" />
<h3>Gestión de Prestaciones Sociales </h3>
<hr style="height: -12px" />


