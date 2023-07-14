using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HaberSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["HABERID"]);
        DataSetTableAdapters.TBL_HABERTableAdapter dt = new DataSetTableAdapters.TBL_HABERTableAdapter();
        dt.HaberSil(id);
        Response.Redirect("HaberListesi.aspx");
    }
}