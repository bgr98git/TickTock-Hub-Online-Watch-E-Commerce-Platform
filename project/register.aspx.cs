using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class register : System.Web.UI.Page
{
    SqlConnection cn;
    DataSet ds;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }



    protected void regbtn_Click(object sender, EventArgs e)
    {
        int isAdmin = 0;
        qry = "insert into User_Register(username,email,password,phone,isAdmin)values('"+unmtxt.Text+ "','" + emtxt.Text + "','" + pwdtxt.Text + "','" +phonetxt.Text + "',"+isAdmin+")";

        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            // Response.Write("<script>alert('Register successfully!');</script>");
            // Response.Write("<script>window.location.href = 'login.aspx';</script>");

            Response.Write(@"
    <style>
       /* Custom alert box styling */
		 
        .custom-alert {
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: #000; /* Black background */
        color: #fff; /* White text */
        padding: 30px;
        border: 4px solid #333; /* Dark border */
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        z-index: 1001;
        display: none; /* Initially hidden */
        
    }

    .custom-alert button {
        background-color: #ffd700; /* Golden button background */
        color: #000; /* Black text */
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 3px;
        font-weight: bold;
        margin-top:14px;
    }

    .custom-alert button:hover {
            background-color: khaki;
            border:10px double;
            border-color: black;
    }

    .overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
        z-index: 1000;
        display: none; /* Initially hidden */
    }
    </style>
    
    <div class='overlay'></div>
    <div class='custom-alert'>
        <p>Register successful!</p>
        <button onclick='redirect()'>OK</button>
    </div>
    
    <script>
        function showAlert() {
            document.querySelector('.overlay').style.display = 'block';
            document.querySelector('.custom-alert').style.display = 'block';
        }

        function redirect() {
            window.location.href = 'newlogin.aspx';
        }

        showAlert();
    </script>
");

        }
        else
        {
            Response.Write("<script>alert('failed')</script>");

        }
    }
}