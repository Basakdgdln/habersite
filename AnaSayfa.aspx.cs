using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AnaSayfa : System.Web.UI.Page
{
    SqlConnection bgl = new SqlConnection("Data Source=DESKTOP-9FLU0L0;Initial Catalog=HaberSite;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime tarih = DateTime.Now;
        Label1.Text = tarih.ToString();

        int katid = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
        DataSetTableAdapters.TBL_HABERTableAdapter slider = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater18.DataSource = slider.DunyaHaber();
        Repeater18.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter ekonomison = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater13.DataSource = ekonomison.EkonomiSon();
        Repeater13.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter saglıkson = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater14.DataSource = saglıkson.SaglıkSon();
        Repeater14.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter kadınson = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater15.DataSource = kadınson.KadınSon();
        Repeater15.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter teknolojison = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater16.DataSource = teknolojison.TeknolojiSon();
        Repeater16.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter ekonomiiki = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater4.DataSource = ekonomiiki.EkonomiİkiKayıt();
        Repeater4.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter ortancaslider = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater17.DataSource = ortancaslider.OrtancaKategoriSlider();
        Repeater17.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter saglıkiki = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater5.DataSource = saglıkiki.SaglıkİkiKayıt();
        Repeater5.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter sporson = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater2.DataSource = sporson.SporSon();
        Repeater2.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter sporuckayıt = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater3.DataSource = sporuckayıt.SporUcKayıt();
        Repeater3.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter teknolojikat = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater6.DataSource = teknolojikat.TeknolojiKategorisi();
        Repeater6.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter teknolojiiki = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater7.DataSource = teknolojiiki.TeknolojiİkiKayıt();
        Repeater7.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter kadınkat = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater8.DataSource = kadınkat.KadınKategorisi();
        Repeater8.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter kadıniki = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater9.DataSource = kadıniki.KadınİkiKayıt();
        Repeater9.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter eglencekat = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater1.DataSource = eglencekat.EglenceKategorisi();
        Repeater1.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter eglenceuckayıt = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater10.DataSource = eglenceuckayıt.EglenceUcKayıt();
        Repeater10.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter songonderiler = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater11.DataSource = songonderiler.SonGonderiler();
        Repeater11.DataBind();

        DataSetTableAdapters.TBL_HABERTableAdapter enpopüler = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater12.DataSource = enpopüler.EnPopüler();
        Repeater12.DataBind();

        DataSetTableAdapters.TBL_KATEGORILERTableAdapter kategoriler = new DataSetTableAdapters.TBL_KATEGORILERTableAdapter();
        Repeater19.DataSource = kategoriler.Kategoriler();
        Repeater19.DataBind();

        Repeater20.DataSource = kategoriler.Kategoriler();
        Repeater20.DataBind();

    

    }
    protected void Repeater19_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        SqlCommand komut = new SqlCommand("SELECT TOP 1 * FROM TBL_HABER INNER JOIN TBL_KATEGORILER ON TBL_HABER.KATEGORIID= TBL_KATEGORILER.KATEGORIID WHERE TBL_HABER.KATEGORIID=" + Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "KATEGORIID")), bgl);
        bgl.Open();
        Repeater rp = (Repeater)e.Item.FindControl("rpalt");
        rp.DataSource = komut.ExecuteReader();
        rp.DataBind();
        komut.Dispose();
        bgl.Close();
    }
}