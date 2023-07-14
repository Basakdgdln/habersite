using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajOlustur : System.Web.UI.Page
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

        DataSetTableAdapters.TBL_EKİPTableAdapter mail = new DataSetTableAdapters.TBL_EKİPTableAdapter();
        DropDownList1.DataSource = mail.Mail();
        DropDownList1.DataTextField = "MAIL";
        DropDownList1.DataValueField = "MAIL";
        DropDownList1.DataBind();
        



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_EKİPMESAJ2TableAdapter mailekle = new DataSetTableAdapters.TBL_EKİPMESAJ2TableAdapter();
        mailekle.MailEkle(TxtGonderen.Text, DropDownList1.SelectedItem.Text, TxtKonu.Text, TxtMesaj.InnerText);
        Response.Redirect("MesajOlustur.aspx");
    }
}