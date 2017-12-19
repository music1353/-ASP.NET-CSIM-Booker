using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_borror_page : System.Web.UI.Page {

    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    ArrayList nameAL = new ArrayList();
    ArrayList avatarAL = new ArrayList();

    protected String name;

    protected void Page_Load(object sender, EventArgs e) {

        name = "蘇靖軒";

    }
}