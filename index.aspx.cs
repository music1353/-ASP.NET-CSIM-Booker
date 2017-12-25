using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page {

    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String account, password, suspension, permission;

    protected void Page_Load(object sender, EventArgs e) {

        Conn.Open();

        if (IsPostBack) {
            // 登入表單
            String loginAccount = Request.Form["loginAccount"];
            String loginPassword = Request.Form["loginPassword"];

            String sql = "SELECT [Member].StudentID, [Member].Password, [Member].Suspension, [Member].Permission " +
                         "FROM [Member] " +
                         "WHERE [Member].StudentID=" + loginAccount;

            SqlCommand Cmd = new SqlCommand(sql, Conn);

            SqlDataReader dr = Cmd.ExecuteReader();

            while (dr.Read()) {
                account = dr["StudentID"].ToString();
                password = dr["Password"].ToString();
                suspension = dr["Suspension"].ToString();
                permission = dr["Permission"].ToString();
            }

            if (account != null) {
                if (password == loginPassword && Convert.ToInt16(suspension) != 1 && Convert.ToInt16(permission) != 1) {
                    String userID = account;
                    Session["isLogin"] = "Y";
                    Session["userID"] = userID;

                    Response.Redirect("personal/index.aspx");
                } else if (password == loginPassword && Convert.ToInt16(suspension) == 1) {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "errorBlock();", true);
                } else if (password == loginPassword && Convert.ToInt16(permission) == 1) {
                    String userID = account;
                    Session["isLogin"] = "Y";
                    Session["isAdmin"] = "Y";
                    Session["userID"] = userID;

                    Response.Redirect("admin/index.aspx");
                } else {
                    System.Diagnostics.Debug.WriteLine("不相等");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "errorPassword();", true);
                }
            } else {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "errorAccount();", true);
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


}