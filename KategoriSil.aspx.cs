using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KategoriSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
   {
       int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
        DataSetTableAdapters.TBL_KATEGORILERTableAdapter dt = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
        dt.KategoriSil(id);
        Response.Redirect("KategoriListesi.aspx");


    }
}