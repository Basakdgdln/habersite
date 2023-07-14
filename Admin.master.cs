using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin : System.Web.UI.MasterPage
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        bgl.Open();
        SqlCommand komut = new SqlCommand("SELECT TOP 4 MESAJID, ADSOYAD, MESAJ , KONU, DATEDIFF(DAY, TARIH, GETDATE()) AS'TARIH' FROM TBL_GELENKUTUSU ORDER BY TARIH", bgl);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Repeater1.DataSource = dr;
            Repeater1.DataBind();
        }
        bgl.Close();

    }
}
