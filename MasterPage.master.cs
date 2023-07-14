using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime tarih = DateTime.Now;
        Label1.Text = tarih.ToString();
        int katid = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
        int id = Convert.ToInt32(Request.QueryString["HABERID"]);

        DataSetTableAdapters.TBL_HABERTableAdapter oncekihaber = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater4.DataSource = oncekihaber.OncekiHaber(id);
        Repeater4.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter sonrakihaber = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater5.DataSource = sonrakihaber.SonrakiHaber(id);
        Repeater5.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter benzzergonderiler = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater9.DataSource = benzzergonderiler.BenzerGonderiler(id);
        Repeater9.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter songonderiler = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater11.DataSource = songonderiler.SonGonderiler();
        Repeater11.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter enpopüler = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater12.DataSource = enpopüler.EnPopüler();
        Repeater12.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter ustbaslık = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater1.DataSource = ustbaslık.UstBaslık(id);
        Repeater1.DataBind();

        DataSetTableAdapters.TBL_KATEGORILERTableAdapter kategoriler = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
        Repeater2.DataSource = kategoriler.Kategoriler();
        Repeater2.DataBind();

        Repeater6.DataSource = kategoriler.Kategoriler();
        Repeater6.DataBind();
     
    }
 
    protected void Repeater2_ItemDataBound(object sender, RepeaterItemEventArgs e)
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
