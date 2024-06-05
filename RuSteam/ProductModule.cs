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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar;

namespace RuSteam
{
    public partial class ProductModule : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cm = new SqlCommand();
        DbConnect dbcon = new DbConnect();
        string title = "Магазин игр RuSteam";

        bool check = false;
        ProductForm product;
        public ProductModule(ProductForm form)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.connection());
            product = form;
            cbCategory.SelectedIndex = 0;
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                CheckField();
                if (check)
                {
                    if (MessageBox.Show("Вы точно хотите добавить этот продукт?", "Регистрация продукта", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        cm = new SqlCommand("INSERT INTO tbProduct(pname, ptype, pcategory, pqty, pprice)VALUES(@pname, @ptype, @pcategory, @pqty, @pprice)", cn);
                        cm.Parameters.AddWithValue("@pname", txtName.Text);
                        cm.Parameters.AddWithValue("@ptype", txtType.Text);
                        cm.Parameters.AddWithValue("@pcategory", cbCategory.Text);
                        cm.Parameters.AddWithValue("@pqty", int.Parse(txtQty.Text));
                        cm.Parameters.AddWithValue("@pprice", double.Parse(txtPrice.Text));

                        cn.Open();
                        cm.ExecuteNonQuery();
                        cn.Close();
                        MessageBox.Show("Продукт успешно добавлен!", title);
                        Clear();
                        product.LoadProduct();
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
                    if (MessageBox.Show("Вы точно хотите отредактировать этот продукт?", "Редактирование продукта", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        cm = new SqlCommand("UPDATE tbProduct SET pname=@pname, ptype=@ptype, pcategory=@pcategory, pqty=@pqty, pprice=@pprice WHERE pcode=@Pcode", cn);
                        cm.Parameters.AddWithValue("@pcode", lblPcode.Text);
                        cm.Parameters.AddWithValue("@pname", txtName.Text);
                        cm.Parameters.AddWithValue("@ptype", txtType.Text);
                        cm.Parameters.AddWithValue("@pcategory", cbCategory.Text);
                        cm.Parameters.AddWithValue("@pqty", int.Parse(txtQty.Text));
                        cm.Parameters.AddWithValue("@pprice", double.Parse(txtPrice.Text));

                        cn.Open();
                        cm.ExecuteNonQuery();
                        cn.Close();
                        MessageBox.Show("Продукт успешно обновлён!", title);
                        Clear();
                        product.LoadProduct();
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


        private void txtQty_KeyPress(object sender, KeyPressEventArgs e)
        {
            if(!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtPrice_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }

            if((e.KeyChar =='.')&& ((sender as TextBox).Text.IndexOf('.')>-1)) 
            {
                e.Handled= true;
            }

        }

        #region Method
        public void CheckField()
        {
            if (txtName.Text == "" | txtPrice.Text == "" | txtType.Text == "" | txtQty.Text == "")
            {
                MessageBox.Show("Обязательное поле!", "Warning!");
            }

            check = true;
        }
        public void Clear()
        {
            txtName.Clear();
            txtPrice.Clear();
            txtQty.Clear();
            txtType.Clear();
            cbCategory.SelectedIndex = 0;

            btnUpdate.Enabled = false;
        }
        #endregion Method
    }
}
