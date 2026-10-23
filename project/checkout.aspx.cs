using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class project_checkout : System.Web.UI.Page
{
    SqlConnection cn;
    DataSet ds;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {
            if (Session["uid"] != null)
            {
                // Get UserId from Session (assuming user is logged in)
                int userId = Convert.ToInt32(Session["uid"]);

                // Call method to fetch and bind user data
                FetchAndBindUserData(userId);
                BindProducts();
                
            }
            else
            {
                // Redirect to login if not logged in
                Response.Redirect("~/newlogin.aspx");
            }
        }

    }
    decimal subtotal = 0;
    decimal total = 0;
    decimal shippingRate = 0;
    int quantity;
    decimal finaltotal = 0;
    private void BindProducts()
    {
        string qry = "SELECT P_name, Price, Quantity, f_img FROM Cart WHERE UserID='" + Session["uid"] + "' and Status='No'";

        SqlCommand cmd = new SqlCommand(qry, cn);

        // Use parameterized query to avoid SQL injection
        // cmd.Parameters.AddWithValue("@UserID", Session["uid"]);

        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        // Calculate subtotal

        foreach (DataRow row in dt.Rows)
        {
            decimal price = Convert.ToDecimal(row["price"]);
            int quantity = Convert.ToInt32(row["quantity"]);
            total = price * quantity;

            subtotal += price * quantity;
        }
     

        // Determine shipping rate based on subtotal

        if (subtotal < 1000)
        {
            shippingRate = 500; // Flat rate for orders below ₹500
        }
        else if (subtotal >= 1000 && subtotal < 2000)
        {
            shippingRate = 400; // Reduced rate for orders between ₹500 and ₹1000
        }
        else if (subtotal >= 2000 && subtotal < 3000)
        {
            shippingRate = 300; // Reduced rate for orders between ₹500 and ₹1000
        }
        else if (subtotal >= 3000 && subtotal < 5000)
        {
            shippingRate = 200; // Reduced rate for orders between ₹500 and ₹1000
        }
        else
        {
            shippingRate = 0; // Free shipping for orders ₹1000 and above
        }

        // Calculate total
         finaltotal = subtotal + shippingRate;

        








        // Bind data to the cart control
        cart.DataSource = dt;
        cart.DataBind();

        // Display the subtotal
        subtotalbl.Text = "₹" + subtotal.ToString();
        shipratelbl.Text= "₹" + shippingRate.ToString();
        totallbl.Text= "₹" + finaltotal.ToString();
        cn.Close();
    }


    protected void FetchAndBindUserData(int userId)
    {
        
       
        // Query to get user details based on UserId
        string query = "SELECT * FROM user_register WHERE uid = @uid";

          SqlCommand cmd = new SqlCommand(query, cn);
            cmd.Parameters.AddWithValue("@uid", userId);

        cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
            // Bind data to textboxes
            fullnmtxt.Text = reader["username"].ToString();
            phontxt.Text = reader["phone"].ToString();
            emtxt.Text = reader["email"].ToString();
            uidlbl.Text=reader["uid"].ToString();
        }
                cn.Close();
   }




    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{



    //    string meth = "";
    //    if (bank.Checked)
    //    {
    //        meth = "Direct Bank Transfer";
    //    }
    //    else if (check.Checked)
    //    {
    //        meth = "Check payments";
    //    }
    //    else if (cash.Checked)
    //    {
    //        meth = "Cash on delivery";
    //    }
    //    else
    //    {
    //        meth = "Google Pay";
    //    }

    //    int uid = Convert.ToInt16(Session["uid"]);
    //    string sub = subtotalbl.Text.Replace("₹", "").Trim();

    //    string ship = shipratelbl.Text.Replace("₹", "").Trim();
    //    string total_am = totallbl.Text.Replace("₹", "").Trim();
    //    string city = citytxt.Text;
    //    string add = houstxt.Text;
    //    string pin = pintxt.Text;

    //    // Generate a random invoice number
    //    string invoice_num = GenerateInvoiceNumber(); // 6-digit random number

    //    string qry = "INSERT INTO Bill(UserId, subtotal, shiprate, total_amount, payment_method, city, ship_add, pincode, invoice_num) " +
    //                 "VALUES (@UserId, @Subtotal, @ShipRate, @TotalAmount, @PaymentMethod, @City, @ShipAdd, @Pincode, @InvoiceNum)";

    //    SqlCommand cmd = new SqlCommand(qry, cn);
    //    cmd.Parameters.AddWithValue("@UserId", uid);
    //    cmd.Parameters.AddWithValue("@Subtotal", sub);
    //    cmd.Parameters.AddWithValue("@ShipRate", ship);
    //    cmd.Parameters.AddWithValue("@TotalAmount", total_am);
    //    cmd.Parameters.AddWithValue("@PaymentMethod", meth);
    //    cmd.Parameters.AddWithValue("@City", city);
    //    cmd.Parameters.AddWithValue("@ShipAdd", add);
    //    cmd.Parameters.AddWithValue("@Pincode", pin);
    //    cmd.Parameters.AddWithValue("@InvoiceNum", invoice_num);

    //    cn.Open();
    //    int result = cmd.ExecuteNonQuery();
    //    cn.Close();

    //    if (result > 0)
    //    {
    //        //for update status of cart colunm
    //        string state = "Out";
    //        qry = "update cart set status='" + state + "' where UserId=" + Session["uid"].ToString();
    //        cmd = new SqlCommand(qry, cn);
    //        cn.Open();
    //        result = cmd.ExecuteNonQuery();

    //        if (result > 0)
    //        {
    //            // Deduct the quantity from the Product table for each item in the cart
    //            string cartQuery = "SELECT ProductID, Quantity FROM Cart WHERE UserId = @UserId AND Status = 'Out'";
    //            SqlCommand cartCmd = new SqlCommand(cartQuery, cn);
    //            cartCmd.Parameters.AddWithValue("@UserId", uid);

    //            SqlDataAdapter da = new SqlDataAdapter(cartCmd);
    //            DataTable cartItems = new DataTable();
    //            da.Fill(cartItems);

    //            foreach (DataRow row in cartItems.Rows)
    //            {
    //                int productId = Convert.ToInt32(row["ProductID"]);
    //                int quantity = Convert.ToInt32(row["Quantity"]);

    //                string updateProductQuery = "UPDATE all_Products SET Qty = Qty - @Quantity WHERE PID = @ProductID";
    //                SqlCommand updateProductCmd = new SqlCommand(updateProductQuery, cn);
    //                updateProductCmd.Parameters.AddWithValue("@Quantity", quantity);
    //                updateProductCmd.Parameters.AddWithValue("@ProductID", productId);

    //                cn.Open();
    //                updateProductCmd.ExecuteNonQuery();
    //                cn.Close();
    //            }

    //            Response.Write("<script>alert('Order placed successfully! Invoice Number: " + invoice_num + "');</script>");
    //            Response.Redirect("/invoma/TEST.aspx");
    //        }


    //    cn.Close();

    //    }
    //    else
    //    {
    //        Response.Write("<script>alert('Failed to insert record.')</script>");
    //    }



    //}

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string qry = "SELECT P_name, Price, Quantity FROM Cart WHERE UserID = @UserId and Status = 'No'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.Parameters.AddWithValue("@UserId", Session["uid"]);

        DataTable dt = new DataTable();

        try
        {
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            foreach (DataRow row in dt.Rows)
            {
                string productName = row["P_name"].ToString();
                int quantity = Convert.ToInt32(row["Quantity"]);

                // Check available stock
                string stockQry = "SELECT Qty FROM All_Products WHERE P_name = @PName";
                SqlCommand stockCmd = new SqlCommand(stockQry, cn);
                stockCmd.Parameters.AddWithValue("@PName", productName);

                int availableStock = Convert.ToInt32(stockCmd.ExecuteScalar()); // Get available stock

                if (quantity > availableStock)
                {
                    Response.Write("<script>alert('We have stock quantity that you requested for " + productName + " is " + availableStock + ". Please update the quantity accordingly.');</script>");
                    Response.Write("<script>window.location.href = 'cart.aspx';</script>");
                    return;
                }
            }

            // Payment method selection
            string meth = "";
            if (bank.Checked) meth = "Direct Bank Transfer";
            else if (check.Checked) meth = "Check payments";
            else if (cash.Checked) meth = "Cash on delivery";
            else meth = "Google Pay";

            int uid = Convert.ToInt16(Session["uid"]);
            string sub = subtotalbl.Text.Replace("₹", "").Trim();
            string ship = shipratelbl.Text.Replace("₹", "").Trim();
            string total_am = totallbl.Text.Replace("₹", "").Trim();
            string city = citytxt.Text;
            string add = houstxt.Text;
            string pin = pintxt.Text;

            // Generate invoice number
            string invoice_num = GenerateInvoiceNumber();

            qry = "INSERT INTO Bill(UserId, subtotal, shiprate, total_amount, payment_method, city, ship_add, pincode, invoice_num) " +
                  "VALUES (@UserId, @Subtotal, @ShipRate, @TotalAmount, @PaymentMethod, @City, @ShipAdd, @Pincode, @InvoiceNum)";

            cmd = new SqlCommand(qry, cn);
            cmd.Parameters.AddWithValue("@UserId", uid);
            cmd.Parameters.AddWithValue("@Subtotal", sub);
            cmd.Parameters.AddWithValue("@ShipRate", ship);
            cmd.Parameters.AddWithValue("@TotalAmount", total_am);
            cmd.Parameters.AddWithValue("@PaymentMethod", meth);
            cmd.Parameters.AddWithValue("@City", city);
            cmd.Parameters.AddWithValue("@ShipAdd", add);
            cmd.Parameters.AddWithValue("@Pincode", pin);
            cmd.Parameters.AddWithValue("@InvoiceNum", invoice_num);
            Session["invoice_no"] = invoice_num;

            int result = cmd.ExecuteNonQuery();

            if (result > 0)
            {
                Response.Write("<script>alert('Order placed successfully! Invoice Number: " + invoice_num + "');</script>");
                Response.Redirect("/invoma/TEST.aspx");
            }
            else
            {
                Response.Write("<script>alert('Failed to insert Bill record.')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
        }
        finally
        {
            if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
        }
    }


    private string GenerateInvoiceNumber()
    {
        string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random random = new Random();
        string invoiceNum = "INV-"; // Prefix for invoice
        for (int i = 0; i < 8; i++) // Generate an 8-character random string
        {
            invoiceNum += chars[random.Next(chars.Length)];
        }
        return invoiceNum;
    }
}

