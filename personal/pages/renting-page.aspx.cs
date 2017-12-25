using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_renting_page : System.Web.UI.Page {
    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String userID;
    protected String name, avatar;

    protected ArrayList revertSituationAL = new ArrayList();
    protected ArrayList teachingMaterialIDAL = new ArrayList();
    protected ArrayList teachingMaterialNameAL = new ArrayList();
    protected ArrayList borrowerIDAL = new ArrayList();
    protected ArrayList borrowerNameAL = new ArrayList();
    protected ArrayList borrowerAvatarAL = new ArrayList();
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

        // rentingsql start
        String rentingsql = "SELECT [TeachingMaterial].TeachingMaterialID, [TeachingMaterial].TeachingMaterialName, " +
                            "[TeachingMaterial].MaterialPicture, [TeachingMaterial].MaterialDescribe, " +
                            "[Lease].BorrowerID, [Lease].RevertPlace, [Lease].RevertDate, [Lease].RevertTime, [Lease].RevertSituation " +
                            "FROM [Member], [TeachingMaterial], [Lease] " +
                            "WHERE [Member].StudentID=[TeachingMaterial].PublisherID AND [Lease].TeachingMaterialID=[TeachingMaterial].TeachingMaterialID " +
                            "AND (PublisherID='" + userID + "' AND RentalSituation='1')";

        SqlCommand rentingCmd = new SqlCommand(rentingsql, Conn);

        SqlDataReader rentingdr = rentingCmd.ExecuteReader();

        while (rentingdr.Read()) {
            revertSituationAL.Add(rentingdr["RevertSituation"].ToString());
            borrowerIDAL.Add(rentingdr["BorrowerID"].ToString());
            teachingMaterialIDAL.Add(rentingdr["TeachingMaterialID"].ToString());
            teachingMaterialNameAL.Add(rentingdr["TeachingMaterialName"].ToString());
            materialPictureAL.Add("../../" + rentingdr["MaterialPicture"].ToString());
            materialDescribeAL.Add(rentingdr["MaterialDescribe"].ToString());
            revertPlaceAL.Add(rentingdr["RevertPlace"].ToString());
            revertDateAndTimeAL.Add(rentingdr["RevertDate"].ToString() + " " + rentingdr["RevertTime"].ToString());
        }

        allLength = Convert.ToInt16(teachingMaterialIDAL.Count);

        rentingCmd.Cancel();
        rentingdr.Close();
        // rentingsql end

        // searchBorrowerName & Avatar start
        foreach (String id in borrowerIDAL) {
            String borrowersql = "SELECT [Member].StudentName, [Member].Picture " +
                                 "FROM [Member] " +
                                 "WHERE [Member].StudentID='" + id + "'";
            SqlCommand borrowerCmd = new SqlCommand(borrowersql, Conn);
            SqlDataReader borrowerdr = borrowerCmd.ExecuteReader();

            while (borrowerdr.Read()) {
                borrowerNameAL.Add(borrowerdr["StudentName"].ToString());
                borrowerAvatarAL.Add("../" + borrowerdr["Picture"].ToString());
            }

            borrowerCmd.Cancel();
            borrowerdr.Close();
        }
        // searchBorrowerName & Avatar end

        Conn.Close();
    }
}