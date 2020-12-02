using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server = DESKTOP-PGEU22I\\SQLEXPRESS01; Database=SSDB; Integrated Security=true");
        SqlCommand cmd;
        //SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Helpers helperObject = new Helpers();
               
                con.Open();
                cmd = new SqlCommand("Insert into registration values('" + TextBox1.Text + "','"+ TextBox7 .Text+ "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','"+ helperObject.dbDateConvertor(TextBox12.Text)+"')",  
                    con);                                                                                                               
                int i = cmd.ExecuteNonQuery();
                Label12.Text = i + " Product Details submitted";
                con.Close();
            }
            catch (Exception ex)
            {
                Label12.Text = ex.Message;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox12.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
         
  
}   