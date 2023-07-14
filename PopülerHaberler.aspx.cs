using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PopülerHaberler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_HABERTableAdapter dt = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater1.DataSource= dt.PopülerHaberler();
        Repeater1.DataBind();
    }
}