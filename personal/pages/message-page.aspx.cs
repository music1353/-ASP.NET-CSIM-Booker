using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_message_page : System.Web.UI.Page {
    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String userID;
    protected String name, avatar;
    protected int length;
    protected ArrayList letterIDAL = new ArrayList();
    protected ArrayList letterTitleAL = new ArrayList();
    protected ArrayList letterContentAL = new ArrayList();

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

        // lettersql start
        String lettersql = "SELECT [Letter].LetterID, [Letter].LetterTitle, [Letter].LetterContent " +
                           "FROM Letter " +
                           "WHERE Letter.Recipient='" + userID + "' AND Letter.Visible='0'";
        SqlCommand letterCmd = new SqlCommand(lettersql, Conn);
        SqlDataReader letterdr = letterCmd.ExecuteReader();

        while (letterdr.Read()) {
            letterIDAL.Add(letterdr["LetterID"].ToString());
            letterTitleAL.Add(letterdr["LetterTitle"].ToString());
            letterContentAL.Add(letterdr["LetterContent"].ToString());
        }

        letterCmd.Cancel();
        letterdr.Close();
        // lettersql end

        length = letterTitleAL.Count;

        Conn.Close();
    }
}