using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class İletisim : System.Web.UI.Page
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

        DateTime tarih = DateTime.Now;
        Label1.Text = tarih.ToString();

        DataSetTableAdapters.TBL_KATEGORILERTableAdapter kategoriler = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
        Repeater2.DataSource = kategoriler.Kategoriler();
        Repeater2.DataBind();

        Repeater1.DataSource = kategoriler.Kategoriler();
        Repeater1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            DataSetTableAdapters.TBL_GELENKUTUSUTableAdapter dt = new DataSetTableAdapters.TBL_GELENKUTUSUTableAdapter();
            dt.GelenMesajlar(Txtİsim.Text, TxtMail.Text, TxtKonu.Text, TxtMesaj.InnerText);
            Response.Redirect("İletisim.aspx");

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