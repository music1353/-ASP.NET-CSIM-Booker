﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_report_page : System.Web.UI.Page
{
    protected String name;

    protected void Page_Load(object sender, EventArgs e)
    {
        name = "蘇靖軒";

        if (IsPostBack)
        {
            String reportReason = Request.Form["reportReasonTextarea"];

            System.Diagnostics.Debug.WriteLine(reportReason);
        }
    }
}