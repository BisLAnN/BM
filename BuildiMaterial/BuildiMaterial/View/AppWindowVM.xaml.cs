using BuildiMaterial.Database;
using BuildiMaterial.ViewModel;
using System;
using System.Collections.Generic;
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
    /// Логика взаимодействия для AppWindowVM.xaml
    /// </summary>
    public partial class AppWindowVM : Window
    {
        public AppWindowVM()
        {
            InitializeComponent();
            DataContext = new AppVM();
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            var addWindow = new AddOrRemoveWindow(null);
            addWindow.Show();
        }

        private void btnRemove_Click(object sender, RoutedEventArgs e)
        {
            var addWindow = new AddOrRemoveWindow((DataContext as AppVM).SelectedProduct);
            addWindow.Show();
        }

        public void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            using (var db = new BuildMateria1Entities())
            {
                var idForDelete = (DataContext as AppVM).SelectedProduct.ProductID;
                var objectForDelete = db.Product.FirstOrDefault(x => x.ProductID == idForDelete);
                db.Product.Remove(objectForDelete);
            }
        }
    }
}
