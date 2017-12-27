using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ajax_del_ajax : System.Web.UI.Page {
    protected String id;
    SqlConnection conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected void Page_Load(object sender, EventArgs e) {
        // 前端按鈕傳來的id
        id = Request["id"];

        // sql 去刪除此id
        deleteReportReason(id);

        // ajax back to fortend
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        var responseEntities = new List<AjaxState>();
        AjaxState state = new AjaxState { state = id };
        responseEntities.Add(state);

        var result = serializer.Serialize(responseEntities);
        Response.Write(result);
        Response.End();
    }

    private void deleteReportReason(String id) {
        conn.Open();
        string reportReasonSql = "DELETE FROM ReportReason WHERE ReportID = " + "'" + id + "'";
        SqlCommand cmd = new SqlCommand(reportReasonSql, conn);
        SqlDataReader reportReasondr = cmd.ExecuteReader();
        // cmd.ExecuteNonQuery();
        cmd.Cancel();
        reportReasondr.Close();
        conn.Close();
    }
}

public class AjaxState {
    public string state { get; set; }
}