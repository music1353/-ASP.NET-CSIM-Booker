﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_borrow_ajax : System.Web.UI.Page {

    protected void Page_Load(object sender, EventArgs e) {

        String bookType = Request.Form["bookType"];

        if (bookType == "all") {
            // SQL查詢
            //

            JavaScriptSerializer serializer = new JavaScriptSerializer();

            var responseEntities = new List<Book>(){
                new Book{ Name="小美", Avatar="images/avatar-img/girl-1.png", ID="04156111", Star="4.2", BookName="超猛微積分",
                          BookImage="images/temp-books-img/temp-calc.jpg", BookDescription="我做的超認真的呦！!",
                          ChangeSite ="[雙溪] 望星廣場", ChangeTime="2017/11/30 上午10:00"},
                // new Book{ Name="Joey2", ID="Id2"}
            };

            var result = serializer.Serialize(responseEntities);
            Response.Write(result);
            Response.End();

        } else {

            JavaScriptSerializer serializer = new JavaScriptSerializer();

            var responseEntities = new List<Book>(){
                new Book{ Name="QQ", ID="qq1"},
                new Book{ Name="QQ", ID="qq2"}
            };

            var result = serializer.Serialize(responseEntities);
            Response.Write(result);
            Response.End();
        }

    }
}

public class Book {
    public string Name { get; set; }
    public string Avatar { get; set; }
    public string ID { get; set; }
    public string Star { get; set; }
    public string BookName { get; set; }
    public string BookImage { get; set; }
    public string BookDescription { get; set; }
    public string ChangeSite { get; set; }
    public string ChangeTime { get; set; }
}