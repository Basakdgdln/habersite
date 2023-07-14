using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KategoriGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
                DataSetTableAdapters.TBL_KATEGORILERTableAdapter dt = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
                TxtKatID.Text = id.ToString();
                TxtKatAD.Text = dt.KategoriGetir(id)[0].KATEGORIAD;

            }
            catch (Exception)
            {
                
                throw;
            }
          
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_KATEGORILERTableAdapter dt = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
        dt.KategoriGuncelle(TxtKatAD.Text, Convert.ToInt32(TxtKatID.Text));
        Response.Redirect("KategoriListesi.aspx");
    }
}