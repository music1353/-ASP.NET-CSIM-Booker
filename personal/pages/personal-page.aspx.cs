using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_personal_page : System.Web.UI.Page {
    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String userID;
    protected String name, avatar;
    protected String pname, pID, pEmail, pPassword;

    protected void Page_Load(object sender, EventArgs e) {
        if (Session["isLogin"] == "Y") {
            userID = Session["userID"].ToString();
            Conn.Open();
        }
        else {
            Response.Redirect("../index.aspx");
        }

        // navbar
        // navbarsql start
        String navbarsql = "SELECT [Member].StudentName, [Member].Picture " +
                           "FROM [Member] " +
                           "WHERE [Member].StudentID=" + userID;

        SqlCommand navbarCmd = new SqlCommand(navbarsql, Conn);
        SqlDataReader navbardr = navbarCmd.ExecuteReader();

        while (navbardr.Read()) {
            name = navbardr["StudentName"].ToString();
            avatar = "../" + navbardr["Picture"].ToString();
        }

        navbarCmd.Cancel();
        navbardr.Close();
        // navbarsql end

        // personalsql start
        String personalsql = "SELECT [Member].StudentName, [Password] " +
                             "FROM [Member] " +
                             "WHERE StudentID=" + userID;

        SqlCommand personalCmd = new SqlCommand(personalsql, Conn);
        SqlDataReader personaldr = personalCmd.ExecuteReader();

        while (personaldr.Read()) {
            pname = personaldr["StudentName"].ToString();
            pID = userID;
            pEmail = pID + "@scu.edu.tw";
            pPassword = personaldr["Password"].ToString();
        }

        personalCmd.Cancel();
        personaldr.Close();
        // personalsql end

        if (IsPostBack) {
            String newName = Request.Form["newName"];
            String newPassword = Request.Form["newPassword"];

            // newpasswordsql start
            String newpasswordsql = "UPDATE Member " +
                                    "SET StudentName='" + newName + "' ,[Password]='" + newPassword + "' " +
                                    "WHERE StudentID=" + userID;

            SqlCommand newpasswordCmd = new SqlCommand(newpasswordsql, Conn);
            newpasswordCmd.ExecuteReader();

            newpasswordCmd.Cancel();
            // personalsql end

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "complete();", true);
        }

        Conn.Close();
    }
}