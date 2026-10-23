using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class project_contact : System.Web.UI.Page
{
    SqlConnection cn;
    DataSet ds;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        qry = "insert into Contact(name,email,phone,msg_query)values('" + nmtxt.Text + "','" + emtxt.Text + "','" + phontxt.Text + "','" + msgtxt.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {

            Response.Write("<script>alert('inserted')</script>");
        }
        else
        {
            Response.Write("<script>alert('failed')</script>");

        }
    }
}