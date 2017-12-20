﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_Default : System.Web.UI.Page {

    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected String userID;
    protected String name, avatar, star, history_post_book_num, history_borrow_book_num;

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
            avatar = navbardr["Picture"].ToString();
        }

        navbarCmd.Cancel();
        navbardr.Close();
        // navbarsql end

        // index page
        // starsql start
        String starsql = "SELECT [Member].StudentName,ROUND(AVG([UserEvaluation].Grade),1) as AverageGrade " +
                         "FROM [Member],[UserEvaluation] " +
                         "WHERE [UserEvaluation]. EvaluatedStudentID=" + userID + " AND [UserEvaluation].EvaluatedStudentID =[Member].StudentID " +
                         "GROUP BY [Member].StudentName";

        SqlCommand starCmd = new SqlCommand(starsql, Conn);
        SqlDataReader stardr = starCmd.ExecuteReader();

        while (stardr.Read()) {
            star = stardr["AverageGrade"].ToString();
        }

        starCmd.Cancel();
        stardr.Close();
        // starsql end

        // hpbsql start
        String hpbsql = "SELECT COUNT(*) as HPB " +
                        "FROM TeachingMaterial " +
                        "WHERE TeachingMaterial.PublisherID=" + userID;

        SqlCommand hpbCmd = new SqlCommand(hpbsql, Conn);
        SqlDataReader hpbdr = hpbCmd.ExecuteReader();

        while (hpbdr.Read()) {
            history_post_book_num = hpbdr["HPB"].ToString();
        }

        hpbCmd.Cancel();
        hpbdr.Close();
        // hpbsql end

        // hbbsql start
        String hbbsql = "SELECT COUNT(*) as HBB " +
                        "FROM Lease " +
                        "WHERE Lease.BorrowerID=" + userID;

        SqlCommand hbbCmd = new SqlCommand(hbbsql, Conn);
        SqlDataReader hbbdr = hbbCmd.ExecuteReader();

        while (hbbdr.Read()) {
            history_borrow_book_num = hbbdr["HBB"].ToString();
        }

        hbbCmd.Cancel();
        hbbdr.Close();
        // hbbsql end

        Conn.Close();

        // System.Diagnostics.Debug.Write(Session["userID"]);
    }
}