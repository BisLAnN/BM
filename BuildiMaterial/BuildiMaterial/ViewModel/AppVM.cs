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

        private ObservableCollection<Unit> _unit;

        public ObservableCollection<Unit> Unit
        {
            get { return _unit; }
            set
            {
                _unit = value;
                OnPropertyChanged(nameof(Unit));
            }
        }

        private string _value;
        public string Value
        {
            get => _value;
            set
            {
                _value = value;
                OnPropertyChanged(nameof(Value));
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
            using (var db = new BuildMateria1Entities())
            {
                var result = db.Product.Include("Supplier").Include("Unit").Include("Category").Include("Manufacturer").ToList();
                result.ForEach(p => Products.Add(p));
            }
        }
    }
}
