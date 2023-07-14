﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Haberler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["HABERID"].ToString());
        DataSetTableAdapters.TBL_HABERTableAdapter habergetir = new DataSetTableAdapters.TBL_HABERTableAdapter();
        Repeater1.DataSource = habergetir.HaberGetir(id);
        Repeater1.DataBind();
    }
}