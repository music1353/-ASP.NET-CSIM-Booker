﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_index : System.Web.UI.Page {

    protected void Page_Load(object sender, EventArgs e) {

        if (Session["isLogin"] == "Y" && Session["isAdmin"] == "Y") {
            // pass
        } else {
            Response.Redirect("../index.aspx");
        }

        // TODO
    }
}