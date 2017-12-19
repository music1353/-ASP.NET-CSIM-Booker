using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index_modal_login : System.Web.UI.Page {
    
    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String account, password, violativeFrequency;

    protected void Page_Load(object sender, EventArgs e) {
        Conn.Open();

        // 註冊表單
        String loginAccount = Request.Form["loginAccount"];
        String loginPassword = Request.Form["loginPassword"];

        // Output
        System.Diagnostics.Debug.WriteLine(loginAccount);
        System.Diagnostics.Debug.WriteLine(loginPassword);

        String sql = "SELECT [Member].StudentID, [Member].Password, [Member].ViolativeFrequency " +
                     "FROM [Member] " +
                     "WHERE [Member].StudentID=" + loginAccount;
        SqlCommand Cmd = new SqlCommand(sql, Conn);

        SqlDataReader dr = Cmd.ExecuteReader();

        while (dr.Read()) {
            account = dr["StudentID"].ToString();
            password = dr["Password"].ToString();
            violativeFrequency = dr["ViolativeFrequency"].ToString();
        }

        if (account != null) {
            if (password == loginPassword && Convert.ToInt16(violativeFrequency) < 3) {
                String userID = account;
                Session["isLogin"] = "Y";
                Session["userID"] = userID;

                Response.Redirect("../personal/index.aspx");
            } else {
                Response.Write("<script language=javascript>alert('密碼錯誤');window.location.href='../index.aspx';</script>");
                Response.Redirect("../index.aspx");
            }
        } else {
            Response.Write("<script language=javascript>alert('無此帳號');window.location.href='../index.aspx';</script>");
        }

        Cmd.Cancel();
        dr.Close();
        Conn.Close();

        // 驗證remember password checkbox
        if (Request.Form["rememberCheck"] != null && Request.Form["rememberCheck"] == "on") {
            System.Diagnostics.Debug.WriteLine("remember");

            // 紀錄cookies
        }

    }
}