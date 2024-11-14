using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace _1SAMS
{
    public partial class Admission_Form1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckStudentExists())
            {

                Response.Write("<script>alert('Child Already exist in the Database');</script>");
            }
            else
            {
                AddNewStudent();
            }
        }

        bool CheckStudentExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from child_detail_tbl where uidai_no='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void AddNewStudent()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into child_detail_tbl(child_full_name,gender,dob,child_pic,child_aadhar,child_bc,f_name,uidai_no,m_name,m_email,m_mobile,f_mobile,f_email,standard)values(@child_full_name,@gender,@dob,@child_pic,@child_aadhar,@child_bc,@f_name,@uidai_no,@m_name,@m_email,@m_mobile,@f_mobile,@f_email,@standard)", con);

                cmd.Parameters.AddWithValue("@child_full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@dob", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@standard", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@child_pic", FileUpload3.PostedFile.FileName);
                cmd.Parameters.AddWithValue("@child_bc", FileUpload1.PostedFile.FileName);
                cmd.Parameters.AddWithValue("@child_aadhar", FileUpload2.PostedFile.FileName);
                cmd.Parameters.AddWithValue("@uidai_no", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@f_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@f_mobile", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@f_email", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@m_name", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@m_mobile", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@m_email", TextBox9.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Entered Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}