using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_members : System.Web.UI.Page {
    SqlConnection conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");
    protected ArrayList studentID = new ArrayList();
    protected ArrayList studentName = new ArrayList();
    protected ArrayList password = new ArrayList();
    protected ArrayList picture = new ArrayList();
    protected ArrayList violativeFrequency = new ArrayList();
    protected ArrayList permission = new ArrayList();
    protected ArrayList suspension = new ArrayList();
    protected int memberInfoLength;

    protected void Page_Load(object sender, EventArgs e) {

        if (checkLogin())
        {
            conn.Open();
            selectMemberInfo();
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

    private void selectMemberInfo()
    {
        string memberSql = "SELECT * " +
                           "FROM Member";
        SqlCommand cmd = new SqlCommand(memberSql, conn);
        SqlDataReader memberInfo = cmd.ExecuteReader();
        while (memberInfo.Read())
        {
            studentID.Add(memberInfo["StudentID"].ToString());
            studentName.Add(memberInfo["StudentName"].ToString());
            password.Add(memberInfo["Password"].ToString());
            picture.Add("../../personal/" + memberInfo["Picture"].ToString());
            violativeFrequency.Add(memberInfo["ViolativeFrequency"].ToString());
            permission.Add(memberInfo["Permission"].ToString());
            suspension.Add(memberInfo["Suspension"].ToString());
        }
        memberInfoLength = studentID.Count;
        cmd.Cancel();
        memberInfo.Close();
    }

}