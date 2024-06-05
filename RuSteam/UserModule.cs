using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Runtime.CompilerServices;

namespace RuSteam
{
    public partial class UserModule : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cm = new SqlCommand();
        DbConnect dbcon = new DbConnect();
        string title = "Магазин игр RuSteam";

        bool check = false;
        UserForm userForm;
        public UserModule(UserForm user)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.connection());
            userForm = user;
            cbRole.SelectedIndex = 1;
        }

        private void cbRole_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(cbRole.Text=="Employee")
            {
                this.Height = 450 - 23;
                lblPass.Visible = false;
                txtPass.Visible = false;
            }
            else
            {
                this.Height = 450;
                lblPass.Visible = true;
                txtPass.Visible = true;
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                CheckField();
                if(check)
                {
                    if (MessageBox.Show("Вы точно хотите добавить этого пользователя?", "Регистрация пользователя", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        cm = new SqlCommand("INSERT INTO tbUser1(name,address,phone,role,dob,password)VALUES(@name,@address,@phone,@role,@dob,@password)", cn);
                        cm.Parameters.AddWithValue("@name", txtName.Text);
                        cm.Parameters.AddWithValue("@address", txtAddress.Text);
                        cm.Parameters.AddWithValue("@phone", txtPhone.Text);
                        cm.Parameters.AddWithValue("@role", cbRole.Text);
                        cm.Parameters.AddWithValue("@dob", dtDob.Value);
                        cm.Parameters.AddWithValue("@password", txtPass.Text);

                        cn.Open();
                        cm.ExecuteNonQuery();
                        cn.Close();
                        MessageBox.Show("Пользователь успешно добавлен!", title);
                        Clear();
                        userForm.LoadUser();
                    }
                }
               
            }

            catch (Exception ex)
            {
                cn.Close();
                MessageBox.Show(ex.Message, title);
            }
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                CheckField();
                if (check)
                {
                    if (MessageBox.Show("Вы точно хотите обновить этого пользователя?", "Обновление пользователя", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        cm = new SqlCommand("UPDATE tbUser1 SET name=@name, address=@address, phone=@phone, role=@role, dob=@dob, password=@password WHERE id=@id", cn);
                        cm.Parameters.AddWithValue("@id", lbluid.Text);
                        cm.Parameters.AddWithValue("@name", txtName.Text);
                        cm.Parameters.AddWithValue("@address", txtAddress.Text);
                        cm.Parameters.AddWithValue("@phone", txtPhone.Text);
                        cm.Parameters.AddWithValue("@role", cbRole.Text);
                        cm.Parameters.AddWithValue("@dob", dtDob.Value);
                        cm.Parameters.AddWithValue("@password", txtPass.Text);

                        cn.Open();
                        cm.ExecuteNonQuery();
                        cn.Close();
                        MessageBox.Show("Пользователь успешно обновлён!", title);
                        Clear();
                        userForm.LoadUser();
                        this.Dispose();
                    }
                }

            }

            catch (Exception ex)
            {
                cn.Close();
                MessageBox.Show(ex.Message, title);
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        #region Method

        public void Clear()
        {
            txtName.Clear();
            txtAddress.Clear();
            txtPhone.Clear();
            txtPass.Clear();
            cbRole.SelectedIndex = 0;
            dtDob.Value = DateTime.Now;

            btnUpdate.Enabled = false;
        }

        public void CheckField()
        {
            if (txtName.Text == "" | txtAddress.Text == "")
            {
                MessageBox.Show("Обязательное поле!", "Warning!");
            }

            if (CheckAge(dtDob.Value) < 18)
            {
                MessageBox.Show("Работнику меньше 18 лет!", "Warning!");
                return;
            }
            check = true;
        }


        private static int CheckAge(DateTime dateofBirth)
        {
            int age = DateTime.Now.Year - dateofBirth.Year;
            if (DateTime.Now.DayOfYear < dateofBirth.DayOfYear)
                age = age - 1;
            return age;
        }
        #endregion Method


    }
}
