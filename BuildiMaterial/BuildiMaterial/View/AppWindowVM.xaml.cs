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
    }
}
