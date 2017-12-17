using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            // 註冊表單
            String loginAccount = Request.Form["loginAccount"];
            String loginPassword = Request.Form["loginPassword"];

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

    
}