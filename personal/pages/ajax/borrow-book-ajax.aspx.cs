using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_ajax_borrow_book_ajax : System.Web.UI.Page {

    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String userID, bookID, publisherID, nextLetterID;

    protected void Page_Load(object sender, EventArgs e) {

        Conn.Open();

        userID = Session["userID"].ToString();
        bookID = Request.Form["bookID"];

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

        // insert letter to 擁有者([Letter].LeaseID=bookID)
        // findmaxLetterIDsql start
        String findmaxLetterIDsql = "SELECT MAX (CONVERT(int, \"LetterID\")) as maxID " +
                                    "FROM UserEvaluation";

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
                                 "VALUES('" + nextLetterID + "', '書籍已出借', '您所刊登的教材已被成功租借', '" + publisherID + "', '0', '" + bookID + "')";
        SqlCommand insertLetterCmd = new SqlCommand(insertLettersql, Conn);
        SqlDataReader insertLetterdr = insertLetterCmd.ExecuteReader();
        insertLetterCmd.Cancel();
        insertLetterdr.Close();


        // 更改[TeachingMaterial] RentalSituation=1
        String updateRSsql = "UPDATE [TeachingMaterial] " +
                             "SET [TeachingMaterial].RentalSituation='1' " +
                             "WHERE [TeachingMaterial].TeachingMaterialID='" + bookID + "'";
        SqlCommand updateRSCmd = new SqlCommand(updateRSsql, Conn);
        SqlDataReader updateRSdr = updateRSCmd.ExecuteReader();

        updateRSCmd.Cancel();
        updateRSdr.Close();

        // 更改[lease] borrowerID & RevertSitutaion=0
        String updateLeasesql = "UPDATE [Lease] " +
                                "SET [Lease].BorrowerID='" + userID + "', [Lease].RevertSituation='0' " +
                                "WHERE [Lease].LeaseID='" + bookID + "'";
        SqlCommand updateLeaseCmd = new SqlCommand(updateLeasesql, Conn);
        SqlDataReader updateLeasedr = updateLeaseCmd.ExecuteReader();

        updateLeaseCmd.Cancel();
        updateLeasedr.Close();

        // ajax back
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        var responseEntities = new List<BorrowState>();
        BorrowState state = new BorrowState { state = "success" };
        responseEntities.Add(state);

        var result = serializer.Serialize(responseEntities);
        Response.Write(result);
        Response.End();


        Conn.Close();
    }
}

public class BorrowState {
    public string state { get; set; }
}