using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Giris : System.Web.UI.Page
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {
            bgl.Open();
            SqlCommand komut = new SqlCommand("SELECT * FROM TBL_EKİP WHERE MAIL=@MAIL AND SIFRE=@SIFRE", bgl);
            komut.Parameters.AddWithValue("@MAIL", TxtMail.Text);
            komut.Parameters.AddWithValue("@SIFRE", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("HaberListesi.aspx");
            }

            bgl.Close();

        }
    }
}
