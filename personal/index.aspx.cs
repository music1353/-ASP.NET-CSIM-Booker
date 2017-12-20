using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_Default : System.Web.UI.Page {

    protected String name, star, history_post_book_num, history_borrow_book_num;

    protected void Page_Load(object sender, EventArgs e) {

        if (Session["isLogin"] == "Y") {
            String userID = Session["userID"].ToString();
        } else {
            Response.Redirect("../index.aspx");
        }

        name = "蘇靖軒";
        star = "4.2";
        history_post_book_num = "";
        history_borrow_book_num = "";

        // System.Diagnostics.Debug.Write(Session["userID"]);
    }
}