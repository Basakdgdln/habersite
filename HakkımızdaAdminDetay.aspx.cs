using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

public partial class HakkımızdaAdminDetay : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {


        if (Page.IsPostBack == false)
        {
            try
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                DataSetTableAdapters.TBL_HAKKIMIZDATableAdapter dt = new DataSetTableAdapters.TBL_HAKKIMIZDATableAdapter();
                TxtIcerık.InnerText = dt.HakkımızdaGuncelleGetir(id)[0].ICERIK;
                TxtAltIcerık.InnerText = dt.HakkımızdaGuncelleGetir(id)[0].ALTICERIK;
                TxtAltIcerık1.InnerText = dt.HakkımızdaGuncelleGetir(id)[0].ALTICERIK1;
              
            }

            catch (Exception)
            {

            }

        }
    }


    protected void BtnGonder_Click(object sender, EventArgs e)
    {

        //if (FileUpload1.HasFile)
        //{
        //    if (FileUpload1.PostedFile.ContentType == ".jpg || .jpeg|| .png")
        //    {
        //        FileUpload1.SaveAs(Server.MapPath("resimler/logo/" + FileUpload1.FileName));
        //    }

        //    else
        //    {
        //        Label1.Text = "JPG, JPEG, PNG türünde seçim yapınız.";
        //    }

        //}

        int id = Convert.ToInt32(Request.QueryString["ID"]);
        DataSetTableAdapters.TBL_HAKKIMIZDATableAdapter dt = new DataSetTableAdapters.TBL_HAKKIMIZDATableAdapter();
        dt.HakkımızdaGuncelle(TxtIcerık.InnerText, TxtAltIcerık.InnerText, TxtAltIcerık1.InnerText, "resimler/logo/" + FileUpload1.FileName, Convert.ToInt32(id));
        Response.Redirect("HakkımızdaAdmin.aspx");
    }
}
