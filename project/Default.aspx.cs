using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        connection = new SqlConnection(connectionString);

        try
        {
            connection.Open(); // Opens the connection

            // Check if the connection is open
            if (connection.State == ConnectionState.Open)
            {
                Response.Write("The connection is open.");
            }
            else
            {
                Response.Write("The connection is not open.");
            }
        }
        catch (Exception ex)
        {
            Response.Write("An error occurred: " + ex.Message);
        }
    }
}