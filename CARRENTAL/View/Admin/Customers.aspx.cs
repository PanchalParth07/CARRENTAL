using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARRENTAL.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCustomers();

        }
        private void ShowCustomers()
        {
            string QUery = "select * from CustomerTbl";
            CustomersList.DataSource = Conn.GetData(QUery);
            CustomersList.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "" || AddTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNameTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                    string CustPass = PasswordTb.Value;
                    
                    
                    
                    string Query = "insert into CustomerTbl values('{0}','{1}','{2}','{3}')";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPass);
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Customer Added";


                }

            }
            catch (Exception Ex)
            {
                //throw;
                ErrorMsg.InnerText = Ex.Message;

            }
        }
    }
}