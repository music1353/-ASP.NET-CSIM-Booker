using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_pages_ajax_del_message_ajax : System.Web.UI.Page {

    SqlConnection Conn = new SqlConnection("Data Source=163.14.73.8;Initial Catalog = DB05; User Id = DB05; Password=DB05");

    protected void Page_Load(object sender, EventArgs e) {

        Conn.Open();

        String[] letterIDdArray = Request.Form.GetValues("idArray");
        int length = letterIDdArray.Count();

        for (int i = 0; i < length; i++) {
            // 更改[Letter].Visibel='1'
            String updateLettersql = "UPDATE [Letter] " +
                                     "SET [Letter].Visible='1' " +
                                     "WHERE [Letter].LetterID='" + letterIDdArray[i] + "'";
            SqlCommand updateLetterCmd = new SqlCommand(updateLettersql, Conn);
            SqlDataReader updateLetterdr = updateLetterCmd.ExecuteReader();

            updateLetterCmd.Cancel();
            updateLetterdr.Close();
        }
        

        Response.Write("success");

        Conn.Close();
    }
}