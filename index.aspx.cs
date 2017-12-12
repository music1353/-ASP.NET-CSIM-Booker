using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{

    protected string loginAccount, loginPassword;

    protected void Page_Load(object sender, EventArgs e)
    {

        // 註冊表單
        loginAccount = Request.Form["loginAccount"];
        loginPassword = Request.Form["loginPassword"];

        // Output
        System.Diagnostics.Debug.WriteLine(loginAccount);
        System.Diagnostics.Debug.WriteLine(loginPassword);

        // 驗證remember password checkbox
        if (Request.Form["rememberCheck"] != null && Request.Form["rememberCheck"] == "on")
        {
            System.Diagnostics.Debug.WriteLine("remember");

            // 紀錄cookies
        }

     }

    
}