using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            txtCodPre.Text = prestacionesBuscar1.Codigo;
            txtDesPre.Text = prestacionesBuscar1.Descripcion;

        }

        protected void btnVerPrestaciones_Click(object sender, EventArgs e)
        {
            if (btnSeleccionar.Visible == false)
            {
                btnSeleccionar.Visible = true;
                prestacionesBuscar1.Visible = true;
                btnVerPrestaciones.Text = "Ocultar prestaciones";
            }
            else
            {
                btnSeleccionar.Visible = false;
                prestacionesBuscar1.Visible = false;
                btnVerPrestaciones.Text = "Ver prestaciones";
            }
        }

    }
}