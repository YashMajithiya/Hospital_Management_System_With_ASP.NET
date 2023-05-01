using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_management_System.Users
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd;
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from AppontTab", con);
                DataTable dtbl1 = new DataTable();
                da.Fill(dtbl1);
                GridView1.DataSource = dtbl1;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        protected void lnkDelete_Click(object sender, EventArgs e)
        {
            LinkButton lnkDelete = (LinkButton)sender;
            GridViewRow row = (GridViewRow)lnkDelete.NamingContainer;
            int rowId = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("DELETE FROM AppontTab WHERE AID = @AID", connection);
                command.Parameters.AddWithValue("@AID", rowId);
                connection.Open();
                command.ExecuteNonQuery();
                Response.Write("<script>alert('Appointment Deleted')</script>");
            }

            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            LinkButton lnkDelete = (LinkButton)sender;
            GridViewRow row = (GridViewRow)lnkDelete.NamingContainer;
            int rowId = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("DELETE FROM AppontTab WHERE AID = @AID", connection);
                command.Parameters.AddWithValue("@AID", rowId);
                connection.Open();
                command.ExecuteNonQuery();
                Response.Write("<script>alert('Appointment Deleted')</script>");
            }

            GridView1.DataBind();
        }
        protected void btn_Appointmnet_Update_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                LinkButton lnkUpdate = (LinkButton)sender;
                GridViewRow row = (GridViewRow)lnkUpdate.NamingContainer;
                int rowId = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
                string str = "update AppontTab set Section = '" + DropDownList_Section.SelectedValue.ToString() + "', Name = '" + txt_Appoint_name.Text + "', Gender = '" + DropDownList_gender.SelectedValue.ToString() + "', Mobile = " + txt_Apoint_Mobile.Text + ", Email = '" + txt_Apoint_Email.Text + "', Date = '" + datepicke.Text + "' where AID = " + rowId;
                cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Appointment Update')</script>");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}

