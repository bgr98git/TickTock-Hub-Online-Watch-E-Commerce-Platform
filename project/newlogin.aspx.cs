using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class test : System.Web.UI.Page
{
    SqlConnection cn;
    DataSet ds;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    }

    protected void logbtn_Click(object sender, EventArgs e)
    {
        string user = unmtxt.Text;
        string pass = pwdtxt.Text;
      

        qry = "select * from User_Register where username='" + user + "' and password='" + pass + "'";

        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

         // Check if the password matches
        if (pass == dr["password"].ToString() && user== dr["username"].ToString())
            {
                // Store session variables
                Session["username"] = dr["username"].ToString();
                Session["email"] = dr["email"].ToString();
                Session["uid"] = dr["uid"].ToString();
                int isAdmin = Convert.ToInt32(dr["isAdmin"]);
                Session["isAdmin"] = isAdmin;

              //  string redirectPage = isAdmin ? "admin/index.aspx" : "index.aspx";
                if(isAdmin==1)
                {
                    Response.Redirect("Admin/index.aspx");
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
               
            }
            else
            {
                // Password is incorrect
                Response.Write("<script>alert('Password Incorrect');</script>");
                Response.Write("<script>window.location.href = 'newlogin.aspx';</script>");
            }
        }
        else
        {
            // Username does not exist
            Response.Write("<script>alert('Invalid Username or Password');</script>");
            Response.Write("<script>window.location.href = 'newlogin.aspx';</script>");
        }

        dr.Close();
        cn.Close();
    }
}