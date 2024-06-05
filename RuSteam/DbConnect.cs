using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace RuSteam
{
    internal class DbConnect
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cm = new SqlCommand();
        private string con;


        public string connection()
        {
            con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Разработка программных модулей\RuSteam\RuSteam\dbRuSteam.mdf;Integrated Security=True;Connect Timeout=30";
            return con;
        }

        public void executeQuery(string sql)
        {
            try
            {
                cn.ConnectionString = connection();
                cn.Open();
                cm = new SqlCommand(sql, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
