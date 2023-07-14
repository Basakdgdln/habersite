using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YonetimEkip : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_EKİPTableAdapter ekip = new DataSetTableAdapters.TBL_EKİPTableAdapter();
        Repeater1.DataSource = ekip.Ekip();
        Repeater1.DataBind();
    
    }
}

   