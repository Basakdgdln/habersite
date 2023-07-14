using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HaberGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                int id = Convert.ToInt32(Request.QueryString["HABERID"]);
                DataSetTableAdapters.TBL_HABERTableAdapter dt = new DataSetTableAdapters.TBL_HABERTableAdapter();
                TxtID.Text = id.ToString();
                TxtBaslık.Text = dt.HaberGetirr(id)[0].HABERBASLIK;
                TxtIcerık.InnerText = dt.HaberGetirr(id)[0].HABERICERIK;
                TxtAltIcerık1.InnerText = dt.HaberGetirr(id)[0].ALTICERIK1;
                TxtAltIcerık2.InnerText = dt.HaberGetirr(id)[0].ALTICERIK2;
                Label1.Text = dt.HaberGetirr(id)[0].HABERPOPULAR;
                if (Convert.ToBoolean(Label1.Text) == true)
                {
                    RadioButton1.Checked = true;
                }
                else
                {
                    RadioButton2.Checked = true;
                }
            }

            catch (Exception)
            {
                //throw;

            }
        }
    }


    protected void BtnGonder_Click1(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    if (FileUpload1.PostedFile.ContentType == ".jpg || .jpeg|| .png")
                    {
                        FileUpload1.SaveAs(Server.MapPath("resimler/" + FileUpload1.FileName));

                        if (RadioButton1.Checked == true)
                        {
                            Label1.Text = RadioButton1.Checked.ToString();
                        }

                        else if (RadioButton2.Checked == true)
                        {
                            Label1.Text = RadioButton2.Checked.ToString();
                        }
                        else { }
   
                    }

                    else
                    {
                        Label2.Text = "JPG, JPEG, PNG türünde seçim yapınız.";
                    }
                }
                DataSetTableAdapters.TBL_HABERTableAdapter dt = new DataSetTableAdapters.TBL_HABERTableAdapter();
                dt.HaberGuncelle(TxtBaslık.Text, TxtIcerık.InnerText, TxtAltIcerık1.InnerText, TxtAltIcerık2.InnerText, "resimler/" + FileUpload1.FileName, bool.Parse(Label1.Text), Convert.ToInt32(TxtID.Text));
                Response.Redirect("HaberListesi.aspx");
            }

            catch (Exception)
            {

                throw;
            }
        }
    }
}
