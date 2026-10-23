using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class project_header : System.Web.UI.MasterPage
{
    SqlConnection cn;
    DataSet ds;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        if (Session["uid"] == null)
        {
            cartlbl.Text = "0";
        }
        else
        {

            string qry = "select count(*) from Cart where UserID='" + Session["uid"] + "' and Status='No'";

            SqlCommand cmd = new SqlCommand(qry, cn);
            cn.Open();
            int res = Convert.ToInt16(cmd.ExecuteScalar());
            cartlbl.Text = res.ToString();
            cn.Close();
            BindProducts();
        }
      

    }
    private void BindProducts()
    {
        string qry = "SELECT P_name, Price, Quantity, f_img FROM Cart WHERE UserID='" + Session["uid"] + "' and Status='No'";
        SqlCommand cmd = new SqlCommand(qry, cn);

        // Use parameterized query to avoid SQL injection
     //   cmd.Parameters.AddWithValue("@UserID", Session["uid"]);

        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        // Calculate subtotal
        decimal subtotal = 0;
        decimal total = 0;
        foreach (DataRow row in dt.Rows)
        {
            decimal price = Convert.ToDecimal(row["price"]);
            int quantity = Convert.ToInt32(row["quantity"]);
            total= price * quantity; 
            subtotal += price * quantity;
        }

        // Bind data to the cart control
        cart.DataSource = dt;
        cart.DataBind();
        
        // Display the subtotal
        lblSubtotal.Text = "Subtotal: ₹" + subtotal.ToString(); // Replace lblSubtotal with the ID of your Label control
        
    }

}




