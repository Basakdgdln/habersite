﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class CöpKutusu : System.Web.UI.Page
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        bgl.Open();
        SqlCommand komut = new SqlCommand("SELECT COUNT(DURUM) FROM TBL_GELENKUTUSU WHERE DURUM=1", bgl);
        Label1.Text = komut.ExecuteScalar().ToString();
        bgl.Close();

        DataSetTableAdapters.TBL_GELENKUTUSUTableAdapter onaysızadet = new DataSetTableAdapters.TBL_GELENKUTUSUTableAdapter();
        Label2.Text = onaysızadet.OnaysızMesajAdet().ToString();

        bgl.Open();
        SqlCommand komut2 = new SqlCommand("SELECT COUNT(*) FROM TBL_GELENKUTUSU", bgl);
        Label3.Text = komut2.ExecuteScalar().ToString();
        bgl.Close();

        int id = Convert.ToInt32(Request.QueryString["MESAJID"]);
        DataSetTableAdapters.TBL_GELENKUTUSUTableAdapter mesajsil = new DataSetTableAdapters.TBL_GELENKUTUSUTableAdapter();
        mesajsil.MesajSil(id);


        if (Page.IsPostBack == false)
        {
            try
            {
                bgl.Open();
                SqlCommand komut3 = new SqlCommand("SELECT * FROM TBL_SILINENKAYIT", bgl);
                SqlDataReader dr3 = komut3.ExecuteReader();
                Repeater1.DataSource = dr3;
                Repeater1.DataBind();
                bgl.Close();
            }
            catch (Exception)
            {


            }

        }




    }
}