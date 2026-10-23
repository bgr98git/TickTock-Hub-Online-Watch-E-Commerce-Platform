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
   

    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        int pid = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["Pid"].ToString());
        TextBox pnm = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
        DropDownList brandlist = GridView1.Rows[e.RowIndex].FindControl("DropDownList1") as DropDownList;
        RadioButtonList genlist = GridView1.Rows[e.RowIndex].FindControl("rblGender") as RadioButtonList;

        TextBox price = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
        decimal prc = Convert.ToDecimal(price.Text);
        FileUpload Front = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;
        FileUpload Back = GridView1.Rows[e.RowIndex].FindControl("FileUpload2") as FileUpload;


        if (Front.HasFile && Back.HasFile)
        {
            qry = "update All_Products set P_name='" + pnm.Text + "',Brand='" + brandlist.SelectedValue + "',Gender='" + genlist.SelectedValue + "',Price=" + prc + ",Front_img='" + Front.FileName + "',Back_img='" + Back.FileName + "' where Pid=" + pid;

            Front.SaveAs(Server.MapPath("assets\\upload") + "\\" + Front.FileName);
            Back.SaveAs(Server.MapPath("assets\\upload") + "\\" + Back.FileName);
        }
        else if (Front.HasFile)
        {
            qry = "update All_Products set P_name='" + pnm.Text + "',Brand='" + brandlist.SelectedValue + "',Gender='" + genlist.SelectedValue + "',Price=" + prc + ",Front_img='" + Front.FileName + "' where Pid=" + pid;

            Front.SaveAs(Server.MapPath("assets\\upload") + "\\" + Front.FileName);

        }
        else if (Back.HasFile)
        {

            qry = "update All_Products set P_name='" + pnm.Text + "',Brand='" + brandlist.SelectedValue + "',Gender='" + genlist.SelectedValue + "',Price=" + prc + ",Back_img='" + Back.FileName + "' where Pid=" + pid;

            Back.SaveAs(Server.MapPath("assets\\upload") + "\\" + Back.FileName);
        }

        else
        {
            qry = "update All_Products set P_name='" + pnm.Text + "',Brand='" + brandlist.SelectedValue + "',Gender='" + genlist.SelectedValue + "',Price=" + prc + " where Pid=" + pid;

        }
        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {


            GridView1.EditIndex = -1;
            Response.Redirect("test.aspx");
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('failed')</script>");

        }
        cn.Close();

    }
}