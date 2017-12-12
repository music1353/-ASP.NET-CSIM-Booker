using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class set_pages_signUp_page : System.Web.UI.Page
{

    protected string account, password, confirmPassword, name;

    protected void Page_Load(object sender, EventArgs e)
    {
        // 註冊表單
        account = Request.Form["account"];
        password = Request.Form["password"];
        confirmPassword = Request.Form["confirmPassword"];
        name = Request.Form["name"];

        // Output
        System.Diagnostics.Debug.WriteLine(account);
        System.Diagnostics.Debug.WriteLine(password);
        System.Diagnostics.Debug.WriteLine(confirmPassword);
        System.Diagnostics.Debug.WriteLine(name);


    }
}