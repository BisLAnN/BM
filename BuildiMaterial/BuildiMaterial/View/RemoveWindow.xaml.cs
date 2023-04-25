using BuildiMaterial.Database;
using BuildiMaterial.ViewModel;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace BuildiMaterial.View
{
    /// <summary>
    /// Логика взаимодействия для RemoveWindow.xaml
    /// </summary>
    public partial class RemoveWindow : Window
    {
        Product _product;
        public RemoveWindow(Product product)
        {
            InitializeComponent();

            foreach (var item in App.Current.Windows)
            {
                if (item is AppWindowVM)
                    this.Owner = item as Window;
            }
            if (product is null)
            {
                _product = product = new Product();
            }
            else
            {
                _product = product;
            }
            this.DataContext = _product;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (txbArticul.Text == "" || txbAmountInStok.Text== "" || txbCategory.Text=="" || txbCoat.Text=="" || txbCurrentDiscount.Text=="" || txbDescription.Text==" " || txbManufacturer.Text=="" || txbMaxSaleSize.Text=="" || txbSupplier.Text=="" || txbSupplier.Text=="") MessageBox.Show("Заполните пустые поля!", "Сообщение",MessageBoxButton.OK, MessageBoxImage.Information);
            else
            {
                try
                {
                    using (var db = new BuildMateria1Entities())
                    {
                        db.Product.AddOrUpdate(_product); db.SaveChanges();
                        ((Owner as AppWindowVM).DataContext as AppVM).LoadData(); MessageBox.Show("Данные успешно сохранены!", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);
                        Close();
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Ошибка!" + ex.ToString());
                }
            }
        }
    }
}
