<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosCalendar.aspx.cs" Inherits="GesPresta.EmpleadosCalendar" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EMPLEADOS</title>
    <link rel="stylesheet" href="cabecera.css"/>
    <style type="text/css">
        .Label {
            margin-top: 10px;
        }
        .calendar-section {
            width: 33%;
            float: left;
            margin-right: 2%;
        }
        .clear {
            clear: both;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Cabecera ID="Cabecera1" runat="server" />

        <h2 style="text-align:center;">DATOS DE LOS EMPLEADOS</h2>
        
        <div id="marcoRojo" style="border: 2px solid red; padding:10px; margin-left:auto; margin-right:auto; width:80%" >
            <div id="datosContainer" style="width: 100%">
                <div id="cabeceras" style="text-align:right; width: 33%; float:left; height: auto; margin-right:22px;">
                    <div class="Label"><asp:Label ID="Label1" runat="server" Text="Código Empleado"></asp:Label></div> 
                    <div class="Label"><asp:Label ID="Label2" runat="server" Text="NIF"></asp:Label></div> 
                    <div class="Label"><asp:Label ID="Label3" runat="server" Text="Apellidos y Nombre"></asp:Label></div> 
                    <div class="Label"><asp:Label ID="Label4" runat="server" Text="Dirección"></asp:Label></div> 
                    <div class="Label"><asp:Label ID="Label5" runat="server" Text="Ciudad"></asp:Label></div> 
                    <div class="Label"><asp:Label ID="Label6" runat="server" Text="Teléfonos"></asp:Label></div>
                    <div class="Label"><asp:Label ID="Label9" runat="server" Text="Sexo"></asp:Label></div> 
                    <div class="Label" style="margin-top:30px"><asp:Label ID="Label10" runat="server" Text="Departamento"></asp:Label></div> 
                </div>
                
                <div id="cajas" style="width: 45%; float:left; height: auto;">
                    <asp:TextBox ID="txtCodEmp" runat="server" style="margin-top:8px; width: 151px;"></asp:TextBox><br />
                    <asp:TextBox ID="txtNifEmp" runat="server" style="margin-top:8px; width: 151px;"></asp:TextBox><br />
                    <asp:TextBox ID="txtNomEmp" runat="server" style="margin-top:8px; width: 371px;"></asp:TextBox><br />
                    <asp:TextBox ID="txtDirEmp" runat="server" style="margin-top:8px; width: 371px;"></asp:TextBox><br />
                    <asp:TextBox ID="txtCiuEmp" runat="server" style="margin-top:8px; width: 371px;"></asp:TextBox><br />
                    <asp:TextBox ID="txtTelEmp" runat="server" style="margin-top:8px; width: 371px;"></asp:TextBox><br />
                    <asp:RadioButtonList ID="rblSexEmp" runat="server" Width="251px" Height="50px">
                        <asp:ListItem Selected="True">Hombre</asp:ListItem>
                        <asp:ListItem>Mujer</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:DropDownList ID="ddlDepEmp" runat="server">
                        <asp:ListItem>Investigación</asp:ListItem>
                        <asp:ListItem>Desarollo</asp:ListItem>
                        <asp:ListItem>Innovación</asp:ListItem>
                        <asp:ListItem>Administración</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            
            <div class="clear"></div>
            
            <div id="calendarContainer" style="width:100%; margin-top:20px;">

                <div class="calendar-section">
                    <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de Nacimiento" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="fechaNac" runat="server" OnTextChanged="fechaNac_TextChanged" AutoPostBack="True" style="margin-left: 27px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" 
                        CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                        ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <br />
                </div>
                
                <div class="calendar-section">

                    <asp:Label ID="lblFechaIngreso" runat="server" Text="Fecha de Ingreso" Font-Bold="true" ></asp:Label>
                    <asp:TextBox ID="fechaIng" runat="server" OnTextChanged="fechaIng_TextChanged" AutoPostBack="True" style="margin-left: 26px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" 
                        CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                        ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="Calendar2_SelectionChanged">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <br />
                </div>
                
                <div class="antiguedadContainer" style="width:26%; float:left; height: 177px; padding-left:20px;">
                    Antigüedad<br /><br />
                    <asp:TextBox ID="textoAños" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp; Años<br /><br />
                    <asp:TextBox ID="textoMeses" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp; Meses<br /><br />
                    <asp:TextBox ID="textoDias" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp; Días
                </div>

            </div>
            
            <div class="clear"></div>
            
            <div style="width:100%; text-align:center; margin-top:20px;">
                <asp:Button ID="cmdEnviar" runat="server" OnClick="Button1_Click" Text="Enviar"/>
            </div>
        </div>
        
        <asp:Label ID="lblErrorFecha" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lblValores" runat="server" BackColor="#66FFFF" Text="Label" Visible="False" Width="60%"></asp:Label>
    </form>
</body>
</html>