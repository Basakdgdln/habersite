using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YazarDetay : System.Web.UI.Page
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");
    int yazarid;
    protected void Page_Load(object sender, EventArgs e)
    {

        DateTime tarih = DateTime.Now;
        Label1.Text = tarih.ToString();

        yazarid = Convert.ToInt32(Request.QueryString["YAZARID"]);
        DataSetTableAdapters.TBL_YAZARTableAdapter yazarresim = new DataSetTableAdapters.TBL_YAZARTableAdapter();
        Repeater1.DataSource = yazarresim.YazarResim(yazarid);
        Repeater1.DataBind();

        DataSetTableAdapters.TBL_YAZARTableAdapter yazargetir = new DataSetTableAdapters.TBL_YAZARTableAdapter();
        Repeater2.DataSource = yazargetir.YazarGetir(yazarid);
        Repeater2.DataBind();

        DataSetTableAdapters.TBL_KATEGORILERTableAdapter kategoriler = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
        Repeater3.DataSource = kategoriler.Kategoriler();
        Repeater3.DataBind();

        Repeater4.DataSource = kategoriler.Kategoriler();
        Repeater4.DataBind();



    }

    protected void Repeater3_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        SqlCommand komut = new SqlCommand("SELECT TOP 1 * FROM TBL_HABER INNER JOIN TBL_KATEGORILER ON TBL_HABER.KATEGORIID= TBL_KATEGORILER.KATEGORIID WHERE TBL_HABER.KATEGORIID=" + Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "KATEGORIID")), bgl);
        bgl.Open();
        Repeater rp = (Repeater)e.Item.FindControl("rpalt");
        rp.DataSource = komut.ExecuteReader();
        rp.DataBind();
        komut.Dispose();
        bgl.Close();

    }
}