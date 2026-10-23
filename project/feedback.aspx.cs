using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class feedback : System.Web.UI.Page
{
    SqlConnection cn;
    DataSet ds;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        // Retrieve the user ID from the session
        if (Session["uid"] != null)
        {
            int userId = Convert.ToInt32(Session["uid"]);
            FetchAndBindUser(userId);
           

        }
        else
        {
            // Redirect to login if the user is not logged in
            Response.Redirect("newlogin.aspx");
        }
    }


    protected void FetchAndBindUser(int userId)
    {


        // Query to get user details based on UserId
        string query = "SELECT * FROM user_register WHERE uid = @uid";

        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.Parameters.AddWithValue("@uid", userId);

        cn.Open();
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {

            nmtxt.Text = reader["username"].ToString();
            emtxt.Text = reader["email"].ToString();
            phontxt.Text= reader["Phone"].ToString();
            // Bind data to textboxes

        }
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            qry = "insert into Feedback(name,email,phone,photo,feed_msg)values('" + nmtxt.Text + "','" + emtxt.Text + "','" + phontxt.Text + "','" + FileUpload1.FileName + "','" + submsg.Text + "')";
            FileUpload1.SaveAs(Server.MapPath("Admin\\assets\\upload") + "\\" + FileUpload1.FileName);

        }
        else
        {
            Response.Write("<script>alert('Plzz upload your Photo...')</script>");
        }

        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {

            Response.Write("<script>alert('FeedBack Submitted')</script>");
          
            Response.Redirect("feedback.aspx");
        }
        else
        {
            Response.Write("<script>alert('failed')</script>");

        }


    }
}