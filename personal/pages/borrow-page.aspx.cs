﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_borror_page : System.Web.UI.Page {

    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String userID;
    protected String name, avatar;

    ArrayList teachingMaterialIDAL = new ArrayList();
    ArrayList teachingMaterialNameAL = new ArrayList();
    ArrayList publisherNameAL = new ArrayList();
    ArrayList publisherAvatarAL = new ArrayList();
    ArrayList materialPictureAL = new ArrayList();
    ArrayList materialDescribeAL = new ArrayList();

    protected void Page_Load(object sender, EventArgs e) {

        if (Session["isLogin"] == "Y") {
            userID = Session["userID"].ToString();
            Conn.Open();
        } else {
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

        // allbooksql start
        String allbooksql = "SELECT [TeachingMaterial].teachingMaterialID, [TeachingMaterial].teachingMaterialName, " +
                            "[Member].studentName, [Member].Picture, [TeachingMaterial].MaterialPicture, [TeachingMaterial].MaterialDescribe " +
                            "FROM [Member], [TeachingMaterial] " +
                            "WHERE [Member].StudentID=[TeachingMaterial].PublisherID";

        SqlCommand allbookCmd = new SqlCommand(allbooksql, Conn);

        SqlDataReader allbookdr = allbookCmd.ExecuteReader();

        while (allbookdr.Read()) {
            teachingMaterialIDAL.Add(allbookdr["teachingMaterialID"].ToString());
            teachingMaterialNameAL.Add(allbookdr["teachingMaterialName"].ToString());
            publisherNameAL.Add(allbookdr["studentName"].ToString());
            publisherAvatarAL.Add(allbookdr["Picture"].ToString());
            materialPictureAL.Add(allbookdr["MaterialPicture"].ToString());
            materialDescribeAL.Add(allbookdr["MaterialDescribe"].ToString());
        }

        allbookCmd.Cancel();
        allbookdr.Close();
        // allbooksql end

        Conn.Close();
    }
}