using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_KATEGORILERTableAdapter kat = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
        DropDownList1.DataTextField = "KATEGORIAD";
        DropDownList1.DataValueField = "KATEGORIID";
        DropDownList1.DataSource = kat.Kategoriler();
        DropDownList1.DataBind();

        DataSetTableAdapters.TBL_YAZARTableAdapter yazar = new DataSetTableAdapters.TBL_YAZARTableAdapter();
        DropDownList2.DataTextField = "YAZARADSOYAD";
        DropDownList2.DataValueField = "YAZARID";
        DropDownList2.DataSource = yazar.YazarlarGetir();
        DropDownList2.DataBind();

    }
  
    protected void BtnGonder_Click1(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {

            try
            {
                FileUpload1.SaveAs(Server.MapPath("resimler/" + FileUpload1.FileName));
                DataSetTableAdapters.TBL_HABERTableAdapter dt = new DataSetTableAdapters.TBL_HABERTableAdapter();
                dt.HaberOlustur(TxtBaslık.Text, TxtIcerık.InnerText, TxtAltIcerık1.InnerText, TxtAltIcerık2.InnerText, "resimler/" + FileUpload1.FileName, DateTime.Now, int.Parse(DropDownList1.SelectedValue));
                Response.Redirect("HaberListesi.aspx");

            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}