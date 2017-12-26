using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_post_page : System.Web.UI.Page {
    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String userID;
    protected String name, avatar;

    protected String nextID, imageFileName;

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

        if (IsPostBack) {
            String postType = Request.Form["postType"];
            String postSubject = Request.Form["postSubject"];
            String projectName = Request.Form["projectName"];
            String changeDate = Request.Form["changeDate"];
            String changeTime = Request.Form["hChangeTime"];
            String changeSite = Request.Form["changeSite"];
            String returnDate = Request.Form["returnDate"];
            String returnTime = Request.Form["hReturnTime"];
            String returnSite = Request.Form["returnSite"];
            String introduction = Request.Form["introduction"];

            // findmaxIDsql start
            String findmaxIDsql = "SELECT MAX (CONVERT(int, \"LeaseID\")) as maxID " +
                                  "FROM Lease";

            SqlCommand findmaxIDCmd = new SqlCommand(findmaxIDsql, Conn);
            SqlDataReader findmaxIDdr = findmaxIDCmd.ExecuteReader();

            while (findmaxIDdr.Read()) {
                Int16 maxID = Convert.ToInt16(findmaxIDdr["maxID"].ToString());
                nextID = (maxID+1).ToString();
            }

            findmaxIDCmd.Cancel();
            findmaxIDdr.Close();
            // findmaxIDsql end

            HttpPostedFile image = Request.Files["bookImg"];
            if (image.ContentLength > 0) {
                imageFileName = nextID+".jpg";
                string targetLocation = Server.MapPath("../../books-images/");

                image.SaveAs(targetLocation + imageFileName);
            }

            postSubject = subject2subject(postSubject);
            postType = type2type(postType);
            changeSite = site2site(changeSite);
            returnSite = site2site(returnSite);

            // postbooksql start
            String postbooksql = "INSERT INTO TeachingMaterial(TeachingMaterialID, TeachingMaterialName, [Subject],Category, MaterialDescribe, PublisherID, MaterialPicture) " +
                                 "VALUES('" + nextID + "', '" + projectName + "','"+ postSubject + "','"+ postType + "','"+ introduction + "','"+userID+"','books-images/"+ imageFileName + "') " +
                                 "INSERT INTO Lease(LeaseID, RentPlace, RentDate, RentTime, RevertPlace, RevertDate, RevertTime, TeachingMaterialID) " +
                                 "VALUES('" + nextID + "', '" + changeSite + "','"+ changeDate + "','"+ changeTime + "','"+ returnSite + "','"+ returnDate + "','"+ returnTime + "','"+nextID+"')";

            SqlCommand postbookCmd = new SqlCommand(postbooksql, Conn);
            postbookCmd.ExecuteReader();

            postbookCmd.Cancel();
            // postbooksql end

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "complete();", true);
        }

        Conn.Close();
    }

    public static String type2type(String typeNickName) {
        String realType = "";

        if (typeNickName == "math") {
            realType = "數學";
        }
        else if(typeNickName == "lan") {
            realType = "語文";
        }
        else if (typeNickName == "program") {
            realType = "程式設計";
        }
        else if (typeNickName == "management") {
            realType = "管理";
        }
        else if (typeNickName == "others") {
            realType = "其他";
        }

        return realType;
    }

    public static String subject2subject(String subjectNickName) {
        String realSubject = "";

        if (subjectNickName == "cal") {
            realSubject = "微積分";
        }
        else if (subjectNickName == "fin-math") {
            realSubject = "管理數學";
        }
        else if (subjectNickName == "fin-management") {
            realSubject = "財務管理";
        }
        else if (subjectNickName == "dis-math") {
            realSubject = "離散數學";
        }
        else if (subjectNickName == "statistic") {
            realSubject = "統計學";
        }
        else if (subjectNickName == "en") {
            realSubject = "英文";
        }
        else if (subjectNickName == "ch") {
            realSubject = "國文";
        }
        else if (subjectNickName == "jp") {
            realSubject = "日文";
        }
        else if (subjectNickName == "java") {
            realSubject = "JAVA程式設計";
        }
        else if (subjectNickName == "data-str") {
            realSubject = "資料結構";
        }
        else if (subjectNickName == "algorithms") {
            realSubject = "演算法";
        }
        else if (subjectNickName == "app") {
            realSubject = "行動平台程式設計";
        }
        else if (subjectNickName == "html") {
            realSubject = "網際網路程式設計";
        }
        else if (subjectNickName == "management") {
            realSubject = "管理學";
        }
        else if (subjectNickName == "management-sys") {
            realSubject = "資訊管理系統";
        }
        else if (subjectNickName == "database-management") {
            realSubject = "資料庫管理";
        }
        else if (subjectNickName == "marketing") {
            realSubject = "行銷學";
        }
        else if (subjectNickName == "accounting") {
            realSubject = "會計學";
        }
        else if (subjectNickName == "computer-intro") {
            realSubject = "計算機概論";
        }
        else if (subjectNickName == "cor-info") {
            realSubject = "企業資料通訊";
        }

        return realSubject;
    }

    public static String site2site(String siteNickName) {
        String realSite="";

        if (siteNickName == "xian-D") {
            realSite = "[雙溪] Ｄ棟一樓";
        }
        else if(siteNickName == "xian-star") {
            realSite = "[雙溪] 望星廣場";
        }
        else if (siteNickName == "chen-One") {
            realSite = "[城中] 一大一樓";
        }
        else if (siteNickName == "chen-door") {
            realSite = "[城中] 學校正門";
        }

        return realSite;
    }
}