using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_borrowing_page : System.Web.UI.Page {
    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String userID;
    protected String name, avatar;

    protected ArrayList teachingMaterialIDAL = new ArrayList();
    protected ArrayList teachingMaterialNameAL = new ArrayList();
    protected ArrayList publisherIDAL = new ArrayList();
    protected ArrayList publisherNameAL = new ArrayList();
    protected ArrayList publisherAvatarAL = new ArrayList();
    protected ArrayList publisherStarAL = new ArrayList();
    protected ArrayList materialPictureAL = new ArrayList();
    protected ArrayList materialDescribeAL = new ArrayList();
    protected ArrayList revertPlaceAL = new ArrayList();
    protected ArrayList revertDateAndTimeAL = new ArrayList();
    protected Int16 allLength;

    protected void Page_Load(object sender, EventArgs e) {
        if (Session["isLogin"] == "Y") {
            userID = Session["userID"].ToString();
            Conn.Open();
        }
        else {
            Response.Redirect("../index.aspx");
        }

        // navbar
        // navbarsql start
        String navbarsql = "SELECT [Member].StudentName, [Member].Picture " +
                           "FROM [Member] " +
                           "WHERE [Member].StudentID=" + userID;

        SqlCommand navbarCmd = new SqlCommand(navbarsql, Conn);
        SqlDataReader navbardr = navbarCmd.ExecuteReader();

        while (navbardr.Read()) {
            name = navbardr["StudentName"].ToString();
            avatar = "../" + navbardr["Picture"].ToString();
        }

        navbarCmd.Cancel();
        navbardr.Close();
        // navbarsql end

        // borrowingsql start
        String borrowingsql = "SELECT [TeachingMaterial].TeachingMaterialID, [TeachingMaterial].TeachingMaterialName, [Member].StudentID, " +
                              "[Member].StudentName, [Member].Picture, [TeachingMaterial].MaterialPicture, [TeachingMaterial].MaterialDescribe, " +
                              "[Lease].RevertPlace, [Lease].RevertDate, [Lease].RevertTime " +
                              "FROM [Member], [TeachingMaterial], [Lease] " +
                              "WHERE [Member].StudentID=[TeachingMaterial].PublisherID AND [Lease].TeachingMaterialID=[TeachingMaterial].TeachingMaterialID " +
                              "AND BorrowerID='" + userID + "' AND [Lease].RevertSituation='0'";

        SqlCommand borrowingCmd = new SqlCommand(borrowingsql, Conn);

        SqlDataReader borrowingdr = borrowingCmd.ExecuteReader();

        while (borrowingdr.Read()) {
            teachingMaterialIDAL.Add(borrowingdr["TeachingMaterialID"].ToString());
            teachingMaterialNameAL.Add(borrowingdr["TeachingMaterialName"].ToString());
            publisherIDAL.Add(borrowingdr["StudentID"].ToString());
            publisherNameAL.Add(borrowingdr["StudentName"].ToString());
            publisherAvatarAL.Add("../" + borrowingdr["Picture"].ToString());
            materialPictureAL.Add("../../" + borrowingdr["MaterialPicture"].ToString());
            materialDescribeAL.Add(borrowingdr["MaterialDescribe"].ToString());
            revertPlaceAL.Add(borrowingdr["RevertPlace"].ToString());
            revertDateAndTimeAL.Add(borrowingdr["RevertDate"].ToString() + " " + borrowingdr["RevertTime"].ToString());
        }

        allLength = Convert.ToInt16(teachingMaterialIDAL.Count);

        borrowingCmd.Cancel();
        borrowingdr.Close();
        // allbooksql end

        // publisherstarsql start
        foreach (String id in publisherIDAL) {
            String starsql = "SELECT [Member].StudentName,ROUND(AVG([UserEvaluation].Grade),1) as AverageGrade " +
                             "FROM [Member],[UserEvaluation] " +
                             "WHERE [UserEvaluation]. EvaluatedStudentID=" + id + " AND [UserEvaluation].EvaluatedStudentID =[Member].StudentID " +
                             "GROUP BY [Member].StudentName";
            SqlCommand starCmd = new SqlCommand(starsql, Conn);
            SqlDataReader stardr = starCmd.ExecuteReader();

            if (stardr.HasRows) {
                while (stardr.Read()) {
                    publisherStarAL.Add(stardr["AverageGrade"].ToString());
                }
            }
            else {
                publisherStarAL.Add("new");
                System.Diagnostics.Debug.Write("null");
            }

            starCmd.Cancel();
            stardr.Close();
        }
        // publisherstarsql end

        Conn.Close();
    }
}