using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HakkımızdaAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_HAKKIMIZDATableAdapter dt = new DataSetTableAdapters.TBL_HAKKIMIZDATableAdapter();
        Repeater1.DataSource = dt.HakkımızdaGetir();
        Repeater1.DataBind();
    }
}