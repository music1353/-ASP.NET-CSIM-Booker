using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class personal_pages_borrow_ajax : System.Web.UI.Page {

    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String userID;
    protected ArrayList teachingMaterialIDAL = new ArrayList();
    protected ArrayList teachingMaterialNameAL = new ArrayList();
    protected ArrayList publisherIDAL = new ArrayList();
    protected ArrayList publisherNameAL = new ArrayList();
    protected ArrayList publisherAvatarAL = new ArrayList();
    protected ArrayList publisherStarAL = new ArrayList();
    protected ArrayList materialPictureAL = new ArrayList();
    protected ArrayList materialDescribeAL = new ArrayList();
    protected ArrayList rentPlaceAL = new ArrayList();
    protected ArrayList rentDateAndTimeAL = new ArrayList();
    protected Int16 allLength;

    protected void Page_Load(object sender, EventArgs e) {

        userID = Session["userID"].ToString();

        String bookSubject = Request.Form["bookSubject"];
        String subject;

        Conn.Open();

        if (bookSubject == "all") {
            // allbooksql start
            String allbooksql = "SELECT [TeachingMaterial].TeachingMaterialID, [TeachingMaterial].TeachingMaterialName, [Member].StudentID, " +
                                "[Member].StudentName, [Member].Picture, [TeachingMaterial].MaterialPicture, [TeachingMaterial].MaterialDescribe, " +
                                "[Lease].RentPlace, [Lease].RentDate, [Lease].RentTime " +
                                "FROM [Member], [TeachingMaterial], [Lease] " +
                                "WHERE [Member].StudentID=[TeachingMaterial].PublisherID AND [Lease].TeachingMaterialID=[TeachingMaterial].TeachingMaterialID " +
                                "AND [TeachingMaterial].RentalSituation='0' AND [TeachingMaterial].publisherID!='" + userID + "' ";

            SqlCommand allbookCmd = new SqlCommand(allbooksql, Conn);

            SqlDataReader allbookdr = allbookCmd.ExecuteReader();

            while (allbookdr.Read()) {
                teachingMaterialIDAL.Add(allbookdr["TeachingMaterialID"].ToString());
                teachingMaterialNameAL.Add(allbookdr["TeachingMaterialName"].ToString());
                publisherIDAL.Add(allbookdr["StudentID"].ToString());
                publisherNameAL.Add(allbookdr["StudentName"].ToString());
                publisherAvatarAL.Add("../" + allbookdr["Picture"].ToString());
                materialPictureAL.Add("../../" + allbookdr["MaterialPicture"].ToString());
                materialDescribeAL.Add(allbookdr["MaterialDescribe"].ToString());
                rentPlaceAL.Add(allbookdr["RentPlace"].ToString());
                rentDateAndTimeAL.Add(allbookdr["RentDate"].ToString() + " " + allbookdr["RentTime"].ToString());
            }

            allLength = Convert.ToInt16(teachingMaterialIDAL.Count);

            allbookCmd.Cancel();
            allbookdr.Close();
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

            // ajax回傳的data start
            JavaScriptSerializer serializer = new JavaScriptSerializer();

            var responseEntities = new List<Book>();
            for (int i = 0; i < allLength; i++) {
                Book book = new Book {
                    publisherID = publisherIDAL[i].ToString(),
                    Name = publisherNameAL[i].ToString(),
                    Avatar = publisherAvatarAL[i].ToString(),
                    BookID = teachingMaterialIDAL[i].ToString(),
                    Star = publisherStarAL[i].ToString(),
                    BookName = teachingMaterialNameAL[i].ToString(),
                    BookImage = materialPictureAL[i].ToString(),
                    BookDescription = materialDescribeAL[i].ToString(),
                    ChangeSite = rentPlaceAL[i].ToString(),
                    ChangeTime = rentDateAndTimeAL[i].ToString()
                };
                responseEntities.Add(book);
            }

            var result = serializer.Serialize(responseEntities);
            Response.Write(result);
            Response.End();
            // ajax回傳的data end

            Conn.Close();

        }
        else {

            if (bookSubject == "cal") {
                subject = "微積分";
                ajaxback(subject);
            }
            else if (bookSubject == "fin-math") {
                subject = "管理數學";
                ajaxback(subject);
            }
            else if (bookSubject == "fin-management") {
                subject = "財務管理";
                ajaxback(subject);
            }
            else if (bookSubject == "dis-math") {
                subject = "離散數學";
                ajaxback(subject);
            }
            else if (bookSubject == "statistic") {
                subject = "統計學";
                ajaxback(subject);
            }
            else if (bookSubject == "en") {
                subject = "英文";
                ajaxback(subject);
            }
            else if (bookSubject == "ch") {
                subject = "國文";
                ajaxback(subject);
            }
            else if (bookSubject == "jp") {
                subject = "日文";
                ajaxback(subject);
            }
            else if (bookSubject == "java") {
                subject = "JAVA程式設計";
                ajaxback(subject);
            }
            else if (bookSubject == "data-str") {
                subject = "資料結構";
                ajaxback(subject);
            }
            else if (bookSubject == "algorithms") {
                subject = "演算法";
                ajaxback(subject);
            }
            else if (bookSubject == "app") {
                subject = "行動平台程式設計";
                ajaxback(subject);
            }
            else if (bookSubject == "html") {
                subject = "網際網路程式設計";
                ajaxback(subject);
            }
            else if (bookSubject == "management") {
                subject = "管理學";
                ajaxback(subject);
            }
            else if (bookSubject == "management-sys") {
                subject = "資訊管理系統";
                ajaxback(subject);
            }
            else if (bookSubject == "database-management") {
                subject = "資料庫管理";
                ajaxback(subject);
            }
            else if (bookSubject == "marketing") {
                subject = "行銷學";
                ajaxback(subject);
            }
            else if (bookSubject == "accounting") {
                subject = "會計學";
                ajaxback(subject);
            }
            else if (bookSubject == "computer-intro") {
                subject = "計算機概論";
                ajaxback(subject);
            }
            else if (bookSubject == "cor-info") {
                subject = "企業資料通訊";
                ajaxback(subject);
            }

        }
    }

    public void ajaxback(String subject) {
        // sql start
        String sql = "SELECT [TeachingMaterial].TeachingMaterialID, [TeachingMaterial].TeachingMaterialName, [Member].StudentID, " +
                     "[Member].StudentName, [Member].Picture, [TeachingMaterial].MaterialPicture, [TeachingMaterial].MaterialDescribe, " +
                     "[Lease].RentPlace, [Lease].RentDate, [Lease].RentTime " +
                     "FROM [Member], [TeachingMaterial], [Lease] " +
                     "WHERE [Member].StudentID=[TeachingMaterial].PublisherID AND [Lease].TeachingMaterialID=[TeachingMaterial].TeachingMaterialID " +
                     "AND [TeachingMaterial].Subject=" + "'" + subject + "' " +
                     "AND [TeachingMaterial].RentalSituation='0' AND [TeachingMaterial].publisherID!='" + userID + "' ";

        SqlCommand Cmd = new SqlCommand(sql, Conn);

        SqlDataReader dr = Cmd.ExecuteReader();

        while (dr.Read()) {
            teachingMaterialIDAL.Add(dr["TeachingMaterialID"].ToString());
            teachingMaterialNameAL.Add(dr["TeachingMaterialName"].ToString());
            publisherIDAL.Add(dr["StudentID"].ToString());
            publisherNameAL.Add(dr["StudentName"].ToString());
            publisherAvatarAL.Add("../" + dr["Picture"].ToString());
            materialPictureAL.Add("../../" + dr["MaterialPicture"].ToString());
            materialDescribeAL.Add(dr["MaterialDescribe"].ToString());
            rentPlaceAL.Add(dr["RentPlace"].ToString());
            rentDateAndTimeAL.Add(dr["RentDate"].ToString() + " " + dr["RentTime"].ToString());
        }

        allLength = Convert.ToInt16(teachingMaterialIDAL.Count);

        Cmd.Cancel();
        dr.Close();
        // sql end

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

        // ajax回傳的data start
        JavaScriptSerializer serializer = new JavaScriptSerializer();

        var responseEntities = new List<Book>();
        for (int i = 0; i < allLength; i++) {
            Book book = new Book {
                publisherID = publisherIDAL[i].ToString(),
                Name = publisherNameAL[i].ToString(),
                Avatar = publisherAvatarAL[i].ToString(),
                BookID = teachingMaterialIDAL[i].ToString(),
                Star = publisherStarAL[i].ToString(),
                BookName = teachingMaterialNameAL[i].ToString(),
                BookImage = materialPictureAL[i].ToString(),
                BookDescription = materialDescribeAL[i].ToString(),
                ChangeSite = rentPlaceAL[i].ToString(),
                ChangeTime = rentDateAndTimeAL[i].ToString()
            };
            responseEntities.Add(book);
        }

        var result = serializer.Serialize(responseEntities);
        Response.Write(result);
        Response.End();
        // ajax回傳的data end

        Conn.Close();
    }
}

public class Book {
    public string publisherID { get; set; }
    public string Name { get; set; }
    public string Avatar { get; set; }
    public string BookID { get; set; }
    public string Star { get; set; }
    public string BookName { get; set; }
    public string BookImage { get; set; }
    public string BookDescription { get; set; }
    public string ChangeSite { get; set; }
    public string ChangeTime { get; set; }
}