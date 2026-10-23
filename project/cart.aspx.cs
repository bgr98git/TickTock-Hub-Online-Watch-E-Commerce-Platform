using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class project_cart : System.Web.UI.Page
{
    SqlConnection cn;
    DataSet ds;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
       
    }
    protected void lnkClearCart_Click(object sender, EventArgs e)
    {
        // Get the current user's ID from the session
        int userId = Convert.ToInt32(Session["uid"]);

        // Delete the user's items from the cart table

            cn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Cart WHERE UserId = @UserId", cn);
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.ExecuteNonQuery();
        Response.Redirect("shop_modal.aspx");

    }



    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
  
}