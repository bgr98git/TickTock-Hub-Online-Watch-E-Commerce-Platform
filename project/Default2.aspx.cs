using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Default2 : System.Web.UI.Page
{
    SqlConnection cn;
    DataSet ds;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            //string qry = "SELECT Pid, P_name, Brand, Gender, Price, Front_img, Back_img FROM All_Products";
            string qry = "SELECT * FROM All_Products";
            SqlCommand cmd = new SqlCommand(qry, cn);
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);


            dlstProducts.DataSource = dt;
            dlstProducts.DataBind();
        }
    }

    [WebMethod]
    public static List<Customer> GetNameUserName(int id)
    {
        string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT pid,p_name,brand FROM all_products WHERE pid = @ID"))
            {
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@ID", id);
                List<Customer> customers = new List<Customer>();
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    customers.Add(new Customer
                    {
                        Id = sdr["pid"].ToString(),
                        Name = sdr["p_name"].ToString(),
                        brand = sdr["brand"].ToString(),
                        //SendDate = sdr["SendDate"].ToString(),
                        //ContentPost = sdr["ContentPost"].ToString()
                    });
                }
                con.Close();
                return customers;
            }
        }
    }

    // Insert into Customer Choice Description Table
    [WebMethod]
    public static string InsertCommenttype(string id, string name, string username, string contentpost, string comments)
    {
        string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO [customerchoice&description](ID,Name,UserName,ContentPost,Comments) VALUES(@ID,@Name,@UserName,@ContentPost,@Comments)"))
            {
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@ID", id);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@UserName", username);
                cmd.Parameters.AddWithValue("@ContentPost", contentpost);
                cmd.Parameters.AddWithValue("@Comments", comments);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        return "Saved";
    }

    public class Customer
    {
        public string FriendUserName { get; set; }
        public string ShareContent { get; set; }
        public string ShareTodayDate { get; set; }
        public string Comments { get; set; }
        public string SharePostDate { get; set; }
        public string brand { get; set; }
        public string ContentPost { get; set; }
        public string Name { get; set; }
        public string fName { get; set; }
        public string Image { get; set; }
        public string Image2 { get; set; }
        public string SendDate { get; set; }
        public string Id { get; set; }
    }
}