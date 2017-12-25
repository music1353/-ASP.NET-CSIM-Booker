using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_ajax_revert_book_ajax : System.Web.UI.Page
{

    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String userID, bookID, grade, content;
    protected String publisherID, nextUEvaID, nextLetterID;

    protected void Page_Load(object sender, EventArgs e)
    {
        Conn.Open();

        userID = Session["userID"].ToString();
        bookID = Request.Form["bookID"];
        grade = Request.Form["grade"];
        content = Request.Form["content"];

        // 查書籍的擁有者ID
        String publisherIDsql = "SELECT [TeachingMaterial].PublisherID " +
                                "FROM [TeachingMaterial] " +
                                "WHERE [TeachingMaterial].TeachingMaterialID='" + bookID + "'";
        SqlCommand publisherIDCmd = new SqlCommand(publisherIDsql, Conn);
        SqlDataReader publisherIDdr = publisherIDCmd.ExecuteReader();

        while (publisherIDdr.Read()) {
            publisherID = publisherIDdr["PublisherID"].ToString();
        }

        publisherIDCmd.Cancel();
        publisherIDdr.Close();

        // insert letter to 擁有者([Letter].LeaseID=0)
        // findmaxLetterIDsql start
        String findmaxLetterIDsql = "SELECT MAX (CONVERT(int, \"LetterID\")) as maxID " +
                                    "FROM Letter";

        SqlCommand findmaxLetterIDCmd = new SqlCommand(findmaxLetterIDsql, Conn);
        SqlDataReader findmaxLetterIDdr = findmaxLetterIDCmd.ExecuteReader();

        while (findmaxLetterIDdr.Read()) {
            Int16 maxID = Convert.ToInt16(findmaxLetterIDdr["maxID"].ToString());
            nextLetterID = (maxID + 1).ToString();
        }

        findmaxLetterIDCmd.Cancel();
        findmaxLetterIDdr.Close();
        // findmaxLetterIDsql end

        String insertLettersql = "INSERT INTO Letter " +
                                 "VALUES('"+nextLetterID+"','您的書已被租借者完成評價','"+publisherID+"', '0')";
        SqlCommand insertLetterCmd = new SqlCommand(insertLettersql, Conn);
        SqlDataReader insertLetterdr = insertLetterCmd.ExecuteReader();
        insertLetterCmd.Cancel();
        insertLetterdr.Close();


        // 更改[lease].RevertSitutaion=1
        String updateLeasesql = "UPDATE [Lease] " +
                                "SET [Lease].RevertSituation='1' " +
                                "WHERE [Lease].LeaseID='" + bookID + "'";
        SqlCommand updateLeaseCmd = new SqlCommand(updateLeasesql, Conn);
        SqlDataReader updateLeasedr = updateLeaseCmd.ExecuteReader();

        updateLeaseCmd.Cancel();
        updateLeasedr.Close();

        // 新增UserEvalution
        // findmaxUEvaIDsql start
        String findmaxUEvaIDsql = "SELECT MAX (CONVERT(int, \"UserEvaluationID\")) as maxID " +
                                  "FROM UserEvaluation";

        SqlCommand findmaxUEvaIDCmd = new SqlCommand(findmaxUEvaIDsql, Conn);
        SqlDataReader findmaxUEvaIDdr = findmaxUEvaIDCmd.ExecuteReader();

        while (findmaxUEvaIDdr.Read()) {
            Int16 maxID = Convert.ToInt16(findmaxUEvaIDdr["maxID"].ToString());
            nextUEvaID = (maxID + 1).ToString();
        }

        findmaxUEvaIDCmd.Cancel();
        findmaxUEvaIDdr.Close();
        // findmaxUEvaIDsql end

        // insertEvasql start
        String insertEvasql = "INSERT INTO UserEvaluation " +
                              "VALUES('"+nextUEvaID+"','"+grade+"','"+content+"','"+publisherID+"', '"+nextLetterID+"')";
        SqlCommand insertEvaCmd = new SqlCommand(insertEvasql, Conn);
        SqlDataReader insertEvadr = insertEvaCmd.ExecuteReader();
        insertEvaCmd.Cancel();
        insertEvadr.Close();
        // insertEvasql end

        // ajax back
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        var responseEntities = new List<RevertState>();
        RevertState state = new RevertState { state = "success" };
        responseEntities.Add(state);

        var result = serializer.Serialize(responseEntities);
        Response.Write(result);
        Response.End();


        Conn.Close();
    }
}

public class RevertState {
    public string state { get; set; }
}