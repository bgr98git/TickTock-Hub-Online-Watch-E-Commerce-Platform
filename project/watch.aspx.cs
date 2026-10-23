using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class men : System.Web.UI.Page
{
    SqlConnection cn;
    DataSet ds;
    string qry;
    string gen;
    string bnm;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        if (!IsPostBack)
        {
            BindProducts();
            BindFilterBrands();
        }
       
    }
    private void BindProducts()
    {
        if (!String.IsNullOrEmpty(Request.QueryString["gen"]))
        {
            gen= Request.QueryString["gen"];
            nm.InnerText = gen;
            //string qry = "SELECT Pid, P_name, Brand, Gender, Price, Front_img, Back_img FROM All_Products";
            qry = "SELECT * FROM All_Products where gender='" + gen + "'";
            SqlCommand cmd = new SqlCommand(qry, cn);
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            rptProducts.DataSource = dt;
            rptProducts.DataBind();
            pro2.DataSource = dt;
            pro2.DataBind();
            cn.Close();
        }
        if (!String.IsNullOrEmpty(Request.QueryString["bnm"]))
        {
            bnm = Request.QueryString["bnm"];
            //string qry = "SELECT Pid, P_name, Brand, Gender, Price, Front_img, Back_img FROM All_Products";
            qry = "SELECT * FROM All_Products where brand='" + bnm + "'";
            SqlCommand cmd = new SqlCommand(qry, cn);
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            rptProducts.DataSource = dt;
            rptProducts.DataBind();
            pro2.DataSource = dt;
            pro2.DataBind();
        }

        cn.Close(); 


    }
    private void BindFilterBrands()
    {
        //string qry = "SELECT Pid, P_name, Brand, Gender, Price, Front_img, Back_img FROM All_Products";
        string qry = "SELECT * FROM Brand";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        filterbrandrepeter.DataSource = dt;
        filterbrandrepeter.DataBind();


    }


    protected void pro2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "AddToCart")
        {
            // Retrieve the user ID from the session
            if (Session["uid"] != null)
            {
                // Retrieve the product ID from the CommandArgument
                int productId = Convert.ToInt32(e.CommandArgument);

                // Find the quantity textbox in the FormView
                //  TextBox qtyTextBox = (TextBox)pro2.FindControl("qttextbox");
                TextBox qtyTextBox = (TextBox)e.Item.FindControl("qttextbox");
                int quantity = Convert.ToInt32(qtyTextBox.Text);


                // Assume a method GetUserID() that retrieves the current user's ID
                int userId = Convert.ToInt32(Session["uid"]);

                // Find the pname textbox in the FormView
                Label pnmlb = (Label)e.Item.FindControl("pnmlbl");
                string pnm = pnmlb.Text;
                // Find the fimg textbox in the FormView
                Label imglb = (Label)e.Item.FindControl("imglbl");
                string img = imglb.Text;

                // Find the price textbox in the FormView
                Label prc = (Label)e.Item.FindControl("prclbl");
                int pric = Convert.ToInt32(prc.Text);

              

                // Call the AddToCart method to save the product to the cart
                AddToCart(userId, productId, quantity, pnm, pric, img);

                //// Optionally, display a success message
                //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Product added to cart successfully!');", true);
                //Response.Write("<script>alert('product inserted in cart'); window.location='shop_modal.aspx';</script>");
                Response.Redirect("shop_modal.aspx");
            }
            else
            {
                // Redirect to login if the user is not logged in
                Response.Redirect("newlogin.aspx");
            }
        }
    }

    private void AddToCart(int userId, int productId, int quantity, string pnm, int pric, string img)
    {
        try
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
                int rowsAffected = updateCmd.ExecuteNonQuery();
                // Response.Write("<script>alert('Updated rows: " + rowsAffected + "');</script>");
            }
            else
            {
                string status = "No";
                DateTime currentDate = DateTime.Now;

                // Insert new product into the cart
                string insertQuery = "INSERT INTO Cart (UserID, ProductID, Quantity, P_name, Price, F_img, DateAdded, Status) VALUES (@UserID, @ProductID, @Quantity, @P_name, @Price, @F_img, @DateAdded, @Status)";
                SqlCommand insertCmd = new SqlCommand(insertQuery, cn);
                insertCmd.Parameters.AddWithValue("@UserID", userId);
                insertCmd.Parameters.AddWithValue("@ProductID", productId);
                insertCmd.Parameters.AddWithValue("@Quantity", quantity);
                insertCmd.Parameters.AddWithValue("@P_name", pnm);
                insertCmd.Parameters.AddWithValue("@Price", pric);
                insertCmd.Parameters.AddWithValue("@F_img", img);
                insertCmd.Parameters.AddWithValue("@DateAdded", currentDate); // Use the current date and time
                insertCmd.Parameters.AddWithValue("@Status", status); // Add the status

                int rowsInserted = insertCmd.ExecuteNonQuery();
                // Response.Write("<script>alert('Inserted rows: " + rowsInserted + "');</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
        }
        finally
        {
            if (cn != null && cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
        }
    }

    protected void rptProducts_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "AddToCart")
        {
            // Retrieve the user ID from the session
            if (Session["uid"] != null)
            {
                // Retrieve the product ID from the CommandArgument
                int productId = Convert.ToInt32(e.CommandArgument);

                // Find the quantity textbox in the FormView
                //  TextBox qtyTextBox = (TextBox)pro2.FindControl("qttextbox");
                TextBox qtyTextBox = (TextBox)e.Item.FindControl("qttextbox");
                int quantity = Convert.ToInt32(qtyTextBox.Text);


                // Assume a method GetUserID() that retrieves the current user's ID
                int userId = Convert.ToInt32(Session["uid"]);

                // Find the pname textbox in the FormView
                Label pnmlb = (Label)e.Item.FindControl("pnmlbl");
                string pnm = pnmlb.Text;
                // Find the fimg textbox in the FormView
                Label imglb = (Label)e.Item.FindControl("imglbl");
                string img = imglb.Text;

                // Find the price textbox in the FormView
                Label prc = (Label)e.Item.FindControl("prclbl");
                int pric = Convert.ToInt32(prc.Text);


              
                // Call the AddToCart method to save the product to the cart
                AddToCart(userId, productId, quantity, pnm, pric, img);

                //// Optionally, display a success message
                //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Product added to cart successfully!');", true);
                //Response.Write("<script>alert('product inserted in cart'); window.location='shop.aspx';</script>");
                Response.Redirect("shop_modal.aspx");
            }
            else
            {
                // Redirect to login if the user is not logged in
                Response.Redirect("newlogin.aspx");
            }
        }
    }

    protected void pro2_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        int qty;
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            if (DataBinder.Eval(e.Item.DataItem, "Qty") != DBNull.Value)
            {
                qty = Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "Qty"));
                // Proceed with 'qty'
            }
            else
            {
                qty = 0; // Or any default value you want to use when Qty is null
                         // Handle the default scenario
            }

            // Find the Labels in the current DataListItem
            Label lblOut = (Label)e.Item.FindControl("out");
            Label lblIn = (Label)e.Item.FindControl("In");
            Label lblFew = (Label)e.Item.FindControl("Few");

            // Set visibility based on the quantity
            if (qty <= 0) // Out of stock
            {
                lblOut.Visible = true;
                lblIn.Visible = false;
                lblFew.Visible = false;
            }
            else if (qty > 0 && qty <= 5) // Few left
            {
                lblOut.Visible = false;
                lblIn.Visible = false;
                lblFew.Visible = true;
            }
            else // In stock
            {
                lblOut.Visible = false;
                lblIn.Visible = true;
                lblFew.Visible = false;
            }
        }
    }
    protected void filterbrandrepeter_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        LinkButton l1 = (LinkButton)e.Item.FindControl("LinkButton1");

    }

    protected void filterbrandrepeter_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (!String.IsNullOrEmpty(Request.QueryString["gen"]))
        {
            string gender = Request.QueryString["gen"]; // Directly using query string - UNSAFE
            string qry1 = "SELECT * FROM All_Products WHERE brand='" + e.CommandArgument + "' AND Gender = '" + gender + "'";

            SqlCommand cmd = new SqlCommand(qry1, cn);
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            pro2.DataSource = dt;
            pro2.DataBind();
        }
        

    }

    private void FilterProductsByPrice(int minPrice, int maxPrice)
    {
        if (!String.IsNullOrEmpty(Request.QueryString["gen"]))
        {
            string gender = Request.QueryString["gen"]; // Directly using query string - UNSAFE
            string query = "SELECT * FROM All_Products WHERE Price BETWEEN " + minPrice + " AND " + maxPrice + " AND Gender = '" + gender + "'";

            SqlCommand cmd = new SqlCommand(query, cn);
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            pro2.DataSource = dt;
            pro2.DataBind();
            rptProducts.DataSource = dt;
            rptProducts.DataBind();
            cn.Close();
        }
        if (!String.IsNullOrEmpty(Request.QueryString["bnm"]))
        {
            string bnm = Request.QueryString["bnm"]; // Directly using query string - UNSAFE
            string query = "SELECT * FROM All_Products WHERE Price BETWEEN " + minPrice + " AND " + maxPrice + " AND brand = '" + bnm + "'";

            SqlCommand cmd = new SqlCommand(query, cn);
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            pro2.DataSource = dt;
            pro2.DataBind();
            rptProducts.DataSource = dt;
            rptProducts.DataBind();
            cn.Close();
        }



        }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        FilterProductsByPrice(200, 1000);

    }


    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        FilterProductsByPrice(10000, 20000);
    }

    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        FilterProductsByPrice(20000, 30000);
    }

    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        FilterProductsByPrice(30000, 40000);
    }

    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        FilterProductsByPrice(40000, 90000);
    }

    protected void rptProducts_ItemCreated(object sender, DataListItemEventArgs e)
    {
        int qty;
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            if (DataBinder.Eval(e.Item.DataItem, "Qty") != DBNull.Value)
            {
                qty = Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "Qty"));
                // Proceed with 'qty'
            }
            else
            {
                qty = 0; // Or any default value you want to use when Qty is null
                         // Handle the default scenario
            }

            // Find the Labels in the current DataListItem
            Label lblOut = (Label)e.Item.FindControl("out");
            Label lblIn = (Label)e.Item.FindControl("In");
            Label lblFew = (Label)e.Item.FindControl("Few");

            // Set visibility based on the quantity
            if (qty <= 0) // Out of stock
            {
                lblOut.Visible = true;
                lblIn.Visible = false;
                lblFew.Visible = false;
            }
            else if (qty > 0 && qty <= 5) // Few left
            {
                lblOut.Visible = false;
                lblIn.Visible = false;
                lblFew.Visible = true;
            }
            else // In stock
            {
                lblOut.Visible = false;
                lblIn.Visible = true;
                lblFew.Visible = false;
            }
        }
    }
}