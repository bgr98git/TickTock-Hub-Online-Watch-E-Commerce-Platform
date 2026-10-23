using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class pro_detail : System.Web.UI.Page
{

    SqlConnection cn;
    DataSet ds;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }
    string status = "";
    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName == "AddToCart")
        {
            // Retrieve the user ID from the session
            if (Session["uid"] != null)
            {
                // Retrieve the product ID from the CommandArgument
                int productId = Convert.ToInt32(e.CommandArgument);

            // Find the quantity textbox in the FormView
            TextBox qtyTextBox = (TextBox)FormView1.FindControl("qtytxt");
            int quantity = Convert.ToInt32(qtyTextBox.Text);

            
            // Assume a method GetUserID() that retrieves the current user's ID
            int userId = Convert.ToInt32(Session["uid"]);

            // Find the pname textbox in the FormView
            Label pnmlb = (Label)FormView1.FindControl("P_nameLabel");
            string pnm = pnmlb.Text;
            // Find the fimg textbox in the FormView
            Label imglb = (Label)FormView1.FindControl("imglbl");
            string img = imglb.Text;

            // Find the price textbox in the FormView
            Label prc = (Label)FormView1.FindControl("prclbl");
            int pric = Convert.ToInt32(prc.Text);
                status = "No";


                // Call the AddToCart method to save the product to the cart
                AddToCart(userId, productId, quantity, pnm, pric, img,status);

            //// Optionally, display a success message
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Product added to cart successfully!');", true);
            Response.Write("<script>alert('product inserted in cart'); window.location='shop.aspx';</script>");
                //Response.Redirect("shop.aspx");
            }
            else
            {
                // Redirect to login if the user is not logged in
                Response.Redirect("newlogin.aspx");
            }
        }
    }

    private void AddToCart(int userId, int productId, int quantity,string pnm,int pric,string img,string status)
    {
        

            cn.Open();

            // Check if the product is already in the cart
            string checkQuery = "SELECT Quantity FROM Cart WHERE UserID = @UserID AND ProductID = @ProductID";
            SqlCommand checkCmd = new SqlCommand(checkQuery, cn);
            checkCmd.Parameters.AddWithValue("@UserID", userId);
            checkCmd.Parameters.AddWithValue("@ProductID", productId);

            object result = checkCmd.ExecuteScalar();

            if (result != null)
            {
                // Update quantity
                int newQuantity = Convert.ToInt32(result) + quantity;
                string updateQuery = "UPDATE Cart SET Quantity = @Quantity WHERE UserID = @UserID AND ProductID = @ProductID";
                SqlCommand updateCmd = new SqlCommand(updateQuery, cn);
                updateCmd.Parameters.AddWithValue("@Quantity", newQuantity);
                updateCmd.Parameters.AddWithValue("@UserID", userId);
                updateCmd.Parameters.AddWithValue("@ProductID", productId);
                updateCmd.ExecuteNonQuery();
            }
            else
            {
                // Insert new product into the cart
                string insertQuery = "INSERT INTO Cart (UserID, ProductID, Quantity, P_name,Price ,F_img,DateAdded,Status) VALUES (@UserID, @ProductID, @Quantity, @P_name ,@Price, @F_img,@DateAdded,@Status)";
                SqlCommand insertCmd = new SqlCommand(insertQuery, cn);
                insertCmd.Parameters.AddWithValue("@UserID", userId);
                insertCmd.Parameters.AddWithValue("@ProductID", productId);
                insertCmd.Parameters.AddWithValue("@Quantity", quantity);

            insertCmd.Parameters.AddWithValue("@P_name", pnm);
            insertCmd.Parameters.AddWithValue("@Price", pric);
            insertCmd.Parameters.AddWithValue("@F_img", img);
            insertCmd.Parameters.AddWithValue("@DateAdded", DateTime.Now);
            insertCmd.Parameters.AddWithValue("@Status", status);
            insertCmd.ExecuteNonQuery();
            }
        
    }


}