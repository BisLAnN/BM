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

        public AppVM()
        {
            Initialize();
            LoadData();
        }

        private void Initialize()
        {
            Products= new ObservableCollection<Product>();
        }

        private void LoadData()
        {
            using (var db = new BuildMateria1Entities())
            {
                var result = db.Product.Include("Supplier").Include("Unit").Include("Category").Include("Manufacturer").ToList();
                result.ForEach(p => Products.Add(p));
            }
        }
    }
}
