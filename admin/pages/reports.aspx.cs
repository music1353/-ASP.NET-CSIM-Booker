using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_reports : System.Web.UI.Page {
    SqlConnection conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");
    protected ArrayList reportID = new ArrayList();
    protected ArrayList reason = new ArrayList();
    protected ArrayList studentID = new ArrayList();
    protected ArrayList deleteID = new ArrayList();
    protected int reportReasonInfoLength;

    protected void Page_Load(object sender, EventArgs e) {

        if (checkLogin())
        {
            conn.Open();
            selectReportReasonInfo();
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

    private void selectReportReasonInfo()
    {
        string reportReasonSql = "SELECT * " +
                           "FROM ReportReason";
        SqlCommand cmd = new SqlCommand(reportReasonSql, conn);
        SqlDataReader reportReasonInfo = cmd.ExecuteReader();
        while (reportReasonInfo.Read())
        {
            reportID.Add(reportReasonInfo["ReportID"].ToString());
            reason.Add(reportReasonInfo["Reason"].ToString());
            studentID.Add(reportReasonInfo["StudentID"].ToString());
            deleteID.Add(reportReasonInfo["ReportID"].ToString());
        }
        reportReasonInfoLength = reportID.Count;
        cmd.Cancel();
        reportReasonInfo.Close();
    }

}