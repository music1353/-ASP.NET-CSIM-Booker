using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_post_page : System.Web.UI.Page
{
    protected String name;

    protected void Page_Load(object sender, EventArgs e)
    {
        name = "蘇靖軒";

        if (IsPostBack)
        {
            String postType = Request.Form["postType"];
            String postSubject = Request.Form["postSubject"];
            String projectName = Request.Form["projectName"];
            String changeDate = Request.Form["changeDate"];
            String changeTime = Request.Form["changeTime"];
            String changeSite = Request.Form["changeSite"];
            String returnDate = Request.Form["returnDate"];
            String returnTime = Request.Form["returnTime"];
            String returnSite = Request.Form["returnSite"];
            String introduction = Request.Form["introduction"];

            HttpPostedFile image = Request.Files["bookImg"];
            if (image.ContentLength > 0)
            {
                string FileName = "1.jpg";
                string targetLocation = Server.MapPath("../../books-images/");

                image.SaveAs(targetLocation + FileName);
            }

            System.Diagnostics.Debug.WriteLine(postType);
            System.Diagnostics.Debug.WriteLine(postSubject);
            System.Diagnostics.Debug.WriteLine(projectName);
            System.Diagnostics.Debug.WriteLine(changeDate);
            System.Diagnostics.Debug.WriteLine(changeTime);
            System.Diagnostics.Debug.WriteLine(changeSite);
            System.Diagnostics.Debug.WriteLine(returnDate);
            System.Diagnostics.Debug.WriteLine(returnTime);
            System.Diagnostics.Debug.WriteLine(returnSite);
            System.Diagnostics.Debug.WriteLine(introduction);

        }
    }
}