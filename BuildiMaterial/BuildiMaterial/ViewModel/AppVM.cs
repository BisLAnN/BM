using BuildiMaterial.Database;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BuildiMaterial.ViewModel
{
    public class AppVM : BaseVM
    {
        private ObservableCollection<Product> _products;

        public ObservableCollection<Product> Products
        {
            get { return _products; } 
            set
            {
                _products = value;
                OnPropertyChanged(nameof(Products));
            }
        }

        private Product _selectedProduct;
        public Product SelectedProduct
        {
            get { return _selectedProduct; }
            set
            {
                _selectedProduct = value;
                OnPropertyChanged(nameof(SelectedProduct));
            }
        }

        public AppVM()
        {
            Initialize();
            LoadData();
        }

        private void Initialize()
        {
            Products = new ObservableCollection<Product>();
        }

        public void LoadData()
        {
            Products.Clear();

            try
            {
                using (var db = new BuildMateria1Entities())
                {
                    var result = DBStorage.DB_s.Product.ToList();
                    result.ForEach(p => Products?.Add(p));
                }
            }
            catch (Exception)
            {
                
            }
        }
    }
}
