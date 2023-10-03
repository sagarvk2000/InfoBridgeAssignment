using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace InfoBridgeAssignment.App_Code
{
    public class EmployeeDAL
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        public EmployeeDAL()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnect"].ConnectionString);
        }
        public List<EmployeeDetails> GetEmployees()
        {
            List<EmployeeDetails> list = new List<EmployeeDetails>();
            string qry = "select * from EmpInfo";
            cmd = new SqlCommand(qry, con);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    EmployeeDetails emp = new EmployeeDetails();
                    emp.Id = Convert.ToInt32(dr["Id"]);
                    emp.Name = dr["Name"].ToString();
                    emp.DateOfBirth = dr["DateOfBirth"].ToString();
                    emp.Sex = dr["Sex"].ToString();
                    emp.Phone = dr["Phone"].ToString();
                    emp.Address = dr["Address"].ToString();
                    emp.Image = dr["Image"].ToString();
                    list.Add(emp);
                }
            }
            con.Close();
            return list;
        }
        public EmployeeDetails GetEmployeeById(int id)
        {
            EmployeeDetails emp = new EmployeeDetails();
            string qry = "select * from EmpInfo where Id=@Id";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", id);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    emp.Id = Convert.ToInt32(dr["Id"]);
                    emp.Name = dr["Name"].ToString();
                    emp.DateOfBirth = dr["DateOfBirth"].ToString();
                    emp.Sex = dr["Sex"].ToString();
                    emp.Phone = dr["Phone"].ToString();
                    emp.Address = dr["Address"].ToString();
                    emp.Image = dr["Image"].ToString();
                }
            }
            con.Close();
            return emp;
        }
        public int AddEmployee(EmployeeDetails emp)
        {
            string qry = "insert into EmpInfo values(@Id,@Name,@DateOfBirth,@Sex,@Phone,@Address,@Image)";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", emp.Id);
            cmd.Parameters.AddWithValue("@name", emp.Name);
            cmd.Parameters.AddWithValue("@DateOfBirth", emp.DateOfBirth);
            cmd.Parameters.AddWithValue("@Sex", emp.Sex);
            cmd.Parameters.AddWithValue("@Phone", emp.Phone);
            cmd.Parameters.AddWithValue("@Address", emp.Address);
            cmd.Parameters.AddWithValue("@Image", emp.Image);
            
            con.Open();
            int result = cmd.ExecuteNonQuery();
            con.Close();
            return result;
        }
        public int UpdateEmployee(EmployeeDetails emp)
        {
            string qry = "update EmpInfo set Name=@Name,DateOfBirth=@DateOfBirth,Sex=@Sex,Phone=@Phone,Address=@Address,Image=@Image where Id=@Id";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Name", emp.Name);
            cmd.Parameters.AddWithValue("@DateOfBirth", emp.DateOfBirth);
            cmd.Parameters.AddWithValue("@Sex", emp.Sex);
            cmd.Parameters.AddWithValue("@Phone", emp.Phone);
            cmd.Parameters.AddWithValue("@Address", emp.Address);
            cmd.Parameters.AddWithValue("@Image", emp.Image);
            cmd.Parameters.AddWithValue("@Id", emp.Id);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            con.Close();
            return result;
        }
        public int DeleteEmployee(int id)
        {
            string qry = "delete from EmpInfo  where Id=@Id";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", id);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            con.Close();
            return result;
        }

        public DataTable GetDataTable()
        {
            DataTable dt = new DataTable();
            string qry = "Select * from EmpInfo";
            cmd = new SqlCommand(qry, con);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dt.Load(dr);
            }
            con.Close();
            return dt;
        }

    }
}
