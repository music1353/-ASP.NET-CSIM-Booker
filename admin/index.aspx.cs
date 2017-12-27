using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_index : System.Web.UI.Page {
 
    protected void Page_Load(object sender, EventArgs e) {

        if(checkLogin())
        {

        }
        else
        {
            Response.Redirect("../index.aspx");
        }
    }

    private bool checkLogin()
    {
        if (Session["isLogin"] == "Y" && Session["isAdmin"] == "Y")
        {
            return true;
        }
        else
        {
            return false;
            Response.Redirect("../index.aspx");
        }
    }
}