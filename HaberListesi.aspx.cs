using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class HaberListesi : System.Web.UI.Page
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

        DataSetTableAdapters.TBL_HABERTableAdapter dt = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater1.DataSource = dt.HaberListesi();
        Repeater1.DataBind();


        bgl.Open();
        SqlCommand komut = new SqlCommand("SELECT  HABERID, HABERBASLIK, YAZARADSOYAD,KATEGORIAD, SUBSTRING(HABERICERIK,0,100)AS'HABERICERIK',SUBSTRING(ALTICERIK1,0,100)AS'ALTICERIK1', SUBSTRING(ALTICERIK2, 0,100) AS'ALTICERIK2', HABERTARIH, HABERPOPULAR FROM TBL_HABER INNER JOIN TBL_YAZAR ON TBL_HABER.YAZARID= TBL_YAZAR.YAZARID INNER JOIN TBL_KATEGORILER ON  TBL_HABER.KATEGORIID= TBL_KATEGORILER.KATEGORIID ORDER BY HABERTARIH ", bgl);
        SqlDataReader dr = komut.ExecuteReader();
        DataTable dtt = new DataTable();
        dtt.Load(dr);
        CollectionPager1.DataSource = dtt.DefaultView;
        CollectionPager1.BindToControl = Repeater1;
        Repeater1.DataSource = CollectionPager1.DataSourcePaged;
        Repeater1.DataBind();
        bgl.Close();

    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = DropDownList1.SelectedItem.Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HaberListesiDetay.aspx?KATEGORIAD=" + Label1.Text);
    }
}

//SqlDataReader da = new SqlDataReader(komut);       -->sonuç aynı
//da.Fill(dtt);
//Session["Table"] = dtt;
//DataTable sdt = new DataTable();
//sdt = (DataTable)Session["Table"];