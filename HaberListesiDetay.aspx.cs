using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class HaberListesiDetay : System.Web.UI.Page
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string katad = Request.QueryString["KATEGORIAD"];
        DataSetTableAdapters.TBL_HABERTableAdapter kategorihaberlistesi = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater1.DataSource = kategorihaberlistesi.KategoriHaberListesi(katad);
        Repeater1.DataBind();

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