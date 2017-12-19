using System;
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

            // ajax回傳的data
            JavaScriptSerializer serializer = new JavaScriptSerializer();

            var responseEntities = new List<Book>(){
                new Book{ Name="小美", Avatar="images/avatar-img/girl-1.png", ID="04156111", Star="4.2", BookName="超猛微積分",
                          BookImage="images/temp-books-img/temp-calc.jpg", BookDescription="我做的超認真的呦！!",
                          ChangeSite ="[雙溪] 望星廣場", ChangeTime="2017/11/30 上午10:00"},
                new Book{ Name="小胖", Avatar="images/avatar-img/boy-2.png", ID="04156112", Star="3.3", BookName="超爛微積分",
                          BookImage="images/temp-books-img/temp-calc.jpg", BookDescription="我做的超爛的呦！!",
                          ChangeSite ="[雙溪] 望星廣場", ChangeTime="2017/11/30 上午10:00"},
                new Book{ Name="小P", Avatar="images/avatar-img/boy-1.png", ID="04156113", Star="3.3", BookName="超爛微積分",
                          BookImage="images/temp-books-img/temp-calc.jpg", BookDescription="我做的超爛的呦！!",
                          ChangeSite ="[雙溪] 望星廣場", ChangeTime="2017/11/30 上午10:00"},
                new Book{ Name="小待", Avatar="images/avatar-img/boy-3.png", ID="04156114", Star="3.3", BookName="超爛微積分",
                          BookImage="images/temp-books-img/temp-calc.jpg", BookDescription="我做的超爛的呦！!",
                          ChangeSite ="[雙溪] 望星廣場", ChangeTime="2017/11/30 上午10:00"},
            };

            var result = serializer.Serialize(responseEntities);
            Response.Write(result);
            Response.End();

        } else {

            String bookSubject = Request.Form["bookSubject"];

            if (bookSubject == "cal") {
                // SQL查詢

                JavaScriptSerializer serializer = new JavaScriptSerializer();

                var responseEntities = new List<Book>(){
                    new Book{ Name="小美", Avatar="images/avatar-img/girl-1.png", ID="04156111", Star="4.2", BookName="超猛微積分",
                              BookImage="images/temp-books-img/temp-calc.jpg", BookDescription="我做的超認真的呦！!",
                              ChangeSite ="[雙溪] 望星廣場", ChangeTime="2017/11/30 上午10:00"},
                };

                var result = serializer.Serialize(responseEntities);
                Response.Write(result);
                Response.End();

            } else if (bookSubject == "fin-math") {

            } else if (bookSubject == "fin-management") {

            } else if (bookSubject == "dis-math") {

            } else if (bookSubject == "statistic") {

            } else if (bookSubject == "en") {

            } else if (bookSubject == "ch") {

            } else if (bookSubject == "jp") {

            } else if (bookSubject == "java") {

            } else if (bookSubject == "data-str") {

            } else if (bookSubject == "algorithms") {

            } else if (bookSubject == "app") {

            } else if (bookSubject == "html") {

            } else if (bookSubject == "management") {

            } else if (bookSubject == "management-sys") {

            } else if (bookSubject == "database-management") {

            } else if (bookSubject == "marketing") {

            } else if (bookSubject == "accounting") {

            } else if (bookSubject == "computer-intro") {

            } else if (bookSubject == "cor-info") {

            }

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