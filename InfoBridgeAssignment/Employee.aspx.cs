using InfoBridgeAssignment.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace InfoBridgeAssignment
{
    public partial class Employee : System.Web.UI.Page
    {
        EmployeeDAL crud = new EmployeeDAL();

        private void GetAllEmployees()
        {
            List<EmployeeDetails> emp = crud.GetEmployees();
            GridView1.DataSource = emp;
            Page.DataBind();    
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GetAllEmployees();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                //code to upload image 
                string path = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("EmployeeImages/") + path);
                path = "~/EmployeeImages/" + path;
                EmployeeDetails emp = new EmployeeDetails();

                emp.Id = Convert.ToInt32(txtId.Text);
                emp.Name = txtName.Text;
                emp.Sex = txtSex.Text;
                emp.Address = txtAddress.Text;
                emp.Phone = txtPhone.Text;
                emp.DateOfBirth = TxtDOB.Text;
                emp.Image = path;
                int result = crud.AddEmployee(emp);
                if (result >= 1)
                {
                    GetAllEmployees();
                }
                else
                {
                    lblMsg.Text = "Something went wrong";
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                //code to upload image 
                string path = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("EmployeeImages/") + path);
                path = "~/EmployeeImages/" + path;
                EmployeeDetails emp = new EmployeeDetails();

                emp.Id = Convert.ToInt32(txtId.Text);
                emp.Name = txtName.Text;
                emp.Sex = txtSex.Text;
                emp.Address = txtAddress.Text;
                emp.Phone = txtPhone.Text;
                emp.DateOfBirth = TxtDOB.Text;
                emp.Image = path;
                int result = crud.UpdateEmployee(emp);
                if (result >= 1)
                {
                    GetAllEmployees();
                }
                else
                {
                    lblMsg.Text = "Record Updated";
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                int result = crud.DeleteEmployee(Convert.ToInt32(txtId.Text));
                if (result >= 1)
                {
                    GetAllEmployees();
                }
                else
                {
                    lblMsg.Text = "Record Deleted";
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                EmployeeDetails emp = crud.GetEmployeeById(Convert.ToInt32(txtId.Text));
                if (emp.Id >= 1)
                {
                    txtName.Text = emp.Name;
                    txtSex.Text = emp.Sex;
                    TxtDOB.Text = emp.DateOfBirth.ToString();
                    txtPhone.Text = emp.Phone.ToString();
                    txtAddress.Text = emp.Address;

                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

        //protected void btnShow_Click(object sender, EventArgs e)
        //{
        //    DataTable table = crud.GetDataTable();
        //    GridView1.DataSource = table;
        //}
    }
}