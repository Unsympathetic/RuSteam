using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RuSteam
{
    public partial class LoginForm : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cm = new SqlCommand();
        DbConnect dbcon = new DbConnect();
        SqlDataReader dr;
        string title = "Магазин игр RuSteam";
        public LoginForm()
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.connection());

        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string _name = "", _role = "";
                cn.Open();
                cm=new SqlCommand("SELECT name,role FROM tbUser1 WHERE name=@name and password=@password", cn);
                cm.Parameters.AddWithValue("@name", txtname.Text);
                cm.Parameters.AddWithValue("@password", txtpass.Text);
                dr= cm.ExecuteReader();
                dr.Read();
                if (dr.HasRows)
                {
                    _name = dr["name"].ToString();
                    _role = dr["role"].ToString();
                    MessageBox.Show("Добро пожаловать " +_name+ " |", "Вы успешно вошли", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    MainForm main = new MainForm();
                    main.lblUsername.Text = _name;
                    main.lblRole.Text = _role;
                    if (_role == "Administrator")
                        main.btnUser.Enabled = true;
                    this.Hide();
                    main.ShowDialog();
                }
                else
                {
                    MessageBox.Show("Неправильное имя пользователя или пароль", "Ошибка авторизации", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                cn.Close();
                MessageBox.Show(ex.Message, title);
            }
        }

        private void btnForget_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Обратитесь к своему администратору!", "Забыли пароль", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}
