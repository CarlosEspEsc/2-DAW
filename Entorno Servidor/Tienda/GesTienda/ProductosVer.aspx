<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductosVer.aspx.cs" Inherits="GesTienda.ProductosVer" %>
<%@OutputCache Duration="1" VaryByParam="None"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <h1 style="text-align:center;">Productos</h1>
    <p style="text-align:center;">
        <asp:Label ID="lblResultado" runat="server" Text="Label"></asp:Label>
    </p>
    <p style="text-align:center;">
        <asp:Label ID="lblMensajes" runat="server" Text="Label"></asp:Label>
    </p>


</asp:Content>
