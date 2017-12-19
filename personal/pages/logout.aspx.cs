using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_logout : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

        Session.Abandon();

        Response.Redirect("../../index.aspx");
    }
}