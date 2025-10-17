using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class EmpleadosCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCodEmp.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime fecha;
            if (!DateTime.TryParse(fechaNac.Text, out fecha))
            {
                lblErrorFecha.Text = "La fecha introducida no es correcta";
                lblErrorFecha.Visible = true;
                lblValores.Visible = false;
                return;
            }
            if (!DateTime.TryParse(fechaIng.Text, out fecha))
            {
                lblErrorFecha.Text = "La fecha introducida no es correcta";
                lblErrorFecha.Visible = true;
                lblValores.Visible = false;
                return;
            }
            if (txtCodEmp.Text == "" || txtCodEmp.Text == null)
            {
                lblValores.Visible = false;
                lblErrorFecha.Text = "El campo Código Empleado es obligatorio";
                lblErrorFecha.ForeColor = System.Drawing.Color.Red;
                lblErrorFecha.Visible = true;
                txtCodEmp.Focus();
                return;
            }
            if(txtNifEmp.Text == "" || txtNifEmp.Text == null)
            {
                lblValores.Visible = false;
                lblErrorFecha.Text = "El campo NIF es obligatorio";
                lblErrorFecha.ForeColor = System.Drawing.Color.Red;
                lblErrorFecha.Visible = true;
                txtCodEmp.Focus();
                return;
            }
            if (txtNomEmp.Text == "" || txtNomEmp.Text == null)
            {
                lblValores.Visible = false;
                lblErrorFecha.Text = "El campo Apellidos y Nombre es obligatorio";
                lblErrorFecha.ForeColor = System.Drawing.Color.Red;
                lblErrorFecha.Visible = true;
                txtNomEmp.Focus();
                return;
            }
            if (txtDirEmp.Text == "" || txtDirEmp.Text == null)
            {
                lblValores.Visible = false;
                lblErrorFecha.Text = "El campo Dirección es obligatorio";
                lblErrorFecha.ForeColor = System.Drawing.Color.Red;
                lblErrorFecha.Visible = true;
                txtDirEmp.Focus();
                return;
            }
            if (txtCiuEmp.Text == "" || txtCiuEmp.Text == null)
            {
                lblValores.Visible = false;
                lblErrorFecha.Text = "El campo Ciudad es obligatorio";
                lblErrorFecha.ForeColor = System.Drawing.Color.Red;
                lblErrorFecha.Visible = true;
                txtCiuEmp.Focus();
                return;
            }
            if (txtTelEmp.Text == "" || txtTelEmp.Text == null)
            {
                lblValores.Visible = false;
                lblErrorFecha.Text = "El campo Teléfono es obligatorio";
                lblErrorFecha.ForeColor = System.Drawing.Color.Red;
                lblErrorFecha.Visible = true;
                txtTelEmp.Focus();
                return;
            }
            if (fechaNac.Text == "" || fechaNac.Text == null)
            {
                lblValores.Visible = false;
                lblErrorFecha.Text = "El campo Fecha de Nacimiento es obligatorio";
                lblErrorFecha.ForeColor = System.Drawing.Color.Red;
                lblErrorFecha.Visible = true;
                fechaNac.Focus();
                return;
            }
            if (fechaIng.Text == "" || fechaIng.Text == null)
            {
                lblValores.Visible = false;
                lblErrorFecha.Text = "El campo Fecha de Incorporación es obligatorio";
                lblErrorFecha.ForeColor = System.Drawing.Color.Red;
                lblErrorFecha.Visible = true;
                fechaIng.Focus();
                return;
            }
            DateTime dtHoy = System.DateTime.Now;
            if (Calendar2.SelectedDate > dtHoy)
            {
                lblValores.Visible = false;
                lblErrorFecha.Text = "El campo Fecha de Ingreso es superior al día actual";
                lblErrorFecha.ForeColor = System.Drawing.Color.Red;
                lblErrorFecha.Visible = true;
                fechaIng.Focus();
                return;
            }
            if (Calendar1.SelectedDate > dtHoy)
            {
                lblValores.Visible = false;
                lblErrorFecha.Text = "El campo Fecha de Nacimiento es superior al día actual";
                lblErrorFecha.ForeColor = System.Drawing.Color.Red;
                lblErrorFecha.Visible = true;
                fechaNac.Focus();
                return;
            }
            lblValores.Visible = true;
            lblErrorFecha.Visible = false;
            lblValores.Text = "VALORES DEL FORMULARIO" +
            "<br/> Código Empleado: " + txtCodEmp.Text +
            "<br/> NIF: " + txtNifEmp.Text +
            "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
            "<br/> Dirección: " + txtDirEmp.Text +
            "<br/> Ciudad: " + txtCiuEmp.Text +
            "<br/> Teléfonos: " + txtTelEmp.Text +
            "<br/> Fecha de Nacimiento: " + fechaNac.Text +
            "<br/> Fecha de Incorporación: " + fechaIng.Text +
            "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
            "<br/> Departamento: " + ddlDepEmp.Text;
            TimeSpan diferencia = dtHoy - Calendar2.SelectedDate;
            DateTime fechamin = new DateTime(1, 1, 1);
            textoAños.Text = ((fechamin + diferencia).Year - 1).ToString();
            textoMeses.Text = ((fechamin + diferencia).Month - 1).ToString();
            textoDias.Text = ((fechamin + diferencia).Day).ToString();

        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblErrorFecha.Text = "";
            lblErrorFecha.Visible = false;
            lblErrorFecha.ForeColor = System.Drawing.Color.Red;


            fechaNac.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");

            if (Calendar1.SelectedDate == DateTime.MinValue)
            {
                lblErrorFecha.Text = "Seleccione una fecha de nacimiento";
                lblErrorFecha.Visible = true;
                Calendar1.VisibleDate = Calendar1.SelectedDate;
            }
            else if (Calendar1.SelectedDate >= Calendar2.SelectedDate)
            {
                lblErrorFecha.Text = "Seleccione una fecha de nacimiento anterior a su fecha de ingreso";
                lblErrorFecha.Visible = true;
            }
            else if (Calendar1.SelectedDate >= DateTime.Now)
            {
                lblErrorFecha.Text = "Seleccione una fecha de nacimiento válida";
                lblErrorFecha.Visible = true;
            }
            else if (Calendar1.SelectedDate.AddYears(18) > DateTime.Now)
            {
                lblErrorFecha.Text = "El empleado debe ser mayor de 18 años.";
                lblErrorFecha.Visible = true;
            }
            else 
            {
                lblErrorFecha.Text = "Las fechas seleccionadas son correctas";
                lblErrorFecha.Visible = true;
                lblErrorFecha.ForeColor = System.Drawing.Color.Green;
            }

        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            lblErrorFecha.Text = "";
            lblErrorFecha.Visible = false;
            lblErrorFecha.ForeColor = System.Drawing.Color.Red;

            fechaIng.Text = Calendar2.SelectedDate.ToString("dd-MM-yyyy"); 

            if (Calendar2.SelectedDate < Calendar1.SelectedDate)
            {
                lblErrorFecha.Text = "Seleccione una fecha de nacimiento anterior a su fecha de ingreso";
                lblErrorFecha.Visible = true;
            }
            else if (Calendar2.SelectedDate < Calendar1.SelectedDate.AddYears(18))
            {
                lblErrorFecha.Text = "El empleado debe ser mayor de 18 años.";
                lblErrorFecha.Visible = true;
            }
            else
            {
                lblErrorFecha.Text = "Las fechas seleccionadas son correctas";
                lblErrorFecha.Visible = true;
                lblErrorFecha.ForeColor = System.Drawing.Color.Green;
            }

        }

        protected void fechaNac_TextChanged(object sender, EventArgs e)
        {
            lblErrorFecha.Text = "";
            lblErrorFecha.Visible = false;
            lblErrorFecha.ForeColor = System.Drawing.Color.Red;
            DateTime fecha;
            if (!DateTime.TryParse(fechaNac.Text, out fecha))
            {
                lblErrorFecha.Text = "La fecha introducida no es correcta";
                lblErrorFecha.Visible = true;
                return;
            }
            Calendar1.SelectedDate = Convert.ToDateTime(fechaNac.Text);
            Calendar1.VisibleDate = Convert.ToDateTime(fechaNac.Text); 
            if (Calendar1.SelectedDate == DateTime.MinValue)
            {
                lblErrorFecha.Text = "Seleccione una fecha de nacimiento";
                lblErrorFecha.Visible = true;
                Calendar1.VisibleDate = Calendar1.SelectedDate;
            }
            else if (Calendar1.SelectedDate >= Calendar2.SelectedDate)
            {
                lblErrorFecha.Text = "Seleccione una fecha de nacimiento anterior a su fecha de ingreso";
                lblErrorFecha.Visible = true;
            }
            else if (Calendar1.SelectedDate >= DateTime.Now)
            {
                lblErrorFecha.Text = "Seleccione una fecha de nacimiento válida";
                lblErrorFecha.Visible = true;
            }
            else if (Calendar1.SelectedDate.AddYears(18) > DateTime.Now)
            {
                lblErrorFecha.Text = "El empleado debe ser mayor de 18 años.";
                lblErrorFecha.Visible = true;
            }
            else
            {
                lblErrorFecha.Text = "Las fechas seleccionadas son correctas";
                lblErrorFecha.Visible = true;
                lblErrorFecha.ForeColor = System.Drawing.Color.Green;
            }

        }

        protected void fechaIng_TextChanged(object sender, EventArgs e)
        {
            lblErrorFecha.Text = "";
            lblErrorFecha.Visible = false;
            lblErrorFecha.ForeColor = System.Drawing.Color.Red;
            DateTime fecha;
            if (!DateTime.TryParse(fechaIng.Text, out fecha))
            {
                lblErrorFecha.Text = "La fecha introducida no es correcta";
                lblErrorFecha.Visible = true;
                return;
            }
            Calendar2.SelectedDate = Convert.ToDateTime(fechaIng.Text);
            Calendar2.VisibleDate = Convert.ToDateTime(fechaIng.Text);
            if (Calendar2.SelectedDate < Calendar1.SelectedDate)
            {
                lblErrorFecha.Text = "Seleccione una fecha de nacimiento anterior a su fecha de ingreso";
                lblErrorFecha.Visible = true;
            }
            else if (Calendar2.SelectedDate < Calendar1.SelectedDate.AddYears(18))
            {
                lblErrorFecha.Text = "El empleado debe ser mayor de 18 años.";
                lblErrorFecha.Visible = true;
            }
            else
            {
                lblErrorFecha.Text = "Las fechas seleccionadas son correctas";
                lblErrorFecha.Visible = true;
                lblErrorFecha.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
}