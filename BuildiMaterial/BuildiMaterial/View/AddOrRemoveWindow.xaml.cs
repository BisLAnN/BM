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
    /// Логика взаимодействия для AddOrRemoveWindow.xaml
    /// </summary>
    public partial class AddOrRemoveWindow : Window
    {
        public AddOrRemoveWindow(Product product)
        {
            InitializeComponent();

            foreach (var item in App.Current.Windows)
            {
                if (item is AppWindowVM)
                {
                    this.Owner = (Window)item;
                }
            }

            if (product is null)
            {
                var newProduct = new Product();
            }

            else
            {
                DataContext = product;
            }
        }


        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            using (var db = new BuildMateria1Entities())
            {
                    db.Product.AddOrUpdate((DataContext as Product));
                    db.SaveChanges();
                    ((Owner as AppWindowVM).DataContext as AppVM).LoadData();
                    MessageBox.Show("Данные успешно сохранены!", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);
                    Close();
            }
        }
    }
}
