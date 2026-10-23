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
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        if (!IsPostBack)
        {
            BindProducts();
        }




    }










    private void BindProducts()
    {
        try
        {
            //string qry = "SELECT Pid, P_name, Brand, Gender, Price, Front_img, Back_img FROM All_Products";
            string qry = "SELECT * FROM All_Products where Gender='Male'";
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
        catch (Exception ex)
        {
            // Log error and display a friendly message
            Response.Write("Error: " + ex.Message);
        }
        finally
        {
            if (cn != null && cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
        }
    }



}