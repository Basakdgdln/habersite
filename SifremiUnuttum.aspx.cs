using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SifremiUnuttum : System.Web.UI.Page
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        bgl.Open();
        int id= Convert.ToInt32(Request.QueryString["ID"]);
        SqlCommand komut = new SqlCommand("UPDATE TBL_EKİP SET SIFRE=@SIFRE WHERE ID=@ID", bgl);
        komut.Parameters.AddWithValue("@SIFRE", TxtSifre.Text);
        komut.Parameters.AddWithValue("@ID", id);
        komut.ExecuteNonQuery();
        Response.Redirect("Giris.aspx");
        bgl.Close();
        
    }
}