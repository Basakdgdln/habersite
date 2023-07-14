using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Yazar2 : System.Web.UI.Page
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["YAZARID"]);
        bgl.Open();
        SqlCommand komut = new SqlCommand("SELECT * FROM TBL_YAZAR", bgl);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Repeater1.DataSource = dr;
            Repeater1.DataBind();
        }
        bgl.Close();

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
        bgl.Open();
        SqlCommand komut2 = new SqlCommand("SELECT * FROM TBL_YAZAR ", bgl);
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataTable dtt = new DataTable();
        dtt.Load(dr2);
        CollectionPager1.DataSource = dtt .DefaultView;
        CollectionPager1.BindToControl = Repeater1;
        Repeater1.DataSource = CollectionPager1.DataSourcePaged;
        Repeater1.DataBind();
        bgl.Close();



        DataSetTableAdapters.TBL_KATEGORILERTableAdapter kategoriler = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
        Repeater4.DataSource = kategoriler.Kategoriler();
        Repeater4.DataBind();
        Repeater5.DataSource = kategoriler.Kategoriler();
        Repeater5.DataBind();

    }
    protected void Repeater4_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        SqlCommand komut = new SqlCommand("SELECT TOP 1 * FROM TBL_HABER INNER JOIN TBL_KATEGORILER ON TBL_HABER.KATEGORIID= TBL_KATEGORILER.KATEGORIID WHERE TBL_HABER.KATEGORIID=" + Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "KATEGORIID")), bgl);
        bgl.Open();
        Repeater rp = (Repeater)e.Item.FindControl("rpalt");
        rp.DataSource= komut.ExecuteReader();
        rp.DataBind();
        komut.Dispose();
        bgl.Close();
    }
}
