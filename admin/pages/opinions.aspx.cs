using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_opinions : System.Web.UI.Page {
    SqlConnection conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");
    protected ArrayList opinionID = new ArrayList();
    protected ArrayList content = new ArrayList();
    protected ArrayList studentID = new ArrayList();
    protected int opinionInfoLength;
    protected void Page_Load(object sender, EventArgs e) {

        if (checkLogin())
        {
            conn.Open();
            selectOpinionInfo();
            conn.Close();
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
        }
    }

    private void selectOpinionInfo()
    {
        string opinionSql = "SELECT * " +
                           "FROM Opinion";
        SqlCommand cmd = new SqlCommand(opinionSql, conn);
        SqlDataReader opinionInfo = cmd.ExecuteReader();
        while (opinionInfo.Read())
        {
            opinionID.Add(opinionInfo["OpinionID"].ToString());
            content.Add(opinionInfo["Content"].ToString());
            studentID.Add(opinionInfo["StudentID"].ToString());
        }
        opinionInfoLength = opinionID.Count;
        cmd.Cancel();
        opinionInfo.Close();
    }

}