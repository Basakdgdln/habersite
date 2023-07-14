using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class KategoriListesi : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_KATEGORILERTableAdapter dt = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
        Repeater1.DataSource = dt.Kategoriler();
        Repeater1.DataBind();
       
    }


    protected void BtnKategoriEkle_Click1(object sender, EventArgs e)
    {
        BtneEkle.Visible = true;
        TxtAD.Visible= true;
    }
    protected void BtneEkle_Click1(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {
            DataSetTableAdapters.TBL_KATEGORILERTableAdapter dtt = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
            dtt.KategoriEkle(TxtAD.Text);
            Response.Redirect("KategoriListesi.aspx");

            BtneEkle.Visible = false;
            TxtAD.Visible = false;

        }
    }
}