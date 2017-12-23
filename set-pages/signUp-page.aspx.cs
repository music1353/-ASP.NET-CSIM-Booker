using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class set_pages_signUp_page : System.Web.UI.Page {

    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String drAccount;

    protected void Page_Load(object sender, EventArgs e) {


        if (IsPostBack) {
            // 註冊表單
            String account = Request.Form["account"];
            String password = Request.Form["password"];
            String confirmPassword = Request.Form["confirmPassword"];
            String name = Request.Form["name"];
            String avatar = Request.Form["avatar"];

            Conn.Open();

            // isexistsql start
            String isexistsql = "SELECT [Member].StudentID " +
                                "FROM [Member] " +
                                "WHERE [Member].StudentID='" + account + "'";

            SqlCommand isexistCmd = new SqlCommand(isexistsql, Conn);
            SqlDataReader isexistdr = isexistCmd.ExecuteReader();

            while (isexistdr.Read()) {
                drAccount = isexistdr["StudentName"].ToString();
            }

            isexistCmd.Cancel();
            isexistdr.Close();
            // isexistsql end

            if (drAccount != null) {
                Response.Write("<script language=javascript>alert('註冊失敗，已有此帳號!');</script>");
            } else {
                // signupsql start
                String signupsql = "INSERT INTO MEMBER(StudentID,StudentName,[Password],Picture) " +
                                   "VALUES('" + account + "','" + name + "','" + password + "','images/avatar-img/" + avatar + ".png')";

                SqlCommand signupCmd = new SqlCommand(signupsql, Conn);
                signupCmd.ExecuteReader();

                signupCmd.Cancel();
                // signupsql end

                Response.Write("<script language=javascript>alert('註冊成功!'); window.location.href='../index.aspx'</script>");
            }

            Conn.Close();

        }

    }
}