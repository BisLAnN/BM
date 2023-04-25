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
        Product _product;
        public AddOrRemoveWindow(Product product)
        {
            InitializeComponent();

            cmbUnit.ItemsSource = DBStorage.DB_s.Unit.ToList();
            cmbManufacturer.ItemsSource = DBStorage.DB_s.Manufacturer.ToList();
            cmbSupplier.ItemsSource = DBStorage.DB_s.Supplier.ToList();
            cmbCategory.ItemsSource = DBStorage.DB_s.Category.ToList();

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

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {   
            if (cmbUnit.SelectedIndex == -1 || cmbSupplier.SelectedIndex == -1 || cmbCategory.SelectedIndex == -1 || cmbManufacturer.SelectedIndex == -1) MessageBox.Show("Выберите все данные!", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);
            else
            {
                try
                {
                    var currentUnit = cmbUnit.SelectedItem as Unit;
                    _product.UnitID = currentUnit.UnitID;

                    var currentManufacturer = cmbManufacturer.SelectedItem as Manufacturer;
                    _product.ManufacturerID = currentManufacturer.ManufacturerID;

                    var currentSupplier = cmbSupplier.SelectedItem as Supplier;
                    _product.SupplierID = currentSupplier.SupplierID;

                    var currentCategory = cmbCategory.SelectedItem as Category;
                    _product.CategoryID = currentCategory.CategoryID;

                
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
